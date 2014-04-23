/* main.c - the entry point for the kernel */
 
#include <stdint.h>
#include <rpi.h>
#include <uart.h>
 
#define UNUSED(x) (void)(x)

const char hello[] = "\r\nHello World\r\n";
const char halting[] = "\r\n*** system halting ***\r\n";
 
// kernel main function, it all begins here
void kernel_main(uint32_t r0, uint32_t r1, uint32_t atags) {
/*
	init_gpio();

	*GPFSEL2 |= GPFSEL_MASK_ALT4(22);
	*GPFSEL0 |= GPFSEL_MASK_ALT5(4);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(27);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(25);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(24);
*/

	UNUSED(r0);
	UNUSED(r1);
	UNUSED(atags);

	uart_init();

	uart_puts(hello);

	// Wait a bit
	for(volatile int i = 0; i < 10000000; ++i) { }

	uart_puts(halting);
}
