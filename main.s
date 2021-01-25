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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L4
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L4+8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #2224
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+40
	ldr	r2, .L4+44
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	shadowOAM
	.word	1284
	.word	PumpkinPal
	.word	100679680
	.word	PumpkinTiles
	.word	100673536
	.word	PumpkinMap
	.word	hideSprites
	.word	waitForVBlank
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4864
	mov	r2, #7168
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	waitForVBlank
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
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
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
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L16+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #4352
	mov	r5, #67108864
	mov	r3, #2816
	ldr	r6, .L20
	ldr	r4, .L20+4
	mov	r1, r6
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	mov	r2, #117440512
	mov	r3, #512
	ldr	r7, .L20+8
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L20+16
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+24
	ldr	r1, .L20+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	mov	r1, r6
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #3
	ldr	r0, .L20+36
	ldr	r2, .L20+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #18]	@ movhi
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	shadowOAM
	.word	DMANow
	.word	hideSprites
	.word	WitchPal
	.word	8480
	.word	WitchTiles
	.word	100685824
	.word	WitchMap
	.word	waitForVBlank
	.word	monsterKillCount
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
	mov	r1, #0
	ldr	r2, .L25
	push	{r4, lr}
	ldr	r3, .L25+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+8
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	win.part.0
.L22:
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	winFlag
	.word	waitForVBlank
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
	mov	r1, #67108864
	mov	r3, #5120
	mov	r2, #40
	mov	r0, #0
	push	{r4, r5, r6, lr}
	strh	r3, [r1, #8]	@ movhi
	ldr	r4, .L29
	strh	r2, [r1, #16]	@ movhi
	mov	r3, #16
	strh	r0, [r1, #18]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L29+4
	mov	lr, pc
	bx	r4
	mov	r3, #3584
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L29+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L29+12
	ldr	r1, .L29+16
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r5, .L29+20
	ldr	r3, .L29+24
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+28
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L29+32
	str	r2, [r3]
	mov	lr, pc
	bx	r5
	mov	r2, #4
	ldr	r3, .L29+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	DMANow
	.word	LoseScreenPal
	.word	LoseScreenTiles
	.word	100704256
	.word	LoseScreenMap
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	heartCounter
	.word	state
	.size	goToLose, .-goToLose
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
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	mov	r3, #512
	strh	r2, [r5]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L35
	ldr	r4, .L35+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+8
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L35+12
	ldr	r3, [r3]
	ldr	r2, .L35+16
	cmp	r3, #1
	strh	r2, [r5, #10]	@ movhi
	beq	.L34
.L32:
	mov	r3, #32
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L35+20
	mov	lr, pc
	bx	r4
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L35+24
	ldr	r1, .L35+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L35+32
	ldr	r1, .L35+36
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L35+20
	mov	lr, pc
	bx	r4
	mov	r3, #16896
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L35+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L35+44
	ldr	r1, .L35+48
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+56
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L35+60
	ldrh	r1, [r3]
	ldr	r3, .L35+64
	strh	r1, [r2, #22]	@ movhi
	ldrh	r1, [r3]
	mov	r0, #3
	strh	r1, [r2, #20]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L35
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L35+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L34:
	bl	goToLose
	b	.L32
.L36:
	.align	2
.L35:
	.word	shadowOAM
	.word	DMANow
	.word	20864
	.word	heartCounter
	.word	7948
	.word	neigborhoodPal
	.word	100712448
	.word	MoonSkyTiles
	.word	100726784
	.word	MoonSkyMap
	.word	neigborhoodTiles
	.word	100698112
	.word	neigborhoodMap
	.word	hideSprites
	.word	waitForVBlank
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
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
	ldr	r3, .L49
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L38
	ldr	r2, .L49+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L47
.L38:
	tst	r3, #4
	beq	.L37
	ldr	r3, .L49+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L48
.L37:
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	goToGame
.L48:
	pop	{r4, lr}
	b	goToStart
.L50:
	.align	2
.L49:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+4
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L76+12
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r5
	ldr	r3, .L76+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L72
.L52:
	ldr	r3, .L76+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L58
	ldr	r3, .L76+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L54
	ldr	r2, .L76+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L73
.L54:
	tst	r3, #2
	bne	.L74
.L56:
	tst	r3, #1
	beq	.L57
	ldr	r3, .L76+32
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L75
.L57:
	ldr	r3, .L76+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L58
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	ldr	r2, .L76+32
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L56
	mov	r2, #2
	mov	r0, #1
	ldr	r3, .L76+40
	ldr	r1, .L76+44
	str	r2, [r3, #24]
	str	r0, [r1]
	str	r2, [r3, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L72:
	bl	goToWin
	b	.L52
.L73:
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L76+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L75:
	mov	r2, #1
	ldr	r3, .L76+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #24]
	str	r2, [r3, #20]
	bx	lr
.L77:
	.align	2
.L76:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	DMANow
	.word	shadowOAM
	.word	winFlag
	.word	heartCounter
	.word	oldButtons
	.word	buttons
	.word	loseFlag
	.word	child
	.word	superSpeed
	.word	state
	.size	game, .-game
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
	ldr	r3, .L80
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L81:
	.align	2
.L80:
	.word	oldButtons
	.size	lose, .-lose
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
	mov	r1, #67108864
	mov	r3, #2816
	mov	r2, #0
	mov	r0, #45
	push	{r4, lr}
	strh	r3, [r1, #8]	@ movhi
	ldr	r4, .L84
	strh	r2, [r1, #16]	@ movhi
	mov	r3, #16
	strh	r0, [r1, #18]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L84+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L84+8
	ldr	r1, .L84+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L84+16
	ldr	r1, .L84+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L84+32
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L84+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	DMANow
	.word	PumpkinWinPal
	.word	10736
	.word	PumpkinWinTiles
	.word	100685824
	.word	PumpkinWinMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	ldr	r1, .L93
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L93+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
	ldr	r3, .L93+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
.L86:
	pop	{r4, lr}
	bx	lr
.L92:
	ldr	r3, .L93+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L93+16
	ldr	r0, .L93+20
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	bl	goToInstructions
	ldr	r3, .L93+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	1947168
	.word	zombiePanic
	.word	playSoundA
	.word	initGame
	.size	start, .-start
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
	ldr	r6, .L112
	ldr	fp, .L112+4
	ldr	r3, .L112+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L112+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L112+16
	ldr	r9, .L112+20
	ldr	r8, .L112+24
	ldr	r7, .L112+28
	ldr	r4, .L112+32
.L97:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L106
.L99:
	.word	.L104
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L98
.L98:
	tst	r0, #8
	beq	.L106
	tst	r3, #8
	beq	.L111
.L106:
	mov	r0, r3
	b	.L97
.L100:
	tst	r0, #8
	beq	.L106
	ldr	r3, .L112+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L101:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L102:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L104:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L103:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L111:
	ldr	r3, .L112+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L97
.L113:
	.align	2
.L112:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	lose.part.0
	.word	goToGame
	.size	main, .-main
	.text
	.align	2
	.global	Instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	Instructions, %function
Instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L119
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L120:
	.align	2
.L119:
	.word	oldButtons
	.word	buttons
	.size	Instructions, .-Instructions
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	loseFlag,4,4
	.comm	snakeBodyCounter,4,4
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
