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
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #512
	ldr	r2, .L4+28
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+36
	ldr	r2, .L4+40
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	100720640
	.word	startMap
	.word	startTiles
	.word	19232
	.word	hideSprites
	.word	23680
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #23552
	mov	r0, #4864
	ldr	ip, .L7
	ldr	r1, .L7+4
	strh	ip, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r2, .L7+8
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	24068
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToCharCreation
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCharCreation, %function
goToCharCreation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L11
	ldr	r4, .L11+4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L11+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L11+12
	ldr	r1, .L11+16
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+20
	ldr	r1, .L11+24
	mov	lr, pc
	bx	r4
	mov	r3, #192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L11+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+32
	ldr	r1, .L11+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L11+40
	ldr	r1, .L11+44
	mov	r3, #768
	mov	lr, pc
	bx	r4
	ldr	r3, .L11+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #23552
	mov	ip, #4864
	mov	r1, #1
	ldr	lr, .L11+52
	ldr	r2, .L11+56
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	palettePal
	.word	DMANow
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	100720640
	.word	charcreatebgMap
	.word	charcreatebgTiles
	.word	100724736
	.word	charcreateinstructionsMap
	.word	100679680
	.word	charcreateinstructionsTiles
	.word	hideSprites
	.word	24196
	.word	state
	.size	goToCharCreation, .-goToCharCreation
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
	push	{r4, lr}
	ldr	r4, .L20
	ldr	r3, [r4]
	ldr	r2, .L20+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L13
	ldr	r3, .L20+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L19
.L13:
	pop	{r4, lr}
	bx	lr
.L19:
	ldr	r0, [r4]
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToCharCreation
.L21:
	.align	2
.L20:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	init
	.size	start, .-start
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
	ldr	r3, .L24
	push	{r4, r5, r6, lr}
	ldr	r5, .L24+4
	ldr	r0, [r3]
	ldr	r3, .L24+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+12
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L24+16
	ldr	r1, .L24+20
	mov	lr, pc
	bx	r4
	mov	r3, #1344
	mov	r0, #3
	ldr	r2, .L24+24
	ldr	r1, .L24+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L24+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L24+36
	ldr	r1, .L24+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #2
	ldr	r4, .L24+48
	ldr	r0, .L24+52
	ldr	r2, .L24+56
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L25:
	.align	2
.L24:
	.word	currRoom
	.word	palettePal
	.word	loadRoomData
	.word	DMANow
	.word	100724736
	.word	gameinstructionsMap
	.word	100679680
	.word	gameinstructionsTiles
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	24196
	.word	24584
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	charCreation
	.syntax unified
	.arm
	.fpu softvfp
	.type	charCreation, %function
charCreation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L58
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L27
	ldr	r2, .L58+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L56
.L27:
	tst	r3, #64
	beq	.L30
	ldr	r2, .L58+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L30
