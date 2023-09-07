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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #130
	mov	r4, #16
	mov	lr, #4
	mov	ip, #8
	mov	r0, #2
	ldr	r3, .L4
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	ldr	r1, .L4+4
	str	r5, [r3, #4]
	str	r4, [r3, #16]
	str	lr, [r3, #24]
	str	ip, [r3, #52]
	str	r2, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #44]
	str	r0, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	slime
	.word	livesRemaining
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L80
	ldr	r3, [r4, #56]
	cmp	r3, #0
	movne	r3, #0
	mov	r1, #0
	strne	r3, [r4, #56]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #16]
	ldr	r6, .L80+4
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	str	r3, [sp]
	str	r2, [sp, #12]
	mov	r1, #240
	ldm	r4, {r2, r3}
	ldr	r0, [r6]
	ldr	r7, .L80+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #1
	ldr	r8, .L80+12
	movne	r2, r3
	strne	r3, [r4, #28]
	ldrh	r3, [r8]
	ldreq	r2, [r4, #28]
	tst	r3, #4
	beq	.L10
	ldr	r1, .L80+16
	ldrh	r1, [r1]
	tst	r1, #4
	beq	.L76
.L10:
	tst	r3, #64
	ldr	r5, [r4, #20]
	beq	.L11
	ldr	r1, .L80+16
	ldrh	r1, [r1]
	tst	r1, #64
	beq	.L77
.L11:
	tst	r3, #1
	beq	.L13
	ldr	r3, .L80+16
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L13
	cmp	r5, #0
	beq	.L14
	mov	r1, #1
	str	r3, [r4, #20]
	str	r1, [r4, #12]
	str	r1, [r4, #8]
.L15:
	ldr	r3, .L80+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L44
	ldr	r5, [r4, #20]
.L16:
	ldr	r3, .L80+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L24
.L43:
	cmp	r5, #0
	bne	.L25
.L22:
	mov	r0, #0
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #16]
	add	r2, r2, r3
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r1, [sp]
	ldm	r4, {r2, r3}
	mov	r1, #240
	ldr	r0, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L26
	ldr	r5, [r4, #20]
	ldr	r2, [r4, #28]
.L24:
	cmp	r2, #0
	bne	.L45
.L21:
	cmp	r5, #0
	bne	.L32
.L33:
	ldr	r5, [r4, #44]
	ldr	r3, .L80+24
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r5, r3
	bne	.L40
	ldr	r0, [r4, #48]
	ldr	r3, .L80+28
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L40:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	addne	r5, r5, #1
	strne	r5, [r4, #44]
	streq	r3, [r4, #48]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L14:
	cmp	r2, #0
	bne	.L15
	mov	r1, #2
	ldr	r3, [r4, #32]
	rsb	r3, r3, r3, lsl #30
	ldr	r5, [r4, #24]
	lsl	r3, r3, r1
	add	r3, r3, r1
	str	r3, [r4, #8]
	str	r1, [r4, #12]
	str	r5, [r4, #20]
.L13:
	ldr	r3, .L80+20
	ldrh	r1, [r3, #48]
	tst	r1, #32
	bne	.L16
	cmp	r5, #0
	beq	.L44
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L24
.L25:
	cmp	r2, #0
	beq	.L32
.L45:
	ldr	r1, [r4, #16]
.L29:
	cmp	r5, #0
	ldr	r3, [r4, #4]
	ldr	ip, [r4, #12]
	ldr	r0, [r6]
	ldr	r2, [r4]
	beq	.L78
.L30:
	ldr	lr, [r4, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	str	ip, [sp, #12]
	mov	r1, #240
	str	lr, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L75
	ldr	r3, .L80+32
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, [r4, #20]
	subeq	r3, r3, #1
	streq	r3, [r4, #20]
	ldr	r3, .L80+36
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L80+40
	ldr	r3, .L80+44
	mov	lr, pc
	bx	r3
	mov	r1, #0
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r0, [r6]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	mov	r1, #240
	str	r3, [sp]
	str	r2, [sp, #12]
	ldm	r4, {r2, r3}
	mov	lr, pc
	bx	r7
	mov	r1, #0
	cmp	r0, #0
	ldreq	r3, [r4, #12]
	rsbeq	r3, r3, #0
	streq	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #16]
	str	r1, [sp, #12]
	str	r3, [sp, #4]
	str	r3, [sp]
	str	r2, [sp, #8]
	mov	r1, #240
	ldr	r0, [r6]
	ldm	r4, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L75
	ldr	r3, [r4, #8]
	rsb	r1, r3, #0
	str	r1, [r4, #8]
	b	.L35
.L77:
	orrs	r1, r2, r5
	bne	.L11
	ldr	r3, [r4, #12]
	rsb	r2, r3, r3, lsl #29
	rsb	r3, r3, r2, lsl #2
	ldr	r2, [r4, #16]
	lsl	r3, r3, #1
	str	r1, [sp, #8]
	str	r3, [sp, #12]
	mov	r1, #240
	str	r2, [sp, #4]
	str	r2, [sp]
	ldr	r0, [r6]
	ldm	r4, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r4, #12]
	ldrne	r2, [r4, #4]
	rsbne	r1, r3, r3, lsl #29
	rsbne	r3, r3, r1, lsl #2
	addne	r2, r2, r3, lsl #1
	strne	r2, [r4, #4]
	ldrheq	r3, [r8]
	ldrhne	r3, [r8]
	ldr	r5, [r4, #20]
	ldr	r2, [r4, #28]
	b	.L11
.L76:
	ldr	r0, .L80+32
	ldr	r1, [r0]
	rsbs	r1, r1, #1
	movcc	r1, #0
	str	r1, [r0]
	b	.L10
.L75:
	ldr	r1, [r4, #8]
.L35:
	ldr	r3, [r4]
	ldr	r0, [r4, #20]
	add	r3, r3, r1
	cmp	r0, #0
	str	r3, [r4]
	moveq	r3, #1
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #12]
	add	r2, r2, ip
	str	r2, [r4, #4]
	streq	r3, [r4, #12]
	streq	r3, [r4, #8]
	b	.L33
.L78:
	stmib	sp, {r1, r5, ip}
	str	r1, [sp]
	add	r3, r3, ip
	mov	r1, #240
	str	r3, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	streq	r5, [r4, #28]
	ldr	r5, [r4, #20]
	b	.L21
.L44:
	mov	r0, #0
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #16]
	add	r2, r2, r3
	rsb	r2, r2, #0
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r1, [sp]
	ldm	r4, {r2, r3}
	mov	r1, #240
	ldr	r0, [r6]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L18
	ldr	r5, [r4, #20]
	ldr	r2, [r4, #28]
	b	.L16
.L26:
	ldr	r3, [r4, #8]
	ldr	r0, [r4]
	ldr	r1, [r4, #16]
	add	ip, r0, r3
	rsb	r2, r1, #240
	cmp	ip, r2
	ldr	r2, [r4, #28]
	addlt	r3, r3, r2
	addlt	r3, r3, r0
	strlt	r3, [r4]
	mov	r3, #0
	cmp	r2, r3
	str	r3, [r4, #32]
	bne	.L79
	mov	r3, #1
	ldr	r5, [r4, #20]
	str	r3, [r4, #56]
	b	.L21
.L18:
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	sub	r2, r3, r1
	cmp	r2, #0
	ldr	r2, [r4, #28]
	addgt	r1, r1, r2
	subgt	r3, r3, r1
	strgt	r3, [r4]
	mov	r3, #1
	cmp	r2, #0
	str	r3, [r4, #32]
	bne	.L20
	ldr	r1, .L80+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	str	r3, [r4, #56]
	ldr	r5, [r4, #20]
	bne	.L21
	cmp	r5, #0
	beq	.L22
.L32:
	ldr	r0, [r6]
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #16]
	ldr	ip, [r4, #12]
	b	.L30
.L20:
	ldr	r3, .L80+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r5, [r4, #20]
	beq	.L43
	b	.L45
.L79:
	ldr	r5, [r4, #20]
	b	.L29
.L81:
	.align	2
.L80:
	.word	slime
	.word	collisionMap
	.word	collisionCheck
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	1717986919
	.word	__aeabi_idivmod
	.word	cheatsEnabled
	.word	bounceSFX_length
	.word	bounceSFX_data
	.word	playSoundB
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L87
	ldr	r3, .L87+4
	ldr	r5, [r4, #44]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r5, r3
	bne	.L83
	ldr	r0, [r4, #48]
	ldr	r3, .L87+8
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L83:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	addne	r5, r5, #1
	strne	r5, [r4, #44]
	streq	r3, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	slime
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L92
	ldr	r3, [r2, #48]
	str	lr, [sp, #-4]!
	ldr	lr, [r2, #20]
	lsl	r3, r3, #22
	cmp	lr, #0
	lsr	r3, r3, #16
	addgt	r3, r3, #2
	ldr	r0, [r2]
	ldr	r1, .L92+4
	ldr	ip, [r2, #4]
	lslgt	r3, r3, #16
	orr	r2, r0, #16384
	lsrgt	r3, r3, #16
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L93:
	.align	2
.L92:
	.word	slime
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initSpikes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpikes, %function
initSpikes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L99
	mov	lr, #16
	mov	r8, #64
	mov	r7, #80
	mov	r6, #160
	mov	r5, #184
	mov	ip, #152
	mov	r0, r2
	mov	r4, r3
	str	r3, [r2, #8]
	str	r3, [r2, #24]
	str	r3, [r2, #40]
	str	r3, [r2, #56]
	ldr	r3, .L99+4
	str	r8, [r2]
	str	r7, [r2, #16]
	str	r6, [r2, #32]
	str	r5, [r2, #48]
	str	lr, [r2, #12]
	str	lr, [r2, #28]
	str	lr, [r2, #44]
	str	lr, [r2, #60]
	mov	r1, ip
	str	ip, [r2, #4]
	str	ip, [r2, #20]
	str	ip, [r2, #36]
	str	ip, [r2, #52]
	add	ip, r3, #32
.L96:
	ldr	r2, [r0], #16
	orr	r1, r1, #16384
	strh	r1, [r3, #8]	@ movhi
	strh	r4, [r3, #12]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	ldrne	r1, [r0, #4]
	bne	.L96
.L94:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	spikes
	.word	shadowOAM
	.size	initSpikes, .-initSpikes
	.align	2
	.global	updateSpikes
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpikes, %function
updateSpikes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #1
	ldr	r4, .L109
	ldr	r5, .L109+4
	ldr	r10, .L109+8
	ldr	r9, .L109+12
	ldr	r8, .L109+16
	sub	sp, sp, #16
	add	r7, r4, #64
.L103:
	ldr	r3, [r5, #16]
	ldr	r1, [r5, #4]
	ldr	r2, [r5]
	stmib	sp, {r1, r3}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r4, r4, #16
	beq	.L102
	mov	r1, #130
	mov	r2, #0
	ldr	r3, [r9]
	sub	r3, r3, #1
	str	r3, [r9]
	ldrh	r3, [r8, #8]
	sub	r3, r3, #60
	str	r6, [r5]
	str	r6, [r5, #12]
	str	r6, [r5, #8]
	strh	r3, [r8, #8]	@ movhi
	str	r1, [r5, #4]
	str	r2, [r5, #20]
.L102:
	cmp	r4, r7
	bne	.L103
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	spikes
	.word	slime
	.word	collision
	.word	livesRemaining
	.word	83886592
	.size	updateSpikes, .-updateSpikes
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L115
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r3
	mov	r4, #16
	mov	r1, #1
	mov	r2, #0
	mov	r0, #9
	add	lr, r3, #320
.L112:
	str	r4, [ip, #12]
	str	r1, [ip, #8]
	str	r1, [ip, #16]
	str	r2, [ip, #20]
	str	r2, [ip, #52]
	str	r0, [ip, #56]
	str	r2, [ip, #60]
	add	ip, ip, #64
	cmp	ip, lr
	bne	.L112
	mov	ip, #24
	str	ip, [r3]
	str	ip, [r3, #28]
	str	ip, [r3, #132]
	mov	ip, #89
	mov	r6, #48
	mov	r5, #80
	mov	r4, #112
	mov	lr, #20
	mov	fp, #88
	mov	r10, #40
	mov	r9, #192
	mov	r8, #208
	mov	r7, #137
	str	ip, [r3, #196]
	mov	ip, #120
	str	fp, [r3, #4]
	str	r6, [r3, #32]
	str	r6, [r3, #92]
	str	r5, [r3, #64]
	str	r5, [r3, #96]
	str	r10, [r3, #68]
	str	r4, [r3, #128]
	str	r4, [r3, #156]
	str	r9, [r3, #160]
	str	r8, [r3, #192]
	str	lr, [r3, #232]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #88]
	str	r1, [r3, #100]
	str	r2, [r3, #104]
	str	r1, [r3, #152]
	str	r2, [r3, #164]
	str	r2, [r3, #168]
	str	r2, [r3, #216]
	str	r2, [r3, #220]
	str	r2, [r3, #236]
	str	r2, [r3, #228]
	str	r2, [r3, #240]
	str	r0, [r3, #248]
	str	ip, [r3, #256]
	str	lr, [r3, #296]
	str	r7, [r3, #260]
	str	r1, [r3, #280]
	str	r2, [r3, #284]
	str	r2, [r3, #300]
	str	r2, [r3, #292]
	str	r2, [r3, #304]
	str	r0, [r3, #312]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	enemies
	.size	initEnemies, .-initEnemies
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #16]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	beq	.L119
	ldr	r3, [r0, #28]
	cmp	r3, #0
	ldm	r0, {r0, r1}
	beq	.L120
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L121
	ldr	r3, [r4, #32]
	cmp	r3, r0
	moveq	r3, #1
	ldrne	r3, [r4, #8]
	addne	r0, r0, r3
	strne	r0, [r4]
	streq	r3, [r4, #36]
	b	.L123
.L120:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	ldr	r3, [r4, #48]
	bne	.L153
.L125:
	sub	r3, r3, #1
	str	r3, [r4, #48]
.L123:
	ldr	r5, .L156
	ldr	r3, [r4, #12]
	ldr	r2, [r5, #16]
	ldm	r5, {ip, lr}
	ldr	r6, .L156+4
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	stm	sp, {ip, lr}
	mov	r2, r3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L119
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L130
	ldr	r6, [r4, #24]
	cmp	r6, #0
	beq	.L154
.L130:
	ldr	r3, .L156+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L131
	mov	r1, #1
	mov	ip, #0
	ldr	r3, .L156+12
	ldr	r0, [r5]
	ldr	r2, [r3, #88]
	str	r0, [r3, #72]
	ldr	r0, [r5, #4]
	add	r2, r2, r1
	str	ip, [r3, #100]
	str	r0, [r3, #76]
	str	r2, [r3, #84]
	str	r1, [r3, #96]
	str	r1, [r3, #104]
.L131:
	mov	r2, #1
	mov	ip, #130
	mov	r0, #0
	ldr	r1, .L156+16
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r1, .L156+20
	ldrh	r3, [r1, #8]
	sub	r3, r3, #60
	str	r2, [r5]
	str	r2, [r5, #12]
	str	r2, [r5, #8]
	strh	r3, [r1, #8]	@ movhi
	str	ip, [r5, #4]
	str	r0, [r5, #20]
.L119:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L117
	ldr	r5, [r4, #60]
	ldr	r3, .L156+24
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L133
	ldr	r0, [r4, #52]
	ldr	r3, .L156+28
	ldr	r1, [r4, #56]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
.L133:
	add	r5, r5, #1
	str	r5, [r4, #60]
.L117:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L153:
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r4, #44]
	cmp	r2, r3
	bge	.L155
	cmp	r3, r2, lsl #1
	moveq	r2, #90
	moveq	r3, #1
	add	r1, r1, #1
	str	r1, [r4, #4]
	streq	r2, [r4, #48]
	addne	r3, r3, #1
.L127:
	str	r3, [r4, #44]
	b	.L123
.L121:
	cmp	r3, r0
	moveq	r3, #0
	ldrne	r3, [r4, #8]
	subne	r0, r0, r3
	strne	r0, [r4]
	streq	r3, [r4, #36]
	b	.L123
.L155:
	sub	r1, r1, #1
	str	r1, [r4, #4]
	add	r3, r3, #1
	b	.L127
.L154:
	ldr	r3, .L156+32
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L156+36
	ldr	r3, .L156+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r5, #12]
	rsb	r3, r3, #0
	str	r6, [r4, #16]
	str	r3, [r5, #12]
	str	r2, [r4, #20]
	b	.L119
.L157:
	.align	2
.L156:
	.word	slime
	.word	collision
	.word	cheatsEnabled
	.word	goos
	.word	livesRemaining
	.word	83886592
	.word	1717986919
	.word	__aeabi_idivmod
	.word	bounceSFX_length
	.word	bounceSFX_data
	.word	playSoundB
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	animateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateEnemy, %function
animateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #48]
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, lr}
	ldr	r3, .L168
	ldr	r5, [r0, #60]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	mov	r4, r0
	bne	.L160
	ldr	r0, [r0, #52]
	ldr	r3, .L168+4
	ldr	r1, [r4, #56]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
.L160:
	add	r5, r5, #1
	str	r5, [r4, #60]
	pop	{r4, r5, r6, lr}
	bx	lr
.L169:
	.align	2
.L168:
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateEnemy, .-animateEnemy
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #20]
	cmp	r3, #0
	beq	.L171
	ldr	ip, .L183
	add	r3, r0, #5
	lsl	r3, r3, #3
	ldrh	r2, [ip, r3]
	orr	r2, r2, #512
	strh	r2, [ip, r3]	@ movhi
.L171:
	ldr	r3, [r1, #16]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r1, #24]
	str	lr, [sp, #-4]!
	ldr	lr, [r1, #52]
	ldr	r2, [r1]
	ldr	ip, .L183
	add	r3, r3, #2
	add	r0, r0, #5
	add	r3, r3, lr, lsl #5
	ldr	lr, [r1, #4]
	lsl	r3, r3, #1
	add	r1, ip, r0, lsl #3
	orr	r2, r2, #16384
	lsl	r0, r0, #3
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L184:
	.align	2
.L183:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	initGoos
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGoos, %function
initGoos:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L189
	push	{r4, lr}
	mov	r3, r1
	mov	r4, #32
	mov	r0, #1
	mov	r2, #0
	mov	lr, #4
	add	ip, r1, #108
.L186:
	str	r4, [r3, #8]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #12]
	str	lr, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L186
	mov	lr, #144
	mov	r3, #108
	mov	ip, #8
	str	lr, [r1]
	str	r2, [r1, #72]
	str	r2, [r1, #76]
	str	r0, [r1, #100]
	str	r2, [r1, #96]
	str	ip, [r1, #4]
	str	r3, [r1, #36]
	str	r3, [r1, #40]
	pop	{r4, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	goos
	.size	initGoos, .-initGoos
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #16
	mov	r0, #8
	push	{r4, r5, r6, lr}
	mov	r1, #1
	mov	lr, #2
	mov	r5, #130
	mov	r4, #4
	ldr	r3, .L193
	str	r2, [r3]
	ldr	r3, .L193+4
	str	r2, [r3]
	ldr	r3, .L193+8
	str	r2, [r3]
	ldr	r3, .L193+12
	str	r2, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #44]
	str	ip, [r3, #16]
	ldr	r2, .L193+16
	ldr	ip, .L193+20
	str	r0, [r3, #52]
	ldr	r0, .L193+24
	str	r5, [r3, #4]
	str	r4, [r3, #24]
	str	lr, [ip]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r2]
	bl	initSpikes
	bl	initEnemies
	pop	{r4, r5, r6, lr}
	b	initGoos
.L194:
	.align	2
.L193:
	.word	vOff
	.word	hOff
	.word	cheatsEnabled
	.word	slime
	.word	collisionMap
	.word	livesRemaining
	.word	alphaLevelCollisionMapBitmap
	.size	initGame, .-initGame
	.align	2
	.global	updateGoo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGoo, %function
updateGoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #20
	ldm	r0, {r0, r1, r3}
	beq	.L222
	ldr	r6, [r4, #12]
	ldr	r5, .L225
	cmp	r6, #1
	mov	r9, #0
	ldr	r7, .L225+4
	add	r8, r5, #320
	beq	.L223
.L199:
	add	r5, r5, #64
	cmp	r8, r5
	beq	.L198
	ldr	r6, [r4, #12]
	cmp	r6, #1
	bne	.L199
.L223:
	ldr	r2, [r5, #12]
	ldr	ip, [r5, #4]
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	ldr	r2, [r5]
	stm	sp, {r2, ip}
	mov	r2, r3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	strne	r9, [r5, #16]
	strne	r6, [r5, #20]
	ldm	r4, {r0, r1, r3}
	b	.L199
.L222:
	ldr	r7, .L225+4
.L198:
	ldr	r2, .L225+8
	add	r3, r3, r3, lsr #31
	ldr	ip, [r2, #16]
	ldr	r5, [r2, #4]
	ldr	lr, [r2]
	asr	r3, r3, #1
	mov	r2, r3
	stmib	sp, {r5, ip}
	str	ip, [sp, #12]
	str	lr, [sp]
	add	r1, r1, #8
	add	r0, r0, #8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L204
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L224
.L204:
	ldr	r2, [r4, #12]
.L203:
	ldr	r3, [r4, #20]
	tst	r3, #1
	bne	.L205
	cmp	r2, #0
	beq	.L206
	sub	r2, r2, #1
	str	r2, [r4, #12]
.L205:
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r4, #20]
	beq	.L208
.L195:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L206:
	add	r3, r3, #1
	str	r3, [r4, #20]
.L208:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L195
	mov	r2, #0
	mov	r3, #1
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L224:
	mov	r3, #1
	ldr	r2, [r4, #16]
	add	r2, r2, r3
	str	r2, [r4, #12]
	str	r3, [r4, #32]
	b	.L203
.L226:
	.align	2
.L225:
	.word	enemies
	.word	collision
	.word	slime
	.size	updateGoo, .-updateGoo
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L229
	mov	r0, r4
	bl	updateEnemy
	add	r0, r4, #64
	bl	updateEnemy
	add	r0, r4, #128
	ldr	r5, .L229+4
	bl	updateEnemy
	add	r0, r4, #192
	bl	updateEnemy
	add	r0, r4, #256
	bl	updateEnemy
	mov	r0, r5
	bl	updateGoo
	add	r0, r5, #36
	bl	updateGoo
	add	r0, r5, #72
	bl	updateGoo
	bl	updatePlayer
	pop	{r4, r5, r6, lr}
	b	updateSpikes
.L230:
	.align	2
.L229:
	.word	enemies
	.word	goos
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGoo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGoo, %function
drawGoo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #28]
	cmp	r3, #0
	beq	.L232
	ldr	ip, .L244
	add	r3, r0, #10
	lsl	r3, r3, #3
	ldrh	r2, [ip, r3]
	orr	r2, r2, #512
	strh	r2, [ip, r3]	@ movhi
.L232:
	ldr	r3, [r1, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r1]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	add	r3, r1, #16
	ldmda	r3, {r3, ip}
	sub	ip, ip, r3
	ldr	r3, [r1, #32]
	mul	r3, ip, r3
	ldr	ip, .L244
	str	lr, [sp, #-4]!
	add	r0, r0, #10
	ldr	lr, [r1, #4]
	lsl	r3, r3, #7
	add	r1, ip, r0, lsl #3
	add	r3, r3, #12
	lsl	r0, r0, #3
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L245:
	.align	2
.L244:
	.word	shadowOAM
	.size	drawGoo, .-drawGoo
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L249
	ldr	r3, [r2, #48]
	push	{r4, lr}
	ldr	lr, [r2, #20]
	lsl	r3, r3, #22
	cmp	lr, #0
	lsr	r3, r3, #16
	addgt	r3, r3, #2
	ldr	ip, .L249+4
	ldr	r0, [r2, #4]
	ldr	r1, [r2]
	lslgt	r3, r3, #16
	orr	r2, r1, #16384
	lsrgt	r3, r3, #16
	strh	r0, [ip]	@ movhi
	ldr	r1, .L249+8
	mov	r0, #0
	strh	r2, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	bl	drawEnemy
	mov	r0, #1
	ldr	r1, .L249+12
	bl	drawEnemy
	mov	r0, #2
	ldr	r1, .L249+16
	bl	drawEnemy
	mov	r0, #3
	ldr	r1, .L249+20
	bl	drawEnemy
	mov	r0, #4
	ldr	r1, .L249+24
	bl	drawEnemy
	mov	r0, #0
	ldr	r1, .L249+28
	bl	drawGoo
	mov	r0, #1
	ldr	r1, .L249+32
	bl	drawGoo
	mov	r0, #2
	ldr	r1, .L249+36
	bl	drawGoo
	ldr	r3, .L249+40
	mov	lr, pc
	bx	r3
	ldr	r4, .L249+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L249+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L250:
	.align	2
.L249:
	.word	slime
	.word	shadowOAM
	.word	enemies
	.word	enemies+64
	.word	enemies+128
	.word	enemies+192
	.word	enemies+256
	.word	goos
	.word	goos+36
	.word	goos+72
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	cheatsEnabled,4,4
	.comm	livesRemaining,4,4
	.comm	goos,108,4
	.comm	spikes,64,4
	.comm	enemies,320,4
	.comm	slime,60,4
	.comm	collisionMap,4,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
