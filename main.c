/* main.c - the entry point for the kernel */
 
#include <stdint.h>
#include <rpi.h>
#include <uart.h>
 
#define UNUSED(x) (void)(x)

const char hello[] = "\r\nHello World\r\n";
const char halting[] = "\r\n*** system halting ***\r\n";

void delay_ms ( unsigned int delay ){
	unsigned long long alermTime ;

	alermTime = get_systime () + delay * 1000;
	while ( get_systime () < alermTime );

	return ;
}

 
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

	char echo[256];
	int i, c, length;
	while(1) {
		length = 0;
		do {
			while(is_fifo_enable());
			c = uart_getc();
			echo[length] = c & 0xff;
/* debug
			{
				for (i = 0; i < 8; i++) {
					char tmp = echo[length] >> (7 - i) & 0x1;
					uart_putc(tmp == 1 ? '1' : '0');
				}
				uart_putc('\n');
			}
*/
			length++;

			if (c == '\r' || '\n') {
				break;
			}

		} while(length < 256);

		for(i = 0; i < length; i++) {
			uart_putc(echo[i]);
			if (echo[i] == '\r')
				uart_putc('\n');
		}
	}

/*
	char helloworld[] = "Hello World\r\n";
	int i;
	while(1) {
		delay_ms(1000);
		i = 0;
		while(helloworld[i] != '\0') {
			uart_putc(helloworld[i]);
			i++;
		}
	}
*/

/*
	int c;

	while(1) {
		while(is_fifo_enable());
		c = uart_getc();
		uart_putc(c);
	}
*/

/*
	while(1){
		delay_ms(1000);
		uart_putc('a');
	}
*/

/*
	uart_puts(hello);

	// Wait a bit
	for(volatile int i = 0; i < 10000000; ++i) { }

	uart_puts(halting);
*/
}
