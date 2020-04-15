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
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L4+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
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
	.word	9616
	.word	hideSprites
	.word	waitForVBlank
	.word	flipPage
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
	push	{r4, lr}
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #4864
	mov	r2, #1
	ldr	r3, .L11+4
	strh	r0, [r1]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	hideSprites
	.word	state
	.size	goToCharCreation, .-goToCharCreation
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
	ldr	r2, .L15
	push	{r4, lr}
	ldr	r0, [r2]
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #4608
	mov	r2, #2
	ldr	r3, .L15+12
	strh	r0, [r1]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	currRoom
	.word	loadRoomData
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
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
	ldr	r4, .L24
	ldr	r3, [r4]
	ldr	r2, .L24+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L24+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L17
	ldr	r3, .L24+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L23
.L17:
	pop	{r4, lr}
	bx	lr
.L23:
	ldr	r0, [r4]
	ldr	r3, .L24+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L25:
	.align	2
.L24:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	init
	.size	start, .-start
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L33+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L33+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L33+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L26
	ldr	r3, .L33+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L32
.L26:
	pop	{r4, lr}
	bx	lr
.L32:
	pop	{r4, lr}
	b	goToGame
.L34:
	.align	2
.L33:
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r4, .L37
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L37+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+8
	ldr	r1, .L37+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L37+16
	mov	r3, #752
	mov	lr, pc
	bx	r4
	ldr	r3, .L37+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L37+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+28
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L37+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	flipPage
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
	push	{r4, lr}
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L46+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L39
	ldr	r3, .L46+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
.L39:
	pop	{r4, lr}
	bx	lr
.L45:
	pop	{r4, lr}
	b	goToPause
.L47:
	.align	2
.L46:
	.word	updateGame
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r3, .L60
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L49
	ldr	r2, .L60+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L58
.L49:
	tst	r3, #4
	beq	.L48
	ldr	r3, .L60+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L59
.L48:
	pop	{r4, lr}
	bx	lr
.L58:
	pop	{r4, lr}
	b	goToGame
.L59:
	pop	{r4, lr}
	b	goToStart
.L61:
	.align	2
.L60:
	.word	waitForVBlank
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	str	r0, [sp, #4]
	ldr	r3, .L64
	add	r0, sp, #4
	mov	lr, pc
	bx	r3
	ldr	r2, .L64+4
	ldr	r3, .L64+8
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+12
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #4608
	mov	r2, #4
	ldr	r3, .L64+16
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	initCombat
	.word	currRoom
	.word	loadRoomData
	.word	hideSprites
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
	push	{r4, lr}
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	updateCombat
	.word	drawCombat
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
	ldr	r4, .L72
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L72+8
	ldr	r1, .L72+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L72+16
	mov	r3, #752
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L72+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+28
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L72+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r3, .L86
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L86+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L84
.L75:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L86+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L85
.L74:
	pop	{r4, lr}
	bx	lr
.L84:
	ldr	r0, .L86+12
	pop	{r4, lr}
	b	goToCombat
.L85:
	pop	{r4, lr}
	b	goToStart
.L87:
	.align	2
.L86:
	.word	waitForVBlank
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
	ldr	r4, .L90
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L90+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L90+8
	ldr	r1, .L90+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L90+16
	mov	r3, #656
	mov	lr, pc
	bx	r4
	ldr	r3, .L90+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L90+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+28
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L90+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	DMANow
	.word	winPal
	.word	100720640
	.word	winMap
	.word	winTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r3, .L99
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
	ldr	r3, .L99+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
.L92:
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToStart
.L100:
	.align	2
.L99:
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
	ldr	r1, .L115
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L115+4
	strh	r2, [r3, #10]	@ movhi
	ldr	r8, .L115+8
	ldrh	r2, [r4, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L115+12
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L115+16
	ldr	r5, .L115+20
	ldr	fp, .L115+24
	ldr	r10, .L115+28
	ldr	r9, .L115+32
	ldr	r7, .L115+36
.L102:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L103:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L103
.L105:
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L104
	.word	.L104
.L104:
	mov	lr, pc
	bx	r7
	b	.L102
.L106:
	ldr	r3, .L115+40
	mov	lr, pc
	bx	r3
	b	.L102
.L107:
	ldr	r3, .L115+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+48
	mov	lr, pc
	bx	r3
	b	.L102
.L108:
	ldr	r3, .L115+52
	mov	lr, pc
	bx	r3
	b	.L102
.L109:
	mov	lr, pc
	bx	r9
	b	.L102
.L110:
	mov	lr, pc
	bx	r10
	b	.L102
.L111:
	mov	lr, pc
	bx	fp
	b	.L102
.L116:
	.align	2
.L115:
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
	.word	updateCombat
	.word	drawCombat
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
	ldr	r4, .L119
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L119+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+8
	ldr	r1, .L119+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L119+16
	mov	r3, #688
	mov	lr, pc
	bx	r4
	ldr	r3, .L119+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L119+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+28
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L119+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	DMANow
	.word	losePal
	.word	100720640
	.word	loseMap
	.word	loseTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	flipPage
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