.L55:
	ldr	r3, .L58+8
	ldr	r2, [r3, #4]
	cmp	r2, #0
	moveq	r2, #1
	streq	r2, [r3, #4]
	beq	.L32
	cmp	r2, #1
	moveq	r2, #0
	streq	r2, [r3, #40]
.L32:
	mov	r1, #64
	mov	r0, #104
	ldr	r3, .L58+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L58+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L26
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L57
.L26:
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	tst	r3, #128
	beq	.L32
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L32
	b	.L55
.L56:
	ldr	r1, .L58+8
	ldr	r2, [r1]
	cmp	r2, #2
	moveq	r2, #1
	streq	r2, [r1]
	beq	.L27
	cmp	r2, #1
	moveq	r2, #3
	streq	r2, [r1]
	beq	.L27
	cmp	r2, #3
	moveq	r2, #2
	streq	r2, [r1]
	b	.L27
.L57:
	pop	{r4, r5, r6, lr}
	b	goToGame
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	buttons
	.word	player
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	charCreation, .-charCreation
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
	mov	r3, #256
	ldr	r4, .L62
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L62+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L62+8
	ldr	r1, .L62+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L62+16
	mov	r3, #752
	mov	lr, pc
	bx	r4
	ldr	r3, .L62+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L62+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L62+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r3, .L71
	ldr	r4, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L71+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L71+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L71+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	ldr	r3, .L71+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L64
	ldr	r3, .L71+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
.L64:
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L72:
	.align	2
.L71:
	.word	updateGame
	.word	.LANCHOR0
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	game, .-game
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
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L85+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
	ldr	r2, .L85+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L83
.L74:
	tst	r3, #4
	beq	.L73
	ldr	r3, .L85+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L84
.L73:
	pop	{r4, lr}
	bx	lr
.L83:
	pop	{r4, lr}
	b	goToGame
.L84:
	pop	{r4, lr}
	b	goToStart
.L86:
	.align	2
.L85:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToCombat
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCombat, %function
goToCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	ldr	r5, .L89+8
	ldr	r0, [r3]
	ldr	r3, .L89+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+16
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+20
	ldr	r1, .L89+24
	mov	lr, pc
	bx	r4
	mov	r3, #1152
	mov	r0, #3
	ldr	r2, .L89+28
	ldr	r1, .L89+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L89+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L89+40
	ldr	r1, .L89+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #4
	ldr	r4, .L89+52
	ldr	r0, .L89+56
	ldr	r2, .L89+60
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L90:
	.align	2
.L89:
	.word	initCombat
	.word	currRoom
	.word	palettePal
	.word	loadRoomData
	.word	DMANow
	.word	100724736
	.word	combatinstructionsMap
	.word	100679680
	.word	combatinstructionsTiles
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	24196
	.word	23048
	.word	state
	.size	goToCombat, .-goToCombat
	.align	2
	.global	combat
	.syntax unified
	.arm
	.fpu softvfp
	.type	combat, %function
combat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L93
	ldr	r4, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L93+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L93+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L93+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	updateCombat
	.word	.LANCHOR0
	.word	drawCombat
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	combat, .-combat
	.align	2
	.global	goToCombatPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCombatPause, %function
goToCombatPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L97
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L97+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L97+8
	ldr	r1, .L97+12
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L97+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L97+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L97+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	waitForVBlank
	.word	state
	.size	goToCombatPause, .-goToCombatPause
	.align	2
	.global	combatPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	combatPause, %function
combatPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L111
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L111+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L111+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L111+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L100
	ldr	r2, .L111+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L109
.L100:
	tst	r3, #4
	beq	.L99
	ldr	r3, .L111+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L110
.L99:
	pop	{r4, lr}
	bx	lr
.L109:
	ldr	r0, .L111+24
	pop	{r4, lr}
	b	goToCombat
.L110:
	pop	{r4, lr}
	b	goToStart
.L112:
	.align	2
.L111:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	enemyChar
	.size	combatPause, .-combatPause
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
	mov	r3, #256
	ldr	r4, .L115
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L115+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L115+8
	ldr	r1, .L115+12
	mov	lr, pc
	bx	r4
	mov	r3, #656
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L115+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L115+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L115+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L116:
	.align	2
.L115:
	.word	DMANow
	.word	winPal
	.word	100720640
	.word	winMap
	.word	winTiles
	.word	waitForVBlank
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
	push	{r4, lr}
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L117
	ldr	r3, .L124+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L123
.L117:
	pop	{r4, lr}
	bx	lr
.L123:
	pop	{r4, lr}
	b	goToStart
.L125:
	.align	2
.L124:
	.word	hideSprites
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	mov	r3, #67108864
	mov	r2, #23552
	mov	r0, #4864
	ldr	r1, .L140
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L140+4
	strh	r2, [r3, #10]	@ movhi
	ldr	r8, .L140+8
	ldrh	r2, [r4, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L140+12
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L140+16
	ldr	r5, .L140+20
	ldr	fp, .L140+24
	ldr	r10, .L140+28
	ldr	r9, .L140+32
	ldr	r7, .L140+36
.L127:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L128:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L128
.L130:
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L129
	.word	.L129
.L129:
	mov	lr, pc
	bx	r7
	b	.L127
.L131:
	ldr	r3, .L140+40
	mov	lr, pc
	bx	r3
	b	.L127
.L132:
	ldr	r3, .L140+44
	mov	lr, pc
	bx	r3
	b	.L127
.L133:
	ldr	r3, .L140+48
	mov	lr, pc
	bx	r3
	b	.L127
.L134:
	mov	lr, pc
	bx	r9
	b	.L127
.L135:
	mov	lr, pc
	bx	r10
	b	.L127
.L136:
	mov	lr, pc
	bx	fp
	b	.L127
.L141:
	.align	2
.L140:
	.word	24068
	.word	67109120
	.word	buttons
	.word	goToStart
	.word	state
	.word	oldButtons
	.word	start
	.word	charCreation
	.word	game
	.word	win
	.word	combatPause
	.word	combat
	.word	pause
	.size	main, .-main
	.text
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
	mov	r3, #256
	ldr	r4, .L144
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L144+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L144+8
	ldr	r1, .L144+12
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L144+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L144+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L144+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L145:
	.align	2
.L144:
	.word	DMANow
	.word	losePal
	.word	100720640
	.word	loseMap
	.word	loseTiles
	.word	waitForVBlank
	.word	state
	.size	goToLose, .-goToLose
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
	.comm	buffer,41,4
	.comm	seed,4,4
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 2
hOff:
	.space	2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
