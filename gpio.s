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
	.file	"gpio.c"
	.text
	.align	2
	.global	init_gpio
	.type	init_gpio, %function
init_gpio:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	ldr	r3, .L6
	mov	r2, #2
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
@ 13 "rpi_lib/gpio/gpio.c" 1
	mov r0,r0
@ 0 "" 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #149
	ble	.L3
	ldr	r3, .L6+4
	mvn	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+4
	mvn	r2, #0
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L5:
@ 20 "rpi_lib/gpio/gpio.c" 1
	mov r0,r0
@ 0 "" 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	cmp	r3, #149
	ble	.L5
	ldr	r3, .L6+4
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+4
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+8
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+12
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+16
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+20
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+24
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L6+28
	mov	r2, #0
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	538968212
	.word	538968216
	.word	538968064
	.word	538968068
	.word	538968072
	.word	538968076
	.word	538968080
	.word	538968084
	.size	init_gpio, .-init_gpio
	.align	2
	.global	setPullUpDown
	.type	setPullUpDown, %function
setPullUpDown:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bgt	.L9
	ldr	r3, .L19
	str	r3, [fp, #-12]
	b	.L10
.L9:
	ldr	r3, .L19
	str	r3, [fp, #-12]
.L10:
	ldr	r3, [fp, #-20]
	cmp	r3, #8
	bne	.L11
	ldr	r3, .L19+4
	mov	r2, #2
	str	r2, [r3]
	b	.L12
.L11:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bne	.L13
	ldr	r3, .L19+4
	mov	r2, #1
	str	r2, [r3]
	b	.L12
.L13:
	b	.L8
.L12:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L15
.L16:
@ 54 "rpi_lib/gpio/gpio.c" 1
	mov r0,r0
@ 0 "" 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L15:
	ldr	r3, [fp, #-8]
	cmp	r3, #149
	ble	.L16
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #31
	mov	r3, r3, lsr #27
	add	r2, r2, r3
	and	r2, r2, #31
	rsb	r3, r3, r2
	mov	r2, #1
	mov	r3, r2, asl r3
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L17
.L18:
@ 60 "rpi_lib/gpio/gpio.c" 1
	mov r0,r0
@ 0 "" 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L17:
	ldr	r3, [fp, #-8]
	cmp	r3, #149
	ble	.L18
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3]
	mov	r0, r0	@ nop
.L8:
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	538968216
	.word	538968212
	.size	setPullUpDown, .-setPullUpDown
	.align	2
	.global	pinMode
	.type	pinMode, %function
pinMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L22
	ldr	r3, [fp, #-16]
	cmp	r3, #9
	bgt	.L22
	ldr	r3, .L43
	str	r3, [fp, #-8]
	b	.L23
.L22:
	ldr	r3, [fp, #-16]
	cmp	r3, #19
	bgt	.L24
	ldr	r3, .L43+4
	str	r3, [fp, #-8]
	b	.L23
.L24:
	ldr	r3, [fp, #-16]
	cmp	r3, #29
	bgt	.L25
	ldr	r3, .L43+8
	str	r3, [fp, #-8]
	b	.L23
.L25:
	ldr	r3, [fp, #-16]
	cmp	r3, #39
	bgt	.L26
	ldr	r3, .L43+12
	str	r3, [fp, #-8]
	b	.L23
.L26:
	ldr	r3, [fp, #-16]
	cmp	r3, #49
	bgt	.L27
	ldr	r3, .L43+16
	str	r3, [fp, #-8]
	b	.L23
.L27:
	ldr	r3, [fp, #-16]
	cmp	r3, #53
	bgt	.L28
	ldr	r3, .L43+20
	str	r3, [fp, #-8]
	b	.L23
.L28:
	b	.L21
.L23:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L42
.L32:
	.word	.L31
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
.L33:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #7
	mov	r3, r2, asl r3
	mvn	r3, r3
	and	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L40:
	ldr	r0, [fp, #-16]
	mov	r1, #8
	bl	setPullUpDown
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #7
	mov	r3, r2, asl r3
	mvn	r3, r3
	and	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L41:
	ldr	r0, [fp, #-16]
	mov	r1, #9
	bl	setPullUpDown
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #7
	mov	r3, r2, asl r3
	mvn	r3, r3
	and	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L31:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #1
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L36:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #4
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L37:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #5
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L38:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #6
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L39:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #7
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L35:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #3
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	b	.L30
.L34:
	ldr	r3, [fp, #-8]
	ldr	r0, [r3]
	ldr	r1, [fp, #-16]
	ldr	r3, .L43+24
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r2, #2
	mov	r3, r2, asl r3
	orr	r2, r0, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	mov	r0, r0	@ nop
.L30:
	mov	r0, r0	@ nop
.L42:
	mov	r0, r0	@ nop
.L21:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L44:
	.align	2
.L43:
	.word	538968064
	.word	538968068
	.word	538968072
	.word	538968076
	.word	538968080
	.word	538968084
	.word	1717986919
	.size	pinMode, .-pinMode
	.align	2
	.global	digitalWrite
	.type	digitalWrite, %function
digitalWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L46
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L47
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bgt	.L47
	ldr	r3, .L56
	str	r3, [fp, #-8]
	b	.L51
.L47:
	ldr	r3, [fp, #-16]
	cmp	r3, #53
	bgt	.L49
	ldr	r3, .L56+4
	str	r3, [fp, #-8]
	b	.L51
.L49:
	b	.L45
.L46:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L52
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L53
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bgt	.L53
	ldr	r3, .L56+8
	str	r3, [fp, #-8]
	b	.L51
.L53:
	ldr	r3, [fp, #-16]
	cmp	r3, #53
	bgt	.L55
	ldr	r3, .L56+12
	str	r3, [fp, #-8]
	b	.L51
.L55:
	b	.L45
.L52:
	b	.L45
.L51:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #31
	mov	r3, r3, lsr #27
	add	r2, r2, r3
	and	r2, r2, #31
	rsb	r3, r3, r2
	mov	r2, #1
	mov	r3, r2, asl r3
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	mov	r0, r0	@ nop
.L45:
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	538968092
	.word	538968096
	.word	538968104
	.word	538968108
	.size	digitalWrite, .-digitalWrite
	.align	2
	.global	digitalRead
	.type	digitalRead, %function
digitalRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L59
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bgt	.L59
	ldr	r3, .L64
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L60
.L59:
	ldr	r3, [fp, #-16]
	cmp	r3, #53
	bgt	.L61
	ldr	r3, .L64+4
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L60
.L61:
	mvn	r3, #0
	b	.L62
.L60:
	ldr	r2, [fp, #-16]
	mov	r3, r2, asr #31
	mov	r3, r3, lsr #27
	add	r2, r2, r3
	and	r2, r2, #31
	rsb	r3, r3, r2
	mov	r2, #1
	mov	r3, r2, asl r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	and	r3, r2, r3
	cmp	r3, #0
	beq	.L63
	mov	r3, #1
	b	.L62
.L63:
	mov	r3, #0
.L62:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	538968116
	.word	538968120
	.size	digitalRead, .-digitalRead
	.ident	"GCC: (crosstool-NG 1.19.0) 4.8.1"
