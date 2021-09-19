/* 
 * DFP ATSAMD51 Linker Patches  
 * ATSAMD51 DFP compatibility patches for linkers
 * - Use newlib expected symbol terminations for .bss section
 * - Set entrypoint to prevent device vector table from getting murdered
 */
ENTRY(Reset_Handler)
PROVIDE(__bss_start__ = _sbss);
PROVIDE(__bss_end__ = _ebss);
