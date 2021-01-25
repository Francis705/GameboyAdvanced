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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCandy.part.0, %function
drawCandy.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r1, .L3
	ldr	r3, [r1, #40]
	ldr	r2, .L3+4
	lsl	r3, r3, #23
	ldrb	ip, [r1, #36]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r1, r2, #640
	orr	r3, r3, #16384
	add	r2, r2, #644
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	candyPiece
	.word	shadowOAM
	.size	drawCandy.part.0, .-drawCandy.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoor.part.0, %function
drawDoor.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7
	ldr	r2, [r3, #32]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	push	{r4, lr}
	mov	r4, #64
	mov	lr, #776
	ldr	r1, [r3, #28]
	ldr	r3, .L7+4
	ldr	ip, .L7+8
	add	r0, r3, #272
	strh	r2, [r0, #2]	@ movhi
	ldr	r2, [ip, #32]
	orr	r1, r1, #16384
	ldr	ip, [ip, #28]
	orr	r2, r2, #16384
	strh	r1, [r0]	@ movhi
	add	r1, r3, #632
	strh	r2, [r1, #2]	@ movhi
	add	r2, r3, #636
	add	r3, r3, #276
	strh	ip, [r1]	@ movhi
	strh	r4, [r2]	@ movhi
	strh	lr, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	doorOneCandy
	.word	shadowOAM
	.word	door
	.size	drawDoor.part.0, .-drawDoor.part.0
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r5, #3
	mov	r8, #97
	ldr	r6, .L11
	ldr	r3, .L11+4
	str	r4, [r6]
	ldr	r7, .L11+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L11+12
	ldr	r1, .L11+16
	ldr	ip, .L11+20
	ldr	lr, .L11+24
	mov	r0, r5
	str	r4, [r2]
	str	r4, [r1]
	str	r4, [r7]
	mov	r3, #32
	ldr	r7, .L11+28
	ldr	r2, .L11+32
	ldr	r1, .L11+36
	str	r4, [ip]
	str	r4, [ip, #4]
	str	r4, [ip, #8]
	str	r8, [lr]
	str	r5, [r6, #4]
	mov	lr, pc
	bx	r7
	mov	r0, r5
	mov	r3, #16384
	ldr	r2, .L11+40
	ldr	r1, .L11+44
	mov	lr, pc
	bx	r7
	mov	r0, #256
	mov	fp, #50
	ldr	r1, .L11+48
	str	r0, [r1, #40]
	ldr	r0, .L11+52
	str	fp, [r0, #40]
	mov	fp, #80
	mov	r3, #1
	mov	r2, #16
	str	fp, [r0, #36]
	mov	r9, #120
	mov	fp, #400
	mov	r7, #200
	mov	r8, #180
	str	r3, [r0, #24]
	str	r3, [r0, #16]
	str	r5, [r0, #44]
	str	r2, [r0, #4]
	str	r2, [r0]
	ldr	r0, .L11+56
	str	fp, [r0, #40]
	str	r9, [r0, #36]
	str	r3, [r0, #24]
	str	r3, [r0, #16]
	str	r5, [r0, #44]
	str	r2, [r0, #4]
	str	r2, [r0]
	str	r3, [r0, #20]
	ldr	r0, .L11+60
	str	r8, [r0, #40]
	str	r3, [r0, #24]
	str	r3, [r0, #16]
	str	r5, [r0, #44]
	str	r7, [r0, #36]
	str	r2, [r0, #4]
	str	r2, [r0]
	ldr	r0, .L11+64
	str	r8, [r0, #40]
	mov	r8, #170
	mov	ip, #8
	str	r4, [r1, #8]
	str	r5, [r1, #44]
	str	r9, [r1, #36]
	str	r3, [r1, #24]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	str	r2, [r1]
	str	r2, [r1, #12]
	str	r8, [r0, #36]
	str	r3, [r0, #24]
	str	r3, [r0, #20]
	str	r3, [r0, #16]
	str	r5, [r0, #44]
	str	r2, [r0, #4]
	str	r2, [r0]
	ldr	r0, .L11+68
	str	r5, [r6, #8]
	str	r5, [r0, #52]
	ldr	r5, [r1, #28]
	ldr	r1, [r1, #32]
	str	r3, [r0, #32]
	str	r3, [r0, #28]
	str	r4, [r0, #24]
	str	r4, [r0, #56]
	str	r5, [r0, #36]
	str	r1, [r0, #40]
	str	ip, [r0, #8]
	str	ip, [r0, #12]
	mov	r0, #115
	ldr	r1, .L11+72
	str	r0, [r1, #40]
	mov	r0, #78
	str	r0, [r1, #36]
	mov	r0, #10
	str	r3, [r1, #24]
	str	r4, [r1, #16]
	str	r2, [r1, #4]
	str	r2, [r1]
	ldr	r1, .L11+76
	str	r0, [r1, #48]
	mov	r0, #300
	str	r7, [r1, #44]
	str	ip, [r1, #8]
	str	ip, [r1, #12]
	str	r3, [r1, #24]
	str	r4, [r1, #56]
	ldr	r1, .L11+80
	str	r7, [r1, #44]
	str	r0, [r1, #48]
	str	ip, [r1, #8]
	ldr	r0, .L11+84
	str	ip, [r1, #12]
	str	r3, [r1, #24]
	str	r4, [r1, #56]
	ldr	r1, .L11+88
	str	r1, [r0, #48]
	mov	r1, #215
	str	ip, [r0, #8]
	str	ip, [r0, #12]
	str	r1, [r0, #44]
	str	r3, [r0, #24]
	str	r4, [r0, #56]
	mov	r0, #260
	mov	lr, #64
	mov	r10, #20
	ldr	r1, .L11+92
	str	r0, [r1, #48]
	ldr	r0, .L11+96
	str	r3, [r1, #32]
	str	r4, [r1, #24]
	str	r10, [r1, #44]
	str	lr, [r1, #12]
	str	lr, [r1, #8]
	str	r7, [r0, #48]
	ldr	r1, .L11+100
	str	r7, [r0, #44]
	str	ip, [r0, #8]
	str	ip, [r0, #12]
	str	r4, [r0, #24]
	str	r4, [r0, #56]
	ldr	r0, .L11+104
	str	lr, [r1, #12]
	str	lr, [r1, #8]
	str	lr, [r0, #12]
	str	lr, [r0, #8]
	mov	lr, #440
	ldr	r5, .L11+108
	str	r10, [r1, #44]
	str	r3, [r1, #32]
	str	r4, [r1, #24]
	str	r5, [r1, #48]
	ldr	r1, .L11+112
	str	r10, [r0, #44]
	str	r3, [r0, #32]
	str	lr, [r0, #48]
	str	r4, [r0, #24]
	str	r3, [r1, #24]
	mov	r3, #68
	ldr	r5, .L11+116
	ldr	ip, .L11+120
	str	r4, [r5]
	str	r9, [r1, #40]
	str	r4, [r1, #16]
	str	r3, [r1, #36]
	str	r4, [ip]
	str	r2, [r1, #4]
	str	r2, [r1]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	superSpeed
	.word	vOff
	.word	winFlag
	.word	.LANCHOR1
	.word	hOff
	.word	DMANow
	.word	83886592
	.word	spritesSheetFrankensteinCandyPal
	.word	100728832
	.word	spritesSheetFrankensteinCandyTiles
	.word	child
	.word	monsterOne
	.word	Ghost
	.word	Eye
	.word	Bat
	.word	candyPiece
	.word	door
	.word	skull
	.word	vine
	.word	vineLeft
	.word	390
	.word	doorTwo
	.word	gate
	.word	doorThree
	.word	doorFour
	.word	355
	.word	doorOneCandy
	.word	appleIndex
	.word	loseFlag
	.size	initGame, .-initGame
	.align	2
	.global	initChild
	.syntax unified
	.arm
	.fpu softvfp
	.type	initChild, %function
initChild:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #16
	mov	r4, #120
	mov	lr, #256
	mov	r1, #1
	mov	ip, #0
	mov	r0, #3
	ldr	r3, .L15
	str	r4, [r3, #36]
	str	lr, [r3, #40]
	str	ip, [r3, #8]
	str	r0, [r3, #44]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #12]
	str	r1, [r3, #24]
	str	r1, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	child
	.size	initChild, .-initChild
	.align	2
	.global	initMonsterOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMonsterOne, %function
initMonsterOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #50
	mov	r2, #1
	mov	ip, #80
	mov	r0, #3
	ldr	r3, .L19
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	monsterOne
	.size	initMonsterOne, .-initMonsterOne
	.align	2
	.global	updateMonsterOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMonsterOne, %function
updateMonsterOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L22
	ldr	r1, [r3, #40]
	ldr	r0, [r3, #24]
	add	r1, r0, r1
	cmp	r1, #16
	str	r1, [r3, #40]
	ldr	r2, [r3, #36]
	ble	.L25
	ldr	ip, .L26+4
	cmp	r1, ip
	movgt	ip, #2
	rsbgt	r0, r0, #0
	strgt	r0, [r3, #24]
	strgt	ip, [r3, #44]
	b	.L24
.L22:
	mov	r1, r2
	str	r2, [r3, #36]
	str	r2, [r3, #40]
.L24:
	ldr	ip, .L26+8
	ldr	r0, .L26+12
	ldr	ip, [ip]
	ldr	r0, [r0]
	sub	r2, r2, ip
	sub	r1, r1, r0
	str	r2, [r3, #28]
	str	r1, [r3, #32]
	bx	lr
.L25:
	mov	ip, #3
	rsb	r0, r0, #0
	str	r0, [r3, #24]
	str	ip, [r3, #44]
	b	.L24
.L27:
	.align	2
.L26:
	.word	monsterOne
	.word	490
	.word	vOff
	.word	hOff
	.size	updateMonsterOne, .-updateMonsterOne
	.align	2
	.global	drawMonsterOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMonsterOne, %function
drawMonsterOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L38
	ldr	r3, [r1, #16]
	cmp	r3, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L38+4
	ldr	r2, .L38+8
	ldr	r0, [lr]
	smull	r3, ip, r2, r0
	ldr	r3, [r1, #32]
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #3
	add	r2, r2, r2, lsl #2
	lsl	r3, r3, #23
	ldr	ip, .L38+12
	lsr	r3, r3, #23
	cmp	r0, r2, lsl #2
	ldrb	r2, [r1, #28]	@ zero_extendqisi2
	orr	r3, r3, #16384
	strh	r3, [ip, #2]	@ movhi
	strh	r2, [ip]	@ movhi
	bne	.L28
	ldr	r2, [lr, #12]
	ldr	r3, .L38+16
	add	r2, r2, #1
	smull	r0, r3, r2, r3
	ldr	r1, [r1, #44]
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3
	cmp	r1, #2
	str	r3, [lr, #12]
	beq	.L37
	cmp	r1, #3
	ldreq	r2, .L38+20
	addeq	r3, r2, r3, lsl #2
	ldreq	r3, [r3, #24]
	strheq	r3, [ip, #4]	@ movhi
.L28:
	ldr	lr, [sp], #4
	bx	lr
.L37:
	ldr	r2, .L38+20
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #12]
	strh	r3, [ip, #4]	@ movhi
	b	.L28
.L39:
	.align	2
.L38:
	.word	monsterOne
	.word	.LANCHOR1
	.word	1717986919
	.word	shadowOAM+952
	.word	1431655766
	.word	.LANCHOR0
	.size	drawMonsterOne, .-drawMonsterOne
	.align	2
	.global	initGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGhost, %function
initGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #1
	mov	lr, #400
	mov	r1, #16
	mov	ip, #120
	mov	r0, #3
	ldr	r3, .L42
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L43:
	.align	2
.L42:
	.word	Ghost
	.size	initGhost, .-initGhost
	.align	2
	.global	updateGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGhost, %function
updateGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L51
	ldr	r2, [r3, #16]
	cmp	r2, #0
	push	{r4, lr}
	beq	.L45
	ldr	r2, .L51+4
	ldr	r2, [r2]
	add	r2, r2, r2, lsl #4
	ldr	ip, .L51+8
	add	r2, r2, r2, lsl #8
	ldr	r4, .L51+12
	add	r2, r2, r2, lsl #16
	ldr	lr, [r3, #20]
	ldr	r1, [r3, #40]
	sub	ip, ip, r2
	ldr	r0, [r3, #24]
	ldr	r2, [r3, #36]
	cmp	r4, ip, ror #2
	add	r2, lr, r2
	add	r4, r0, r1
	rsbcs	lr, lr, #0
	strcs	lr, [r3, #20]
	cmp	r4, #17
	str	r4, [r3, #40]
	str	r2, [r3, #36]
	ble	.L50
	ldr	r1, .L51+16
	cmp	r4, r1
	movgt	r1, #2
	rsbgt	r0, r0, #0
	strgt	r0, [r3, #24]
	strgt	r1, [r3, #44]
	b	.L48
.L45:
	mov	r4, r2
	str	r2, [r3, #36]
	str	r2, [r3, #40]
.L48:
	ldr	r0, .L51+20
	ldr	ip, .L51+24
	ldr	r0, [r0]
	ldr	r1, [ip]
	sub	r2, r2, r0
	sub	r1, r4, r1
	str	r2, [r3, #28]
	str	r1, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L50:
	mov	r1, #3
	rsb	r0, r0, #0
	str	r0, [r3, #24]
	str	r1, [r3, #44]
	b	.L48
.L52:
	.align	2
.L51:
	.word	Ghost
	.word	.LANCHOR1
	.word	143165576
	.word	71582788
	.word	489
	.word	vOff
	.word	hOff
	.size	updateGhost, .-updateGhost
	.align	2
	.global	drawGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGhost, %function
drawGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L63
	ldr	r3, [r1, #16]
	cmp	r3, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L63+4
	ldr	r2, .L63+8
	ldr	r0, [lr]
	smull	r3, ip, r2, r0
	ldr	r3, [r1, #32]
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #3
	add	r2, r2, r2, lsl #2
	lsl	r3, r3, #23
	ldr	ip, .L63+12
	lsr	r3, r3, #23
	cmp	r0, r2, lsl #2
	ldrb	r2, [r1, #28]	@ zero_extendqisi2
	orr	r3, r3, #16384
	strh	r3, [ip, #2]	@ movhi
	strh	r2, [ip]	@ movhi
	bne	.L53
	ldr	r3, [lr, #16]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	ldr	r1, [r1, #44]
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	cmp	r1, #2
	str	r3, [lr, #16]
	beq	.L62
	cmp	r1, #3
	ldreq	r2, .L63+16
	addeq	r3, r2, r3, lsl #2
	ldreq	r3, [r3, #36]
	strheq	r3, [ip, #4]	@ movhi
.L53:
	ldr	lr, [sp], #4
	bx	lr
.L62:
	ldr	r2, .L63+16
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #36]
	add	r3, r3, #64
	strh	r3, [ip, #4]	@ movhi
	b	.L53
.L64:
	.align	2
.L63:
	.word	Ghost
	.word	.LANCHOR1
	.word	1717986919
	.word	shadowOAM+944
	.word	.LANCHOR0
	.size	drawGhost, .-drawGhost
	.align	2
	.global	initEye
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEye, %function
initEye:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #180
	mov	r2, #1
	mov	ip, #200
	mov	r0, #3
	ldr	r3, .L67
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	Eye
	.size	initEye, .-initEye
	.align	2
	.global	updateEye
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEye, %function
updateEye:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L72
	ldr	r2, [r3, #40]
	ldr	r1, [r3, #24]
	add	r2, r1, r2
	cmp	r2, #16
	str	r2, [r3, #40]
	bgt	.L70
	mov	r0, #3
	rsb	r1, r1, #0
	str	r1, [r3, #24]
	str	r0, [r3, #44]
.L71:
	ldr	r1, .L72+4
	ldr	r0, .L72+8
	ldr	ip, [r1]
	ldr	r0, [r0]
	ldr	r1, [r3, #36]
	sub	r2, r2, r0
	sub	r1, r1, ip
	str	r1, [r3, #28]
	str	r2, [r3, #32]
	bx	lr
.L70:
	ldr	r0, .L72+12
	cmp	r2, r0
	movgt	r0, #2
	rsbgt	r1, r1, #0
	strgt	r1, [r3, #24]
	strgt	r0, [r3, #44]
	b	.L71
.L73:
	.align	2
.L72:
	.word	Eye
	.word	vOff
	.word	hOff
	.word	490
	.size	updateEye, .-updateEye
	.align	2
	.global	drawEye
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEye, %function
drawEye:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L84
	ldr	r3, [r1, #16]
	cmp	r3, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L84+4
	ldr	r2, .L84+8
	ldr	r0, [lr]
	smull	r3, ip, r2, r0
	ldr	r3, [r1, #32]
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #3
	add	r2, r2, r2, lsl #2
	lsl	r3, r3, #23
	ldr	ip, .L84+12
	lsr	r3, r3, #23
	cmp	r0, r2, lsl #2
	ldrb	r2, [r1, #28]	@ zero_extendqisi2
	orr	r3, r3, #16384
	strh	r3, [ip, #2]	@ movhi
	strh	r2, [ip]	@ movhi
	bne	.L74
	ldr	r3, [lr, #20]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	ldr	r1, [r1, #44]
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	cmp	r1, #2
	str	r3, [lr, #20]
	beq	.L83
	cmp	r1, #3
	bne	.L74
.L83:
	ldr	r2, .L84+16
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #52]
	add	r3, r3, #64
	strh	r3, [ip, #4]	@ movhi
.L74:
	ldr	lr, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
	.word	Eye
	.word	.LANCHOR1
	.word	1717986919
	.word	shadowOAM+976
	.word	.LANCHOR0
	.size	drawEye, .-drawEye
	.align	2
	.global	initBat
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBat, %function
initBat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #1
	mov	lr, #180
	mov	r1, #16
	mov	ip, #170
	mov	r0, #3
	ldr	r3, .L88
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L89:
	.align	2
.L88:
	.word	Bat
	.size	initBat, .-initBat
	.align	2
	.global	updateBat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBat, %function
updateBat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L101
	ldr	r2, [r3, #40]
	ldr	ip, [r3, #24]
	ldr	r1, [r3, #36]
	ldr	r0, [r3, #20]
	add	r2, ip, r2
	add	r1, r0, r1
	cmp	r2, #16
	str	lr, [sp, #-4]!
	str	r2, [r3, #40]
	str	r1, [r3, #36]
	ble	.L98
	ldr	lr, .L101+4
	cmp	r2, lr
	ble	.L92
.L98:
	rsb	ip, ip, #0
	str	ip, [r3, #24]
.L92:
	cmp	r1, #4
	ble	.L99
	cmp	r1, #245
	ble	.L94
.L99:
	rsb	r0, r0, #0
	str	r0, [r3, #20]
.L94:
	ldr	r0, .L101+8
	ldr	r0, [r0, #40]
	cmp	r2, r0
	ble	.L95
	sub	r0, r2, r0
	cmp	r0, #17
	beq	.L100
.L96:
	ldr	ip, .L101+12
	ldr	r0, .L101+16
	ldr	ip, [ip]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L95:
	bge	.L96
	sub	r0, r0, r2
	cmp	r0, #30
	ldreq	r0, [r3, #20]
	rsbeq	r0, r0, #0
	streq	r0, [r3, #20]
	b	.L96
.L100:
	ldr	r0, [r3, #24]
	rsb	r0, r0, #0
	str	r0, [r3, #24]
	b	.L96
.L102:
	.align	2
.L101:
	.word	Bat
	.word	490
	.word	child
	.word	vOff
	.word	hOff
	.size	updateBat, .-updateBat
	.align	2
	.global	drawBat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBat, %function
drawBat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L114
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r2, #32]
	ldr	r0, .L114+4
	str	lr, [sp, #-4]!
	lsl	r3, r3, #23
	ldr	lr, [r0]
	ldr	r1, .L114+8
	ldrb	ip, [r2, #28]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	tst	lr, #3
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	bne	.L103
	ldr	ip, [r0, #24]
	ldr	r3, .L114+12
	add	ip, ip, #1
	smull	lr, r3, ip, r3
	ldr	r2, [r2, #44]
	sub	r3, r3, ip, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, ip, r3
	cmp	r2, #2
	str	r3, [r0, #24]
	beq	.L113
	cmp	r2, #3
	bne	.L103
.L113:
	ldr	r2, .L114+16
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #72]
	add	r3, r3, #192
	strh	r3, [r1, #4]	@ movhi
.L103:
	ldr	lr, [sp], #4
	bx	lr
.L104:
	mov	r0, #204
	ldr	r2, .L114+20
	ldr	r1, .L114+24
	strh	r0, [r2, #140]	@ movhi
	strh	r3, [r2, #136]	@ movhi
	strh	r1, [r2, #138]	@ movhi
	bx	lr
.L115:
	.align	2
.L114:
	.word	Bat
	.word	.LANCHOR1
	.word	shadowOAM+984
	.word	1431655766
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16534
	.size	drawBat, .-drawBat
	.align	2
	.global	drawChild
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChild, %function
drawChild:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L126
	ldr	r2, .L126+4
	ldr	r1, [ip]
	smull	r3, r0, r2, r1
	str	lr, [sp, #-4]!
	ldr	lr, .L126+8
	ldr	r3, [lr, #32]
	asr	r2, r1, #31
	rsb	r2, r2, r0, asr #2
	lsl	r3, r3, #23
	ldrb	lr, [lr, #28]	@ zero_extendqisi2
	ldr	r0, .L126+12
	add	r2, r2, r2, lsl #2
	lsr	r3, r3, #23
	cmp	r1, r2, lsl #1
	orr	r3, r3, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	lr, [r0]	@ movhi
	ldr	r2, .L126+16
	bne	.L117
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r3, [ip, #28]
	bne	.L125
.L118:
	ldr	r1, .L126+20
	add	r3, r1, r3, lsl #2
	ldr	r1, [r3, #84]
	ldr	r3, .L126+24
	strh	r1, [r3]	@ movhi
.L117:
	mov	r3, #0
	ldr	lr, [sp], #4
	str	r3, [r2]
	bx	lr
.L125:
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [ip, #28]
	b	.L118
.L127:
	.align	2
.L126:
	.word	.LANCHOR1
	.word	1717986919
	.word	child
	.word	shadowOAM+560
	.word	moveFlag
	.word	.LANCHOR0
	.word	shadowOAM+564
	.size	drawChild, .-drawChild
	.align	2
	.global	updateChild
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateChild, %function
updateChild:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L228
	ldrh	r3, [r3, #48]
	ldr	r4, .L228+4
	tst	r3, #16
	ldr	r0, [r4, #40]
	ldr	r2, [r4]
	ldr	r1, [r4, #36]
	ldr	r3, [r4, #4]
	sub	sp, sp, #16
	beq	.L212
	ldr	r7, .L228+8
.L129:
	ldr	ip, .L228
	ldrh	ip, [ip, #48]
	tst	ip, #32
	bne	.L132
	cmp	r0, #0
	ble	.L132
	mov	r6, #1
	sub	lr, r0, #1
	add	ip, r1, #15
	ldr	r5, .L228+12
	add	ip, lr, ip, lsl #9
	lsl	ip, ip, r6
	ldrh	r8, [r5, ip]
	ldr	ip, .L228+16
	cmp	r8, #0
	str	r6, [ip]
	beq	.L133
	add	ip, r1, r3
	add	lr, lr, ip, lsl #9
	lsl	lr, lr, r6
	ldrh	ip, [r5, lr]
	cmp	ip, #0
	ldrne	ip, [r4, #24]
	subne	r0, r0, ip
	strne	r0, [r4, #40]
.L133:
	ldr	ip, [r7]
	cmn	ip, #9
	blt	.L134
	ldr	lr, [r4, #32]
	cmp	lr, #120
	ldrle	lr, [r4, #24]
	suble	ip, ip, lr
	strle	ip, [r7]
.L134:
	mov	ip, #2
	str	ip, [r4, #44]
.L132:
	ldr	ip, .L228
	ldrh	ip, [ip, #48]
	tst	ip, #64
	bne	.L221
	cmp	r1, #75
	bgt	.L217
.L221:
	ldr	r8, .L228+20
.L135:
	ldr	ip, .L228
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L138
	ldr	ip, .L228+24
	ldr	ip, [ip, #92]
	add	lr, r1, r3
	cmp	lr, ip
	bge	.L139
	mov	r9, #1
	ldr	lr, [r4, #20]
	add	lr, r1, lr
	add	ip, lr, r3
	add	r5, r0, ip, lsl #9
	ldr	r6, .L228+12
	lsl	r5, r5, r9
	ldrh	r10, [r6, r5]
	ldr	r5, .L228+16
	cmp	r10, #0
	str	lr, [r4, #36]
	str	r9, [r5]
	lsl	ip, ip, #9
	bne	.L222
.L140:
	str	r1, [r4, #36]
.L141:
	ldr	lr, [r4, #28]
	add	ip, r1, #160
	sub	ip, ip, lr
	cmp	ip, #255
	bgt	.L139
	add	lr, lr, r3
	cmp	lr, #80
	ble	.L139
	ldr	r9, .L228+28
	ldr	ip, [r4, #24]
	ldr	r6, .L228+32
	ldr	r5, [r9]
	ldr	lr, [r8]
	add	r5, r5, ip
	add	lr, lr, ip
	ldr	ip, [r6, #8]
	sub	ip, ip, #1
	str	r5, [r9]
	str	lr, [r8]
	str	ip, [r6, #8]
.L139:
	mov	ip, #1
	str	ip, [r4, #44]
.L138:
	ldr	r6, .L228+36
	ldm	r6, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r6, #36]
	str	ip, [sp, #8]
	ldr	ip, [r6, #40]
	ldr	r5, .L228+40
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L142
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L223
.L142:
	ldr	r6, .L228+44
	add	r2, r6, #36
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r1, [r4, #36]
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #40]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L143
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L224
.L143:
	ldr	r6, .L228+48
	add	r2, r6, #44
	ldr	r0, [r6, #12]
	ldr	r1, [r6, #8]
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r1, [r4, #36]
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #40]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	movne	r2, #1
	strne	r3, [r6, #24]
	ldrne	r3, .L228+52
	strne	r2, [r3, #8]
	ldr	r3, .L228+56
	ldr	r2, [r3, #44]
	ldr	r6, [r3, #12]
	ldr	lr, [r3, #8]
	ldr	ip, [r3, #48]
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #40]
	add	r3, r2, #7
	str	r3, [sp, #4]
	str	r6, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	ldm	r4, {r2, r3}
	add	r1, r1, #7
	sub	r0, r0, #11
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L145
	ldr	r6, .L228+52
	ldr	r3, [r6, #32]
	cmp	r3, #4
	beq	.L225
.L145:
	ldr	r3, .L228+60
	ldr	r2, [r3, #44]
	ldr	r6, [r3, #12]
	ldr	lr, [r3, #8]
	ldr	ip, [r3, #48]
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #40]
	add	r3, r2, #7
	str	r3, [sp, #4]
	str	r6, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	ldm	r4, {r2, r3}
	add	r1, r1, #7
	sub	r0, r0, #11
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L146
	ldr	r6, .L228+24
	ldr	r3, [r6, #96]
	cmp	r3, #4
	beq	.L226
.L146:
	ldr	r6, .L228+64
	ldr	ip, [r4]
	add	r2, r6, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #44]
	ldr	r0, [r6, #48]
	ldr	r9, [r4, #4]
	ldr	lr, [r4, #36]
	str	ip, [sp, #8]
	ldr	ip, [r4, #40]
	str	r9, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L147
	mov	r3, #1
	ldr	r2, .L228+52
	ldr	r2, [r2, #8]
	ldr	r0, [r4, #40]
	cmp	r2, #0
	subeq	r0, r0, #1
	str	r3, [r6, #24]
	streq	r0, [r4, #40]
.L148:
	ldr	r6, .L228+68
	add	r2, r6, #36
	ldm	r6, {r1, ip}
	ldm	r2, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #36]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L149
	mov	r3, #0
	mov	r0, #1
	mov	r2, #512
	str	r3, [r6, #16]
	ldr	r1, .L228+52
	ldr	r3, .L228+72
	str	r0, [r1, #4]
	strh	r2, [r3]	@ movhi
.L149:
	ldr	r1, [r4, #40]
	ldr	r3, .L228+76
	cmp	r1, r3
	ble	.L150
	ldr	r3, [r4, #36]
	sub	r2, r3, #161
	cmp	r2, #8
	subls	r3, r3, #1
	strls	r3, [r4, #36]
	bls	.L150
	cmp	r3, #180
	ble	.L150
	ldr	r3, .L228+52
	ldr	r3, [r3, #4]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L228+80
	strne	r2, [r3]
.L150:
	ldr	r3, .L228+84
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L152
	ldr	r3, .L228+88
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L227
.L152:
	ldr	r0, [r8]
	ldr	r2, [r7]
	ldr	r3, [r4, #36]
	sub	r2, r1, r2
	sub	r3, r3, r0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	str	r0, [r6, #24]
	ldr	r0, [r4, #40]
	b	.L148
.L224:
	ldr	r9, .L228+52
	ldr	r6, .L228+24
	ldr	r3, [r9]
	ldr	r2, [r6]
	sub	r3, r3, r2
	cmp	r3, #80
	ble	.L143
	ldr	r3, [r6, #4]
	mov	r2, #0
	sub	r3, r3, #1
	ldr	r1, .L228+92
	ldr	r0, .L228+96
	ldr	r10, .L228+100
	str	r3, [r6, #4]
	mov	lr, pc
	bx	r10
	ldr	r2, [r9]
	ldr	r3, .L228+104
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	b	.L143
.L217:
	add	ip, r1, #7
	add	lr, r0, ip, lsl #9
	ldr	r5, .L228+12
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	lsl	ip, ip, #9
	beq	.L136
	add	ip, ip, r2
	add	ip, ip, r0
	add	ip, ip, #1520
	add	ip, ip, #15
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	beq	.L136
	mov	lr, #1
	ldr	r5, [r4, #20]
	ldr	ip, .L228+16
	sub	r1, r1, r5
	str	r1, [r4, #36]
	str	lr, [ip]
.L136:
	ldr	r8, .L228+20
	ldr	ip, [r8]
	cmp	ip, #0
	ble	.L137
	ldr	lr, [r4, #28]
	cmp	lr, #80
	bgt	.L137
	ldr	r5, .L228+28
	ldr	r6, [r4, #24]
	ldr	lr, [r5]
	sub	ip, ip, r6
	sub	lr, lr, r6
	str	lr, [r5]
	str	ip, [r8]
.L137:
	mov	ip, #0
	str	ip, [r4, #44]
	b	.L135
.L223:
	ldr	r9, .L228+52
	ldr	r6, .L228+24
	ldr	r3, [r9]
	ldr	r2, [r6]
	sub	r3, r3, r2
	cmp	r3, #80
	ble	.L142
	ldr	r3, [r6, #4]
	mov	r2, #0
	sub	r3, r3, #1
	ldr	r1, .L228+92
	ldr	r0, .L228+96
	ldr	r10, .L228+100
	str	r3, [r6, #4]
	mov	lr, pc
	bx	r10
	ldr	r2, [r9]
	ldr	r3, .L228+104
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	b	.L142
.L212:
	add	ip, r0, r2
	cmp	ip, #512
	bge	.L220
	add	lr, r1, #15
	ldr	r5, .L228+12
	add	lr, ip, lr, lsl #9
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L131
	add	lr, r1, r3
	sub	lr, lr, #1
	add	ip, ip, lr, lsl #9
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	beq	.L131
	mov	lr, #1
	ldr	r5, [r4, #24]
	ldr	ip, .L228+16
	add	r0, r0, r5
	str	r0, [r4, #40]
	str	lr, [ip]
.L131:
	ldr	lr, [r4, #32]
	add	ip, r0, #240
	sub	ip, ip, lr
	cmp	ip, #512
	blt	.L214
.L220:
	ldr	r7, .L228+8
.L130:
	mov	ip, #3
	str	ip, [r4, #44]
	b	.L129
.L226:
	ldr	r9, .L228+52
	ldr	r2, [r6]
	ldr	r3, [r9]
	sub	r3, r3, r2
	cmp	r3, #80
	ble	.L146
	ldr	r3, [r6, #4]
	mov	r2, #0
	sub	r3, r3, #1
	ldr	r1, .L228+92
	ldr	r0, .L228+96
	ldr	r10, .L228+100
	str	r3, [r6, #4]
	mov	lr, pc
	bx	r10
	ldr	r2, [r9]
	ldr	r3, .L228+104
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	b	.L146
.L225:
	ldr	r9, .L228+24
	ldr	r3, [r6]
	ldr	r2, [r9]
	sub	r3, r3, r2
	cmp	r3, #80
	ble	.L145
	ldr	r3, [r9, #4]
	mov	r2, #0
	sub	r3, r3, #1
	ldr	r1, .L228+92
	ldr	r0, .L228+96
	ldr	r10, .L228+100
	str	r3, [r9, #4]
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldr	r3, .L228+104
	str	r2, [r9]
	mov	lr, pc
	bx	r3
	b	.L145
.L227:
	mov	r1, #1
	ldr	r2, .L228+108
	ldr	r3, .L228+104
	str	r1, [r2, #16]
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #40]
	b	.L152
.L214:
	add	lr, lr, r2
	ldr	r7, .L228+8
	cmp	lr, #119
	ldrgt	ip, [r4, #24]
	ldrgt	lr, [r7]
	addgt	ip, ip, lr
	strgt	ip, [r7]
	b	.L130
.L222:
	add	ip, ip, r2
	add	ip, ip, r0
	add	ip, r6, ip, lsl r9
	ldrh	ip, [ip, #-2]
	cmp	ip, #0
	movne	r1, lr
	bne	.L141
	b	.L140
.L229:
	.align	2
.L228:
	.word	67109120
	.word	child
	.word	hOff
	.word	neigborhoodCMtwoBitmap
	.word	moveFlag
	.word	vOff
	.word	.LANCHOR0
	.word	vOffOne
	.word	star
	.word	Ghost
	.word	collision
	.word	monsterOne
	.word	skull
	.word	.LANCHOR1
	.word	vine
	.word	vineLeft
	.word	gate
	.word	Bat
	.word	shadowOAM+984
	.word	450
	.word	winFlag
	.word	oldButtons
	.word	buttons
	.word	21312
	.word	ouch
	.word	playSoundB
	.word	hideSprites
	.word	door
	.size	updateChild, .-updateChild
	.align	2
	.global	initCandy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCandy, %function
initCandy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #8
	mov	r0, #1
	mov	r1, #0
	mov	lr, #3
	ldr	r2, .L232
	ldr	r3, .L232+4
	ldr	r4, [r2, #28]
	str	r4, [r3, #36]
	ldr	r4, [r2, #32]
	ldr	r2, [r2, #44]
	str	r2, [r3, #52]
	ldr	r2, .L232+8
	str	r4, [r3, #40]
	str	lr, [r2, #8]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #32]
	str	r0, [r3, #28]
	str	r1, [r3, #24]
	str	r1, [r3, #56]
	pop	{r4, lr}
	bx	lr
.L233:
	.align	2
.L232:
	.word	child
	.word	candyPiece
	.word	.LANCHOR0
	.size	initCandy, .-initCandy
	.align	2
	.global	throwCandy
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwCandy, %function
throwCandy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L246
	ldrh	r3, [r3]
	tst	r3, #512
	bxeq	lr
	ldr	r3, .L246+4
	ldrh	r3, [r3]
	tst	r3, #512
	bxne	lr
	ldr	r3, .L246+8
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bxne	lr
	ldr	r1, .L246+12
	ldr	r2, [r1, #8]
	cmp	r2, #0
	bxeq	lr
	push	{r4, r5, lr}
	mov	lr, #1
	ldr	ip, .L246+16
	ldr	r0, .L246+20
	sub	r2, r2, #1
	ldr	r4, [r0]
	ldr	r0, [ip, #36]
	str	r2, [r1, #8]
	ldr	r5, [ip, #40]
	ldr	r1, [ip, #44]
	ldr	r2, .L246+24
	add	r0, r0, #3
	str	r5, [r3, #48]
	str	r4, [r2]
	str	lr, [r3, #24]
	str	r0, [r3, #44]
	str	r1, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L247:
	.align	2
.L246:
	.word	oldButtons
	.word	buttons
	.word	candyPiece
	.word	.LANCHOR0
	.word	child
	.word	.LANCHOR1
	.word	count
	.size	throwCandy, .-throwCandy
	.align	2
	.global	updateCandy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCandy, %function
updateCandy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L271
	ldr	r5, .L271+4
	ldr	r2, [r2]
	ldr	r3, [r5]
	ldr	r4, .L271+8
	sub	r3, r3, r2
	cmp	r3, #50
	ldr	r1, [r4, #44]
	ldr	r0, [r4, #48]
	sub	sp, sp, #20
	beq	.L268
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L250
	ldr	r3, [r4, #52]
	cmp	r3, #0
	subeq	r1, r1, #2
	streq	r1, [r4, #44]
	beq	.L252
	cmp	r3, #1
	addeq	r1, r1, #2
	streq	r1, [r4, #44]
	bne	.L269
.L252:
	ldr	r6, .L271+12
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	ldm	r6, {ip, lr}
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r7, .L271+16
	add	r1, r1, #10
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L270
.L257:
	ldr	r6, .L271+20
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #44]
	ldr	r0, [r4, #48]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #0
	movne	r1, #512
	ldrne	r3, [r5, #36]
	addne	r3, r3, #1
	strne	r3, [r5, #36]
	ldrne	r3, .L271+24
	strne	r2, [r4, #24]
	strne	r2, [r6, #16]
	ldr	r0, [r4, #48]
	strhne	r1, [r3]	@ movhi
	ldr	r1, [r4, #44]
.L250:
	ldr	r2, .L271+28
	ldr	r3, .L271+32
	ldr	r2, [r2]
	ldr	r3, [r3]
	sub	r1, r1, r2
	sub	r0, r0, r3
	str	r1, [r4, #36]
	str	r0, [r4, #40]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L270:
	mov	r2, #0
	mov	r1, #512
	ldr	r3, [r5, #36]
	add	r3, r3, #1
	str	r3, [r5, #36]
	ldr	r3, .L271+36
	str	r2, [r4, #24]
	str	r2, [r6, #16]
	strh	r1, [r3]	@ movhi
	b	.L257
.L268:
	mov	r2, #512
	mov	ip, #0
	ldr	r3, .L271+40
	str	ip, [r4, #24]
	strh	r2, [r3]	@ movhi
	b	.L250
.L269:
	cmp	r3, #2
	subeq	r0, r0, #2
	streq	r0, [r4, #48]
	beq	.L252
	cmp	r3, #3
	addeq	r0, r0, #2
	streq	r0, [r4, #48]
	b	.L252
.L272:
	.align	2
.L271:
	.word	count
	.word	.LANCHOR1
	.word	candyPiece
	.word	monsterOne
	.word	collision
	.word	Ghost
	.word	shadowOAM+944
	.word	vOff
	.word	hOff
	.word	shadowOAM+952
	.word	shadowOAM+640
	.size	updateCandy, .-updateCandy
	.align	2
	.global	drawCandy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCandy, %function
drawCandy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L275
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bxeq	lr
	b	drawCandy.part.0
.L276:
	.align	2
.L275:
	.word	candyPiece
	.size	drawCandy, .-drawCandy
	.align	2
	.global	drawHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHearts, %function
drawHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L289
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L287
	cmp	r3, #2
	bne	.L288
	ldr	r3, .L289+4
	mov	r0, #0
	mov	r2, r3
	mov	r1, #26
	ldr	ip, .L289+8
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r0, [r2, #8]!	@ movhi
	add	ip, ip, #10
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	bx	lr
.L288:
	cmp	r3, #1
	bxne	lr
	mov	r0, #0
	mov	r2, #26
	ldr	r3, .L289+12
	ldr	r1, .L289+16
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L287:
	ldr	r3, .L289+20
	mov	r0, #0
	mov	ip, r3
	mov	r2, #26
	mov	r1, r3
	str	lr, [sp, #-4]!
	ldr	lr, .L289+24
	strh	r0, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r0, [ip, #8]!	@ movhi
	add	lr, lr, #10
	strh	lr, [ip, #2]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	ip, .L289+16
	strh	r0, [r1, #16]!	@ movhi
	ldr	lr, [sp], #4
	strh	ip, [r1, #2]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L290:
	.align	2
.L289:
	.word	.LANCHOR0
	.word	shadowOAM+728
	.word	16599
	.word	shadowOAM+736
	.word	16609
	.word	shadowOAM+720
	.word	16589
	.size	drawHearts, .-drawHearts
	.align	2
	.global	drawCandyCounter
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCandyCounter, %function
drawCandyCounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L300
	ldr	r3, [r3, #8]
	cmp	r3, #3
	push	{r4, r5, lr}
	beq	.L297
	cmp	r3, #2
	beq	.L298
	cmp	r3, #1
	beq	.L299
	mov	r2, #512
	ldr	r3, .L300+4
	pop	{r4, r5, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L298:
	ldr	r3, .L300+8
	mov	r5, #512
	mov	r1, r3
	mov	r0, r3
	mov	ip, #0
	mov	r4, #16384
	mov	r2, r3
	mov	lr, #268
	strh	r5, [r1], #-12	@ movhi
	strh	ip, [r0, #-16]!	@ movhi
	strh	r4, [r0, #2]	@ movhi
	ldr	r0, .L300+12
	strh	r0, [r1]	@ movhi
	strh	ip, [r2, #-8]!	@ movhi
	ldr	r1, .L300+16
	strh	r1, [r2, #2]	@ movhi
	strh	lr, [r3, #-4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L297:
	ldr	r3, .L300+4
	mov	r4, #16384
	mov	r0, r3
	mov	r1, #0
	mov	lr, #268
	mov	r2, r3
	mov	ip, #264
	strh	r4, [r3, #2]	@ movhi
	ldr	r4, .L300+12
	strh	r1, [r3]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	strh	r1, [r0, #8]!	@ movhi
	ldr	r4, .L300+16
	strh	r4, [r0, #2]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	ldr	r0, .L300+20
	strh	r1, [r2, #16]!	@ movhi
	pop	{r4, r5, lr}
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r3, #20]	@ movhi
	bx	lr
.L299:
	ldr	r3, .L300+24
	mov	r1, #512
	mov	r2, r3
	mov	ip, #0
	mov	r0, #16384
	strh	r1, [r3], #-4	@ movhi
	strh	ip, [r2, #-8]!	@ movhi
	sub	r1, r1, #246
	strh	r0, [r2, #2]	@ movhi
	pop	{r4, r5, lr}
	strh	r1, [r3]	@ movhi
	bx	lr
.L301:
	.align	2
.L300:
	.word	.LANCHOR0
	.word	shadowOAM+440
	.word	shadowOAM+456
	.word	266
	.word	16399
	.word	16414
	.word	shadowOAM+448
	.size	drawCandyCounter, .-drawCandyCounter
	.align	2
	.global	initDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoor, %function
initDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #115
	mov	ip, #78
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L304
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r2, [r3, #4]
	str	r2, [r3]
	ldr	lr, [sp], #4
	bx	lr
.L305:
	.align	2
.L304:
	.word	door
	.size	initDoor, .-initDoor
	.align	2
	.global	initdoorCandy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initdoorCandy, %function
initdoorCandy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #120
	mov	ip, #68
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L308
	str	lr, [r3, #40]
	str	ip, [r3, #36]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r2, [r3, #4]
	str	r2, [r3]
	ldr	lr, [sp], #4
	bx	lr
.L309:
	.align	2
.L308:
	.word	doorOneCandy
	.size	initdoorCandy, .-initdoorCandy
	.align	2
	.global	updateDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoor, %function
updateDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L315
	ldr	r3, [r2, #40]
	sub	r3, r3, #105
	cmp	r3, #10
	push	{r4, lr}
	bhi	.L311
	ldr	r3, [r2, #36]
	cmp	r3, #84
	ble	.L314
.L311:
	mov	r1, #0
	ldr	r2, .L315+4
	ldr	r3, .L315+8
	str	r1, [r2, #16]
	str	r1, [r3, #16]
.L312:
	ldr	r1, .L315+12
	ldr	r0, .L315+16
	ldr	r1, [r1]
	ldr	lr, [r2, #36]
	ldr	ip, [r3, #36]
	ldr	r4, [r0]
	sub	lr, lr, r1
	sub	ip, ip, r1
	ldr	r0, [r2, #40]
	ldr	r1, [r3, #40]
	sub	r0, r0, r4
	sub	r1, r1, r4
	str	lr, [r2, #28]
	str	ip, [r3, #28]
	str	r0, [r2, #32]
	str	r1, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L314:
	mov	r1, #1
	mov	ip, #3
	ldr	r0, .L315+20
	ldr	r2, .L315+4
	ldr	r3, .L315+8
	str	ip, [r0, #8]
	str	r1, [r2, #16]
	str	r1, [r3, #16]
	b	.L312
.L316:
	.align	2
.L315:
	.word	child
	.word	door
	.word	doorOneCandy
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.size	updateDoor, .-updateDoor
	.align	2
	.global	drawDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoor, %function
drawDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L319
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawDoor.part.0
.L318:
	mov	r2, #512
	ldr	r3, .L319+4
	sub	r1, r3, #360
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	bx	lr
.L320:
	.align	2
.L319:
	.word	door
	.word	shadowOAM+632
	.size	drawDoor, .-drawDoor
	.align	2
	.global	initDoorTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoorTwo, %function
initDoorTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #64
	mov	lr, #260
	mov	ip, #20
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L323
	str	lr, [r3, #48]
	str	ip, [r3, #44]
	str	r0, [r3, #32]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L324:
	.align	2
.L323:
	.word	doorTwo
	.size	initDoorTwo, .-initDoorTwo
	.align	2
	.global	updateDoorTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoorTwo, %function
updateDoorTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L329
	ldr	r3, [r2, #40]
	sub	r3, r3, #240
	cmp	r3, #10
	movhi	r0, #0
	str	lr, [sp, #-4]!
	bhi	.L326
	ldr	r0, [r2, #36]
	cmp	r0, #104
	movgt	r0, #0
	movle	r0, #1
.L326:
	ldr	r3, .L329+4
	ldr	ip, .L329+8
	ldr	r2, .L329+12
	ldr	lr, [ip]
	ldr	r1, [r3, #44]
	ldr	ip, [r2]
	ldr	r2, [r3, #48]
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r0, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L330:
	.align	2
.L329:
	.word	child
	.word	doorTwo
	.word	vOff
	.word	hOff
	.size	updateDoorTwo, .-updateDoorTwo
	.align	2
	.global	drawDoorTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoorTwo, %function
drawDoorTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L334
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L334+4
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #192
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	strheq	r3, [r2]	@ movhi
	bx	lr
.L335:
	.align	2
.L334:
	.word	doorTwo
	.word	shadowOAM+648
	.size	drawDoorTwo, .-drawDoorTwo
	.align	2
	.global	initSkull
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSkull, %function
initSkull:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #10
	mov	ip, #200
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L338
	str	lr, [r3, #48]
	str	ip, [r3, #44]
	str	r0, [r3, #24]
	str	r1, [r3, #56]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L339:
	.align	2
.L338:
	.word	skull
	.size	initSkull, .-initSkull
	.align	2
	.global	updateSkull
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkull, %function
updateSkull:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L341
	ldr	r2, .L341+4
	ldr	r0, .L341+8
	ldr	ip, [r2]
	ldr	r1, [r3, #48]
	ldr	r2, [r3, #44]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #36]
	bx	lr
.L342:
	.align	2
.L341:
	.word	skull
	.word	hOff
	.word	vOff
	.size	updateSkull, .-updateSkull
	.align	2
	.global	drawSkull
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkull, %function
drawSkull:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L352
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L344
	ldr	r2, .L352+4
	ldr	r2, [r2, #40]
	cmp	r2, #114
	bgt	.L344
	mov	r1, #140
	add	r0, r3, #36
	ldm	r0, {r0, r2}
	ldr	r3, .L352+8
	orr	r2, r2, #16384
	strh	r2, [r3, #18]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	bx	lr
.L344:
	ldr	r3, .L352+12
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bxeq	lr
	mov	r0, #0
	mov	r2, #140
	ldr	r3, .L352+8
	ldr	r1, .L352+16
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L353:
	.align	2
.L352:
	.word	skull
	.word	child
	.word	shadowOAM
	.word	.LANCHOR1
	.word	16554
	.size	drawSkull, .-drawSkull
	.align	2
	.global	initVine
	.syntax unified
	.arm
	.fpu softvfp
	.type	initVine, %function
initVine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #300
	mov	ip, #200
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L356
	str	lr, [r3, #48]
	str	ip, [r3, #44]
	str	r0, [r3, #24]
	str	r1, [r3, #56]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L357:
	.align	2
.L356:
	.word	vine
	.size	initVine, .-initVine
	.align	2
	.global	updateVine
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVine, %function
updateVine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L359
	ldr	r2, .L359+4
	ldr	r0, .L359+8
	ldr	ip, [r2]
	ldr	r1, [r3, #48]
	ldr	r2, [r3, #44]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #36]
	bx	lr
.L360:
	.align	2
.L359:
	.word	vine
	.word	hOff
	.word	vOff
	.size	updateVine, .-updateVine
	.align	2
	.global	drawVine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVine, %function
drawVine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, .L367
	ldr	r3, .L367+4
	ldr	r1, [lr]
	smull	r0, r2, r3, r1
	ldr	r0, .L367+8
	asr	r3, r1, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r0, #40]
	ldr	ip, .L367+12
	cmp	r1, r3, lsl #2
	ldr	r1, [r0, #36]
	orr	r3, r2, #16384
	strh	r3, [ip, #26]	@ movhi
	strh	r1, [ip, #24]	@ movhi
	bne	.L361
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L361
	ldr	r2, [lr, #32]
	ldr	r3, .L367+16
	add	r2, r2, #1
	smull	r1, r3, r2, r3
	sub	r3, r3, r2, asr #31
	ldr	r1, .L367+20
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #1
	add	r2, r1, r3, lsl #2
	ldr	r2, [r2, #100]
	add	r2, r2, #128
	str	r3, [lr, #32]
	strh	r2, [ip, #28]	@ movhi
.L361:
	ldr	lr, [sp], #4
	bx	lr
.L368:
	.align	2
.L367:
	.word	.LANCHOR1
	.word	1717986919
	.word	vine
	.word	shadowOAM
	.word	715827883
	.word	.LANCHOR0
	.size	drawVine, .-drawVine
	.align	2
	.global	initVineLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	initVineLeft, %function
initVineLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #215
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L371
	ldr	ip, .L371+4
	str	lr, [r3, #44]
	str	ip, [r3, #48]
	str	r0, [r3, #24]
	str	r1, [r3, #56]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L372:
	.align	2
.L371:
	.word	vineLeft
	.word	390
	.size	initVineLeft, .-initVineLeft
	.align	2
	.global	updateVineLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVineLeft, %function
updateVineLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L374
	ldr	r2, .L374+4
	ldr	r0, .L374+8
	ldr	ip, [r2]
	ldr	r1, [r3, #48]
	ldr	r2, [r3, #44]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #36]
	bx	lr
.L375:
	.align	2
.L374:
	.word	vineLeft
	.word	hOff
	.word	vOff
	.size	updateVineLeft, .-updateVineLeft
	.align	2
	.global	drawVineLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVineLeft, %function
drawVineLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L382
	ldr	r3, .L382+4
	ldr	r1, [r2]
	smull	r0, r2, r3, r1
	ldr	r0, .L382+8
	asr	r3, r1, #31
	rsb	r3, r3, r2, asr #3
	ldr	r2, [r0, #40]
	ldr	ip, .L382+12
	add	r3, r3, r3, lsl #2
	str	lr, [sp, #-4]!
	ldr	lr, [r0, #36]
	cmp	r1, r3, lsl #2
	orr	r3, r2, #16384
	strh	r3, [ip, #34]	@ movhi
	strh	lr, [ip, #32]	@ movhi
	bne	.L376
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L376
	ldr	r0, .L382+16
	ldr	r2, [r0, #96]
	ldr	r1, .L382+20
	add	r2, r2, #1
	smull	r3, r1, r2, r1
	asr	r3, r2, #31
	add	r1, r1, r2
	rsb	r3, r3, r1, asr #2
	rsb	r3, r3, r3, lsl #3
	sub	r3, r2, r3
	add	r2, r0, r3, lsl #2
	ldr	r2, [r2, #128]
	add	r2, r2, #128
	str	r3, [r0, #96]
	strh	r2, [ip, #36]	@ movhi
.L376:
	ldr	lr, [sp], #4
	bx	lr
.L383:
	.align	2
.L382:
	.word	.LANCHOR1
	.word	1717986919
	.word	vineLeft
	.word	shadowOAM
	.word	.LANCHOR0
	.word	-1840700269
	.size	drawVineLeft, .-drawVineLeft
	.align	2
	.global	initGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGate, %function
initGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #200
	mov	r1, #8
	mov	r2, #0
	ldr	r3, .L385
	str	r0, [r3, #48]
	str	r0, [r3, #44]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #56]
	bx	lr
.L386:
	.align	2
.L385:
	.word	gate
	.size	initGate, .-initGate
	.align	2
	.global	updateGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGate, %function
updateGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L388
	ldr	r2, .L388+4
	ldr	r0, .L388+8
	ldr	ip, [r2]
	ldr	r1, [r3, #48]
	ldr	r2, [r3, #44]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #36]
	bx	lr
.L389:
	.align	2
.L388:
	.word	gate
	.word	hOff
	.word	vOff
	.size	updateGate, .-updateGate
	.align	2
	.global	drawGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGate, %function
drawGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L398
	ldr	r3, [r3, #40]
	cmp	r3, #300
	bge	.L391
	ldr	r3, .L398+4
	ldr	r1, .L398+8
	ldr	r2, [r3, #40]
	ldr	ip, [r1, #8]
	ldr	r0, [r3, #36]
	ldr	r1, .L398+12
	orr	r2, r2, #16384
	cmp	ip, #0
	strh	r2, [r1, #58]	@ movhi
	strh	r0, [r1, #56]	@ movhi
	ldr	r3, [r3, #24]
	beq	.L392
	cmp	r3, #0
	beq	.L393
	mov	r3, #202
	strh	r3, [r1, #60]	@ movhi
	bx	lr
.L391:
	mov	r2, #512
	ldr	r3, .L398+12
	strh	r2, [r3, #56]	@ movhi
	bx	lr
.L392:
	cmp	r3, #0
	bxne	lr
.L393:
	mov	r3, #200
	strh	r3, [r1, #60]	@ movhi
	bx	lr
.L399:
	.align	2
.L398:
	.word	child
	.word	gate
	.word	.LANCHOR1
	.word	shadowOAM
	.size	drawGate, .-drawGate
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
	mov	r3, #67108864
	ldr	r2, .L414
	ldrh	r1, [r2]
	ldr	r2, .L414+4
	push	{r4, lr}
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L414+8
	strh	r1, [r3, #18]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L414+12
	ldrh	r2, [r2]
	strh	r1, [r3, #22]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	bl	drawChild
	bl	drawMonsterOne
	bl	drawGhost
	bl	drawHearts
	ldr	r3, .L414+16
	ldr	r3, [r3, #24]
	cmp	r3, #0
	blne	drawCandy.part.0
.L401:
	ldr	r3, .L414+20
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L402
	bl	drawDoor.part.0
.L403:
	bl	drawSkull
	bl	drawVine
	bl	drawVineLeft
	ldr	r1, .L414+24
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L414+28
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #192
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	strheq	r3, [r2]	@ movhi
	bl	drawGate
	bl	drawBat
	ldr	r1, .L414+32
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L414+36
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #448
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	ldr	r1, .L414+40
	strheq	r3, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L414+44
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #704
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	strheq	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	drawCandyCounter
.L402:
	mov	r2, #512
	ldr	r3, .L414+48
	sub	r1, r3, #360
	strh	r2, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L403
.L415:
	.align	2
.L414:
	.word	hOff
	.word	vOff
	.word	vOffOne
	.word	hOffOne
	.word	candyPiece
	.word	door
	.word	doorTwo
	.word	shadowOAM+648
	.word	doorThree
	.word	shadowOAM+656
	.word	doorFour
	.word	shadowOAM+664
	.word	shadowOAM+632
	.size	drawGame, .-drawGame
	.align	2
	.global	initDoorThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoorThree, %function
initDoorThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #64
	mov	lr, #20
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L418
	ldr	ip, .L418+4
	str	lr, [r3, #44]
	str	ip, [r3, #48]
	str	r0, [r3, #32]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L419:
	.align	2
.L418:
	.word	doorThree
	.word	355
	.size	initDoorThree, .-initDoorThree
	.align	2
	.global	updateDoorThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoorThree, %function
updateDoorThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L424
	ldr	r3, [r2, #40]
	sub	r3, r3, #340
	cmp	r3, #15
	movhi	r0, #0
	str	lr, [sp, #-4]!
	bhi	.L421
	ldr	r0, [r2, #36]
	cmp	r0, #86
	movgt	r0, #0
	movle	r0, #1
.L421:
	ldr	r3, .L424+4
	ldr	ip, .L424+8
	ldr	r2, .L424+12
	ldr	lr, [ip]
	ldr	r1, [r3, #44]
	ldr	ip, [r2]
	ldr	r2, [r3, #48]
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r0, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L425:
	.align	2
.L424:
	.word	child
	.word	doorThree
	.word	vOff
	.word	hOff
	.size	updateDoorThree, .-updateDoorThree
	.align	2
	.global	drawDoorThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoorThree, %function
drawDoorThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L429
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L429+4
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #448
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	strheq	r3, [r2]	@ movhi
	bx	lr
.L430:
	.align	2
.L429:
	.word	doorThree
	.word	shadowOAM+656
	.size	drawDoorThree, .-drawDoorThree
	.align	2
	.global	initDoorFour
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoorFour, %function
initDoorFour:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #64
	mov	lr, #440
	mov	ip, #20
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L433
	str	lr, [r3, #48]
	str	ip, [r3, #44]
	str	r0, [r3, #32]
	str	r1, [r3, #24]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L434:
	.align	2
.L433:
	.word	doorFour
	.size	initDoorFour, .-initDoorFour
	.align	2
	.global	updateDoorFour
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoorFour, %function
updateDoorFour:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L439
	ldr	r3, [r2, #40]
	sub	r3, r3, #424
	sub	r3, r3, #1
	cmp	r3, #15
	movhi	r0, #0
	str	lr, [sp, #-4]!
	bhi	.L436
	ldr	r0, [r2, #36]
	cmp	r0, #86
	movgt	r0, #0
	movle	r0, #1
.L436:
	ldr	r3, .L439+4
	ldr	ip, .L439+8
	ldr	r2, .L439+12
	ldr	lr, [ip]
	ldr	r1, [r3, #44]
	ldr	ip, [r2]
	ldr	r2, [r3, #48]
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r0, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L440:
	.align	2
.L439:
	.word	child
	.word	doorFour
	.word	vOff
	.word	hOff
	.size	updateDoorFour, .-updateDoorFour
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
	ldr	r2, .L447
	ldr	r3, [r2]
	push	{r4, r5, r6, lr}
	add	r3, r3, #1
	str	r3, [r2]
	bl	updateChild
	bl	throwCandy
	bl	updateMonsterOne
	bl	updateGhost
	bl	updateEye
	bl	updateBat
	bl	updateCandy
	bl	updateDoor
	ldr	r1, .L447+4
	ldr	r5, .L447+8
	ldr	r4, .L447+12
	add	ip, r1, #44
	ldr	r0, [r5]
	ldr	r6, [r4]
	ldm	ip, {ip, lr}
	ldr	r2, .L447+16
	ldr	r3, .L447+20
	sub	lr, lr, r0
	sub	ip, ip, r6
	str	lr, [r1, #40]
	str	ip, [r1, #36]
	ldr	lr, [r2, #48]
	ldr	ip, [r3, #48]
	sub	lr, lr, r0
	sub	ip, ip, r0
	ldr	r1, [r3, #44]
	ldr	r0, [r2, #44]
	sub	r1, r1, r6
	sub	r0, r0, r6
	str	lr, [r2, #40]
	str	ip, [r3, #40]
	str	r0, [r2, #36]
	str	r1, [r3, #36]
	bl	updateDoorTwo
	ldr	r3, .L447+24
	ldr	ip, [r5]
	ldr	r1, [r3, #48]
	ldr	r2, [r3, #44]
	ldr	r0, [r4]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #36]
	bl	updateDoorThree
	bl	updateDoorFour
	ldr	r3, .L447+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L441
	ldr	r3, .L447+32
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L447+36
	streq	r2, [r3]
.L441:
	pop	{r4, r5, r6, lr}
	bx	lr
.L448:
	.align	2
.L447:
	.word	.LANCHOR1
	.word	skull
	.word	hOff
	.word	vOff
	.word	vine
	.word	vineLeft
	.word	gate
	.word	oldButtons
	.word	buttons
	.word	loseFlag
	.size	updateGame, .-updateGame
	.align	2
	.global	drawDoorFour
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoorFour, %function
drawDoorFour:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L452
	ldr	r3, [r1, #40]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [r1, #24]
	ldr	r2, .L452+4
	cmp	r0, #0
	ldrb	r1, [r1, #36]	@ zero_extendqisi2
	strh	r3, [r2, #2]	@ movhi
	movne	r3, #704
	moveq	r3, #512
	strh	r1, [r2]	@ movhi
	strhne	r3, [r2, #4]	@ movhi
	strheq	r3, [r2]	@ movhi
	bx	lr
.L453:
	.align	2
.L452:
	.word	doorFour
	.word	shadowOAM+664
	.size	drawDoorFour, .-drawDoorFour
	.global	starCols
	.global	starRows
	.comm	superSpeed,4,4
	.global	haskey
	.global	monsterKillCount
	.comm	winFlag,4,4
	.comm	moveFlag,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	vOffOne,4,4
	.comm	hOffOne,4,4
	.comm	loseFlag,4,4
	.comm	appleIndex,4,4
	.global	appleRows
	.global	appleCols
	.global	hitTimer
	.global	worldWidth
	.global	worldHeigth
	.global	monsterOneFrameindex
	.global	batFrameIndex
	.global	eyeFrameIndex
	.global	ghostFramesIndex
	.global	monsterOneFrameRight
	.global	monsterOneFrameLeft
	.global	batFrames
	.global	eyeFrames
	.global	ghostFrames
	.global	heartCounter
	.global	starPosition
	.global	starFrameIndex
	.global	starFrames
	.global	skullFrames
	.global	skullFramesIndex
	.comm	gate,64,4
	.comm	Bat,48,4
	.comm	Eye,48,4
	.comm	Ghost,48,4
	.comm	monsterOne,48,4
	.global	childFrameIndex
	.global	childFrame
	.comm	doorFour,64,4
	.comm	doorThree,64,4
	.comm	doorTwo,64,4
	.comm	doorOneCandy,48,4
	.comm	door,48,4
	.comm	child,48,4
	.comm	direction,4,4
	.global	frames
	.comm	count,4,4
	.global	candyPieceCounter
	.global	starCol
	.global	starRow
	.global	starCycle
	.global	vineFrameLeft
	.global	vineFrameIndexLeft
	.global	vineFrameIndex
	.global	vineFrame
	.global	hasBat
	.comm	vineLeft,64,4
	.comm	vine,64,4
	.comm	skull,64,4
	.comm	star,16,4
	.comm	candyPiece,64,4
	.comm	candy,320,4
	.global	starFlag
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hitTimer, %object
	.size	hitTimer, 4
hitTimer:
	.word	80
	.type	heartCounter, %object
	.size	heartCounter, 4
heartCounter:
	.word	3
	.type	candyPieceCounter, %object
	.size	candyPieceCounter, 4
candyPieceCounter:
	.word	3
	.type	monsterOneFrameLeft, %object
	.size	monsterOneFrameLeft, 12
monsterOneFrameLeft:
	.word	6
	.word	8
	.word	10
	.type	monsterOneFrameRight, %object
	.size	monsterOneFrameRight, 12
monsterOneFrameRight:
	.word	12
	.word	14
	.word	16
	.type	ghostFrames, %object
	.size	ghostFrames, 16
ghostFrames:
	.word	18
	.word	20
	.word	22
	.word	24
	.type	eyeFrames, %object
	.size	eyeFrames, 20
eyeFrames:
	.word	8
	.word	10
	.word	12
	.word	14
	.word	8
	.type	batFrames, %object
	.size	batFrames, 12
batFrames:
	.word	12
	.word	14
	.word	16
	.type	childFrame, %object
	.size	childFrame, 8
childFrame:
	.word	0
	.word	2
	.type	worldHeigth, %object
	.size	worldHeigth, 4
worldHeigth:
	.word	256
	.type	vineFrameIndexLeft, %object
	.size	vineFrameIndexLeft, 4
vineFrameIndexLeft:
	.word	3
	.type	vineFrame, %object
	.size	vineFrame, 28
vineFrame:
	.word	14
	.word	16
	.word	18
	.word	20
	.word	18
	.word	16
	.word	14
	.type	vineFrameLeft, %object
	.size	vineFrameLeft, 28
vineFrameLeft:
	.word	22
	.word	24
	.word	26
	.word	28
	.word	26
	.word	24
	.word	22
	.type	starCols, %object
	.size	starCols, 12
starCols:
	.word	50
	.word	25
	.word	100
	.type	starRows, %object
	.size	starRows, 12
starRows:
	.word	11
	.word	11
	.word	25
	.type	appleRows, %object
	.size	appleRows, 24
appleRows:
	.word	101
	.word	67
	.word	100
	.word	10
	.word	12
	.word	13
	.type	appleCols, %object
	.size	appleCols, 24
appleCols:
	.word	12
	.word	67
	.word	135
	.word	74
	.word	196
	.word	201
	.type	worldWidth, %object
	.size	worldWidth, 4
worldWidth:
	.word	512
	.type	starFrames, %object
	.size	starFrames, 44
starFrames:
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	8
	.word	6
	.word	4
	.word	2
	.word	0
	.type	skullFrames, %object
	.size	skullFrames, 44
skullFrames:
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	10
	.word	8
	.word	6
	.word	4
	.word	2
	.type	starCol, %object
	.size	starCol, 12
starCol:
	.word	23
	.word	20
	.word	50
	.type	starRow, %object
	.size	starRow, 12
starRow:
	.word	21
	.word	30
	.word	10
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	frames, %object
	.size	frames, 4
frames:
	.space	4
	.type	hasBat, %object
	.size	hasBat, 4
hasBat:
	.space	4
	.type	haskey, %object
	.size	haskey, 4
haskey:
	.space	4
	.type	monsterOneFrameindex, %object
	.size	monsterOneFrameindex, 4
monsterOneFrameindex:
	.space	4
	.type	ghostFramesIndex, %object
	.size	ghostFramesIndex, 4
ghostFramesIndex:
	.space	4
	.type	eyeFrameIndex, %object
	.size	eyeFrameIndex, 4
eyeFrameIndex:
	.space	4
	.type	batFrameIndex, %object
	.size	batFrameIndex, 4
batFrameIndex:
	.space	4
	.type	childFrameIndex, %object
	.size	childFrameIndex, 4
childFrameIndex:
	.space	4
	.type	vineFrameIndex, %object
	.size	vineFrameIndex, 4
vineFrameIndex:
	.space	4
	.type	monsterKillCount, %object
	.size	monsterKillCount, 4
monsterKillCount:
	.space	4
	.type	starPosition, %object
	.size	starPosition, 4
starPosition:
	.space	4
	.type	starFrameIndex, %object
	.size	starFrameIndex, 4
starFrameIndex:
	.space	4
	.type	skullFramesIndex, %object
	.size	skullFramesIndex, 4
skullFramesIndex:
	.space	4
	.type	starCycle, %object
	.size	starCycle, 4
starCycle:
	.space	4
	.type	starFlag, %object
	.size	starFlag, 4
starFlag:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
