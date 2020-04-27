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
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+8
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r3, #192
	mov	r2, #100663296
	mov	r0, #3
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
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L11+28
	ldr	r1, .L11+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L11+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L11+40
	ldr	r1, .L11+44
	mov	r3, #16384
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
	.word	100720640
	.word	charcreatebgMap
	.word	charcreatebgTiles
	.word	100724736
	.word	charcreateinstructionsMap
	.word	100679680
	.word	charcreateinstructionsTiles
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	24068
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L23
	ldr	r3, [r4]
	ldr	r2, .L23+4
	add	r3, r3, #1
	sub	sp, sp, #12
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L13
	ldr	r3, .L23+12
	ldrh	r3, [r3]
	ands	r5, r3, #8
	beq	.L22
.L13:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L22:
	ldr	r0, [r4]
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+20
	mov	lr, pc
	bx	r3
	str	r5, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	bge	.L15
.L16:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	blt	.L16
.L15:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToCharCreation
.L24:
	.align	2
.L23:
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
	ldr	r3, .L27
	push	{r4, r5, r6, lr}
	ldr	r5, .L27+4
	ldr	r0, [r3]
	ldr	r3, .L27+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L27+12
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L27+16
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r4
	mov	r3, #672
	mov	r0, #3
	ldr	r2, .L27+24
	ldr	r1, .L27+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L27+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L27+36
	ldr	r1, .L27+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #2
	ldr	r4, .L27+48
	ldr	r0, .L27+52
	ldr	r2, .L27+56
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L28:
	.align	2
.L27:
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
	.word	24068
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
	push	{r4, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r0, #104
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L29
	ldr	r3, .L36+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L35
.L29:
	pop	{r4, lr}
	bx	lr
.L35:
	pop	{r4, lr}
	b	goToGame
.L37:
	.align	2
.L36:
	.word	updatePlayer
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L40
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L40+8
	ldr	r1, .L40+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+16
	mov	r3, #752
	mov	lr, pc
	bx	r4
	ldr	r3, .L40+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L40+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L40+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L49
	ldr	r4, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L49+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L49+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	ldr	r3, .L49+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
	ldr	r3, .L49+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L48
.L42:
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L50:
	.align	2
.L49:
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
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L63+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L61
.L52:
	tst	r3, #4
	beq	.L51
	ldr	r3, .L63+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L62
.L51:
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToGame
.L62:
	pop	{r4, lr}
	b	goToStart
.L64:
	.align	2
.L63:
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
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+4
	ldr	r5, .L67+8
	ldr	r0, [r3]
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+16
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	mov	r3, #576
	mov	r0, #3
	ldr	r2, .L67+28
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L67+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L67+40
	ldr	r1, .L67+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #4
	ldr	r4, .L67+52
	ldr	r0, .L67+56
	ldr	r2, .L67+60
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L68:
	.align	2
.L67:
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
	.word	24068
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
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r4, .L75
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L75+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L75+8
	ldr	r1, .L75+12
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L75+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L75+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L75+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L78
	ldr	r2, .L89+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L87
.L78:
	tst	r3, #4
	beq	.L77
	ldr	r3, .L89+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L88
.L77:
	pop	{r4, lr}
	bx	lr
.L87:
	ldr	r0, .L89+24
	pop	{r4, lr}
	b	goToCombat
.L88:
	pop	{r4, lr}
	b	goToStart
.L90:
	.align	2
.L89:
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
	ldr	r4, .L93
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L93+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L93+8
	ldr	r1, .L93+12
	mov	lr, pc
	bx	r4
	mov	r3, #656
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L93+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L93+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L93+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
	ldr	r3, .L102+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
.L95:
	pop	{r4, lr}
	bx	lr
.L101:
	pop	{r4, lr}
	b	goToStart
.L103:
	.align	2
.L102:
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
	ldr	r1, .L118
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L118+4
	strh	r2, [r3, #10]	@ movhi
	ldr	r8, .L118+8
	ldrh	r2, [r4, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L118+12
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L118+16
	ldr	r5, .L118+20
	ldr	fp, .L118+24
	ldr	r10, .L118+28
	ldr	r9, .L118+32
	ldr	r7, .L118+36
.L105:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L106:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L106
.L108:
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L107
	.word	.L107
.L107:
	mov	lr, pc
	bx	r7
	b	.L105
.L109:
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	b	.L105
.L110:
	ldr	r3, .L118+44
	mov	lr, pc
	bx	r3
	b	.L105
.L111:
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	b	.L105
.L112:
	mov	lr, pc
	bx	r9
	b	.L105
.L113:
	mov	lr, pc
	bx	r10
	b	.L105
.L114:
	mov	lr, pc
	bx	fp
	b	.L105
.L119:
	.align	2
.L118:
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
	ldr	r4, .L122
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L122+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L122+8
	ldr	r1, .L122+12
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L122+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L122+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L122+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L123:
	.align	2
.L122:
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
