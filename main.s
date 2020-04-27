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
	.global	goToGuide
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGuide, %function
goToGuide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L11
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L11+8
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L11+16
	mov	r3, #192
	mov	lr, pc
	bx	r4
	ldr	r3, .L11+20
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	ip, #23552
	mov	r0, #4864
	mov	r1, #1
	ldr	r2, .L11+24
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L12:
	.align	2
.L11:
	.word	DMANow
	.word	palettePal
	.word	100720640
	.word	charcreatebgMap
	.word	charcreatebgTiles
	.word	hideSprites
	.word	state
	.size	goToGuide, .-goToGuide
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
	ldr	r4, .L30
	ldr	r3, [r4]
	ldr	r2, .L30+4
	add	r3, r3, #1
	sub	sp, sp, #12
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L30+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r2, .L30+12
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L28
.L14:
	tst	r3, #4
	beq	.L13
	ldr	r3, .L30+12
	ldrh	r3, [r3]
	ands	r5, r3, #4
	beq	.L29
.L13:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L28:
	ldr	r0, [r4]
	ldr	r3, .L30+16
	mov	lr, pc
	bx	r3
	ldr	r2, .L30+20
	ldr	r3, .L30+24
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	str	r5, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	bge	.L15
.L16:
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	blt	.L16
.L15:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToGuide
.L29:
	ldr	r0, [r4]
	ldr	r3, .L30+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L30+20
	ldr	r3, .L30+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	str	r5, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	bge	.L15
.L18:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	blt	.L18
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToGuide
.L31:
	.align	2
.L30:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	goblinMode
	.word	init
	.size	start, .-start
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
	ldr	r5, .L34
	ldr	r4, .L34+4
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L34+8
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r4
	mov	r3, #192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+16
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
	ldr	r2, .L34+20
	ldr	r1, .L34+24
	mov	lr, pc
	bx	r4
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L34+28
	ldr	r1, .L34+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L34+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L34+40
	ldr	r1, .L34+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #23552
	mov	ip, #4864
	mov	r1, #2
	ldr	lr, .L34+52
	ldr	r2, .L34+56
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	bx	lr
.L35:
	.align	2
.L34:
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
	.global	guide
	.syntax unified
	.arm
	.fpu softvfp
	.type	guide, %function
guide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L43
	mov	lr, pc
	bx	r3
	ldr	r4, .L43+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L43+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L36
	ldr	r3, .L43+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
.L36:
	pop	{r4, lr}
	bx	lr
.L42:
	pop	{r4, lr}
	b	goToCharCreation
.L44:
	.align	2
.L43:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	guide, .-guide
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
	ldr	r3, .L47
	push	{r4, r5, r6, lr}
	ldr	r5, .L47+4
	ldr	r0, [r3]
	ldr	r3, .L47+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L47+12
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+16
	ldr	r1, .L47+20
	mov	lr, pc
	bx	r4
	mov	r3, #672
	mov	r0, #3
	ldr	r2, .L47+24
	ldr	r1, .L47+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L47+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L47+36
	ldr	r1, .L47+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #3
	ldr	r4, .L47+48
	ldr	r0, .L47+52
	ldr	r2, .L47+56
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r0, #104
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L56+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L49
	ldr	r3, .L56+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
.L49:
	pop	{r4, lr}
	bx	lr
.L55:
	pop	{r4, lr}
	b	goToGame
.L57:
	.align	2
.L56:
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
	ldr	r4, .L60
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L60+8
	ldr	r1, .L60+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L60+16
	mov	r3, #752
	mov	lr, pc
	bx	r4
	ldr	r3, .L60+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L60+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L60+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L69
	ldr	r4, .L69+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L69+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L69+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	ldr	r3, .L69+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L62
	ldr	r3, .L69+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L68
.L62:
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L70:
	.align	2
.L69:
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
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r4, .L83+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L83+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L83+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L72
	ldr	r2, .L83+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L81
.L72:
	tst	r3, #4
	beq	.L71
	ldr	r3, .L83+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L82
.L71:
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToGame
.L82:
	pop	{r4, lr}
	b	goToStart
.L84:
	.align	2
.L83:
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
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	ldr	r5, .L87+8
	ldr	r0, [r3]
	ldr	r3, .L87+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+16
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L87+20
	ldr	r1, .L87+24
	mov	lr, pc
	bx	r4
	mov	r3, #576
	mov	r0, #3
	ldr	r2, .L87+28
	ldr	r1, .L87+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L87+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L87+40
	ldr	r1, .L87+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #5
	ldr	r4, .L87+52
	ldr	r0, .L87+56
	ldr	r2, .L87+60
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L91
	ldr	r4, .L91+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L91+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L91+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L91+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r4, .L95
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L95+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L95+8
	ldr	r1, .L95+12
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L95+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L95+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r3, .L109
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L109+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L109+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L109+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
	ldr	r2, .L109+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L107
.L98:
	tst	r3, #4
	beq	.L97
	ldr	r3, .L109+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L108
.L97:
	pop	{r4, lr}
	bx	lr
.L107:
	ldr	r0, .L109+24
	pop	{r4, lr}
	b	goToCombat
.L108:
	pop	{r4, lr}
	b	goToStart
.L110:
	.align	2
.L109:
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
	ldr	r4, .L113
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L113+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L113+8
	ldr	r1, .L113+12
	mov	lr, pc
	bx	r4
	mov	r3, #656
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L113+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L113+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L113+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r3, .L122
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L115
	ldr	r3, .L122+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L121
.L115:
	pop	{r4, lr}
	bx	lr
.L121:
	pop	{r4, lr}
	b	goToStart
.L123:
	.align	2
.L122:
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
	ldr	r1, .L139
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L139+4
	strh	r2, [r3, #10]	@ movhi
	ldr	r8, .L139+8
	ldrh	r2, [r4, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L139+12
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L139+16
	ldr	r5, .L139+20
	ldr	fp, .L139+24
	ldr	r10, .L139+28
	ldr	r9, .L139+32
	ldr	r7, .L139+36
.L125:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L126:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L126
.L128:
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L127
	.word	.L127
.L127:
	mov	lr, pc
	bx	r7
	b	.L125
.L129:
	ldr	r3, .L139+40
	mov	lr, pc
	bx	r3
	b	.L125
.L130:
	ldr	r3, .L139+44
	mov	lr, pc
	bx	r3
	b	.L125
.L131:
	ldr	r3, .L139+48
	mov	lr, pc
	bx	r3
	b	.L125
.L132:
	ldr	r3, .L139+52
	mov	lr, pc
	bx	r3
	b	.L125
.L133:
	mov	lr, pc
	bx	r9
	b	.L125
.L134:
	mov	lr, pc
	bx	r10
	b	.L125
.L135:
	mov	lr, pc
	bx	fp
	b	.L125
.L140:
	.align	2
.L139:
	.word	24068
	.word	67109120
	.word	buttons
	.word	goToStart
	.word	state
	.word	oldButtons
	.word	start
	.word	guide
	.word	charCreation
	.word	win
	.word	combatPause
	.word	combat
	.word	pause
	.word	game
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
	ldr	r4, .L143
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L143+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L143+8
	ldr	r1, .L143+12
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L143+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L143+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L143+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L144:
	.align	2
.L143:
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
