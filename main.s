	.arch armv6zk
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	kernel_main
	.type	kernel_main, %function
kernel_main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	bl	init_gpio
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #192
	str	r2, [r3]
	ldr	r3, .L2+4
	ldr	r2, .L2+4
	ldr	r2, [r2]
	orr	r2, r2, #8192
	str	r2, [r3]
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #6291456
	str	r2, [r3]
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #98304
	str	r2, [r3]
	ldr	r3, .L2
	ldr	r2, .L2
	ldr	r2, [r2]
	orr	r2, r2, #12288
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L3:
	.align	2
.L2:
	.word	538968072
	.word	538968064
	.size	kernel_main, .-kernel_main
	.ident	"GCC: (crosstool-NG 1.19.0) 4.8.1"
