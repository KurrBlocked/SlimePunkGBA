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
	.file	"main.c"
	.text
	.align	2
	.global	goToMenu
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMenu, %function
goToMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L4+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1824
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+16
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	waitForVBlank
	.word	DMANow
	.word	startScreenPal
	.word	startScreenTiles
	.word	100726784
	.word	startScreenMap
	.word	state
	.size	goToMenu, .-goToMenu
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #0
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	ip, [r3, #48]
	ldr	r0, .L8
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMenu
.L9:
	.align	2
.L8:
	.word	buttons
	.word	oldButtons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToMenu
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #28
	ldr	r0, .L16
	ldr	r2, .L16+4
	push	{r4, lr}
	ldr	r3, .L16+8
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #39936
	ldr	r4, .L16+12
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #10112
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #3072
	mov	r0, #3
	ldr	r2, .L16+24
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L16+32
	ldr	r1, .L16+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	state
	.word	currentScreenblock
	.word	waitForVBlank
	.word	DMANow
	.word	instructionsScreenPal
	.word	instructionsScreenTiles
	.word	100720640
	.word	instructionsScreenMap
	.word	100696064
	.word	instructionsScreenForegroundTiles
	.word	100718592
	.word	instructionsScreenForegroundMap
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, r5, r6, lr}
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r0, .L21+4
	ldr	r3, .L21+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+12
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r4, .L21+16
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L21+20
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L21+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L21+28
	ldr	r1, .L21+32
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r6, .L21+36
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #16384
	strh	r2, [r5, #16]	@ movhi
	mov	r0, #3
	ldr	r2, .L21+40
	ldr	r1, .L21+44
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r0, #3
	ldr	r1, .L21+48
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L21+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L21+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L21+60
	ldr	r1, [r3]
	ldr	r3, .L21+64
	cmp	r1, #1
	str	r2, [r3]
	ldrheq	r3, [r6, #8]
	subeq	r3, r3, #60
	strheq	r3, [r6, #8]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	gameBGM_length
	.word	gameBGM_data
	.word	playSoundA
	.word	waitForVBlank
	.word	DMANow
	.word	levelBackgroundPal
	.word	levelBackgroundTiles
	.word	100726784
	.word	levelBackgroundMap
	.word	83886592
	.word	100728832
	.word	spriteSheetTiles
	.word	spriteSheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	livesRemaining
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	menu
	.syntax unified
	.arm
	.fpu softvfp
	.type	menu, %function
menu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L35
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L24
	ldr	r2, .L35+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L33
.L24:
	tst	r3, #4
	beq	.L23
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L34
.L23:
	pop	{r4, lr}
	bx	lr
.L34:
	mov	r3, #67108864
	mov	r1, #4864
	ldr	r2, .L35+8
	strh	r1, [r3]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	b	goToInstructions
.L33:
	bl	goToGame
	ldr	r3, .L35+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L24
.L36:
	.align	2
.L35:
	.word	oldButtons
	.word	buttons
	.word	6920
	.word	initGame
	.size	menu, .-menu
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L59
	ldrh	r3, [r3, #48]
	ldr	r2, .L59+4
	tst	r3, #64
	push	{r4, r5, r6, lr}
	ldr	r3, [r2]
	bne	.L38
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
.L38:
	ldr	r1, .L59
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L39
	cmp	r3, #320
	blt	.L55
.L40:
	cmp	r3, #0
	lslne	r3, r3, #16
	lsrne	r3, r3, #16
	bne	.L43
	ldr	r1, .L59+8
	ldr	r0, [r1]
	cmp	r0, #29
	beq	.L56
.L43:
	mov	r5, #67108864
	ldr	r4, .L59+12
	strh	r3, [r5, #18]	@ movhi
	ldr	r3, .L59+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L44
	ldr	r2, .L59+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L57
.L44:
	tst	r3, #4
	beq	.L37
	ldr	r3, .L59+20
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L58
.L37:
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	add	r3, r3, #1
	str	r3, [r2]
.L39:
	cmp	r3, #256
	bne	.L40
	ldr	r1, .L59+8
	ldr	r0, [r1]
	cmp	r0, #28
	bne	.L43
	mov	r3, #67108864
	mov	r0, #1
	mov	lr, #40192
	mov	ip, #29
	strh	lr, [r3, #8]	@ movhi
	mov	r3, r0
	str	r0, [r2]
	str	ip, [r1]
	b	.L43
.L56:
	mov	r3, #67108864
	mov	r0, #256
	mov	lr, #39936
	mov	ip, #28
	strh	lr, [r3, #8]	@ movhi
	mov	r3, r0
	str	r0, [r2]
	str	ip, [r1]
	b	.L43
.L57:
	mov	r3, #4352
	strh	r3, [r5]	@ movhi
	bl	goToGame
	ldr	r3, .L59+24
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L44
.L58:
	mov	r2, #67108864
	mov	r1, #4352
	pop	{r4, r5, r6, lr}
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	b	goToMenu
.L60:
	.align	2
.L59:
	.word	67109120
	.word	vOff
	.word	currentScreenblock
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L63+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	mov	r3, #1104
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L63+16
	ldr	r1, .L63+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L63+28
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L63+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	waitForVBlank
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L77
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L77+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L66:
	tst	r3, #4
	beq	.L65
	ldr	r3, .L77+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L76
.L65:
	pop	{r4, lr}
	bx	lr
.L76:
	pop	{r4, lr}
	b	goToMenu
.L75:
	bl	goToGame
	ldr	r3, .L77+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L66
.L78:
	.align	2
.L77:
	.word	oldButtons
	.word	buttons
	.word	initSpikes
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L81+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L81+8
	mov	lr, pc
	bx	r4
	mov	r3, #1280
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L81+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L81+16
	ldr	r1, .L81+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L81+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+32
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L81+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
	.word	waitForVBlank
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L85
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L86:
	.align	2
.L85:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L89+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+8
	mov	lr, pc
	bx	r4
	mov	r3, #1360
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L89+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L89+16
	ldr	r1, .L89+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L89+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L89+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
	.word	waitForVBlank
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
	ldr	r3, .L102+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
.L92:
	ldr	r3, .L102+16
	ldr	r2, [r3]
	cmp	r2, #218
	ble	.L93
	ldr	r3, [r3, #4]
	cmp	r3, #112
	bgt	.L100
.L93:
	ldr	r3, .L102+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L101
	pop	{r4, lr}
	bx	lr
.L101:
	pop	{r4, lr}
	b	goToLose
.L100:
	bl	goToWin
	b	.L93
.L99:
	bl	goToPause
	ldr	r3, .L102+24
	mov	lr, pc
	bx	r3
	b	.L92
.L103:
	.align	2
.L102:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	slime
	.word	livesRemaining
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r6, .L119
	ldr	fp, .L119+4
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L119+16
	ldr	r9, .L119+20
	ldr	r8, .L119+24
	ldr	r7, .L119+28
	ldr	r4, .L119+32
.L106:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L115
.L108:
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L107
.L107:
	tst	r0, #8
	beq	.L115
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L109:
	tst	r0, #8
	beq	.L115
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L110:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L111:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L112:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L113:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L106
.L115:
	mov	r0, r3
	b	.L106
.L120:
	.align	2
.L119:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	menu
	.word	instructions
	.word	game
	.word	pause
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	livesRemaining,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	currentScreenblock,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
