/* boot.S - assembly startup code */
 
// To keep this in the first portion of the binary.
.section ".text.boot"
 
// Make Start global.
.globl Start
 
// Entry point for the kernel.
// r15 -> should begin execution at 0x8000.
// r0 -> 0x00000000
// r1 -> 0x00000C42
// r2 -> 0x00000100 - start of ATAGS
// preserve these registers as argument for kernel_main
Start:
	// Setup the stack.
	mov	sp, #0x8000
 
	// Clear out bss.
	ldr	r4, =_bss_start
	ldr	r9, =_bss_end
	mov	r5, #0
	mov	r6, #0
	mov	r7, #0
	mov	r8, #0
        b       2f
 
1:
	// store multiple at r4.
	stmia	r4!, {r5-r8}
 
	// If we are still below bss_end, loop.
2:
	cmp	r4, r9
	blo	1b

	// initialize gpio
	bl	init_gpio

	// pinMode(22 ,ALT4)
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #192
	str     r2, [r3]

	// pinMode(4, ALT5)
	ldr	r3, .L2+4
	ldr	r2, .L2+4
	ldr	r2, [r2]
	orr	r2, r2, #8192
	str     r2, [r3]

	// pinMode(27, ALT4)
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #6291456
	str     r2, [r3]

	// pinMode(25, ALT4)
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #98304
	str     r2, [r3]

	// pinMode(24, ALT4)
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #12288
	str     r2, [r3]

 
	// Call kernel_main
	ldr	r3, =kernel_main
	blx	r3
 
	// halt
halt:
	wfe
	b	halt

.L3:
	.align	2
.L2:
	.word   538968072
        .word   538968064
