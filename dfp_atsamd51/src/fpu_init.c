#include <sam.h>

__attribute__((constructor, used)) 
void __fpu_init(void) {
    // SCB->CPACR is address 0xE000ED88
    *((volatile uint32_t*) 0xE000ED88) |= (0xf << 20); // [20:23] = 1 to enable CP10 and CP11 */
    __DSB();                   // Wait for memory store command to complete
    __ISB();                   // Clear pipelines for FPU
    __set_FPSCR(0);            // Clear FPU status regs
}
