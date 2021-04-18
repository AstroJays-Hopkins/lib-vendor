#!/bin/bash
# Fix DFP provided sources for Link Time Optimized compiles


FPU_INIT="void SystemInit(void)\f{\f    // Initialize fpu\f    // SCB->CPACR is address 0xE000ED88\f    *((volatile uint32_t*) 0xE000ED88) |= (0xf << 20); // [20:23] = 1 to enable CP10 and CP11 */\f    __DSB();                   // Wait for memory store command to complete\f    __ISB();                   // Clear pipelines for FPU\f    __set_FPSCR(0);            // Clear FPU status regs"

for FILE in ./src/startup*; do
    sed -i 's/__attribute__ ((section(".vectors")))/__attribute__ ((used, section(".vectors")))/' $FILE
done

for FILE in ./src/system*; do
    cat $FILE | tr '\n' '\f' | sed -e "s?void SystemInit(void)\f{?$FPU_INIT?"  | tr '\f' '\n' > $FILE.new
    mv $FILE.new $FILE
done
