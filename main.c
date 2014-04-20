/* main.c - the entry point for the kernel */
 
#include <stdint.h>
#include "rpi_lib/rpi.h"
 
#define UNUSED(x) (void)(x)
 
// kernel main function, it all begins here
void kernel_main(uint32_t r0, uint32_t r1, uint32_t atags) {
//	init_gpio();

/*
	pinMode (22 ,ALT4);
	pinMode (4 ,ALT5);
	pinMode (27 ,ALT4);
	pinMode (25 ,ALT4);
	pinMode (24 ,ALT4);
*/
/*
	*GPFSEL2 |= GPFSEL_MASK_ALT4(22);
	*GPFSEL0 |= GPFSEL_MASK_ALT5(4);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(27);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(25);
	*GPFSEL2 |= GPFSEL_MASK_ALT4(24);
*/

	UNUSED(r0);
	UNUSED(r1);
	UNUSED(atags);
}
