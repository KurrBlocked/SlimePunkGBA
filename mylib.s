	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"mylib.c"
	.text
	.align	2
	.global	waitForVBlank
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L2:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L2
	mov	r2, #67108864
.L3:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L3
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L10
	ldr	lr, [ip]
	add	r0, r0, r0, lsl #1
	add	ip, lr, r0, lsl #2
	orr	r3, r3, #-2147483648
	lsl	r0, r0, #2
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r1
	ble	.L16
	add	r1, r1, r3
	sub	r1, r1, #1
	cmp	r1, lr
	bgt	.L18
.L16:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L18:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	sub	r3, r3, #1
	cmp	r3, r0
	ble	.L16
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	hideSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #512
	ldr	r3, .L23
	add	r2, r3, #1024
.L20:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L20
	bx	lr
.L24:
	.align	2
.L23:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	collisionCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	collisionCheck, %function
collisionCheck:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	ip, [sp, #40]
	add	ip, r3, ip
	mla	r8, r1, ip, r0
	ldr	r3, [sp, #36]
	ldr	lr, [sp, #28]
	add	r2, r2, r3
	add	r4, lr, lr, lsr #31
	add	r4, r2, r4, asr #1
	ldrb	r3, [r8, r4]	@ zero_extendqisi2
	ldrb	r5, [r8, r2]	@ zero_extendqisi2
	cmp	r5, r3
	movcc	r3, r5
	ldr	r6, [sp, #32]
	add	r7, r6, r6, lsr #31
	add	r7, ip, r7, asr #1
	mul	r7, r1, r7
	add	lr, r2, lr
	sub	lr, lr, #1
	add	r5, r0, lr
	ldrb	r9, [r5, r7]	@ zero_extendqisi2
	cmp	r3, r9
	movge	r3, r9
	ldrb	lr, [r8, lr]	@ zero_extendqisi2
	cmp	r3, lr
	movge	r3, lr
	add	r2, r0, r2
	ldrb	lr, [r2, r7]	@ zero_extendqisi2
	cmp	r3, lr
	movge	r3, lr
	add	ip, ip, r6
	sub	ip, ip, #1
	mul	r1, ip, r1
	ldrb	ip, [r5, r1]	@ zero_extendqisi2
	cmp	r3, ip
	movge	r3, ip
	add	r0, r0, r4
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, r3
	movlt	r3, r0
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
	cmp	r0, r3
	movge	r0, r3
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
	.size	collisionCheck, .-collisionCheck
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
