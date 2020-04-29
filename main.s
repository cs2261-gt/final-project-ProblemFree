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
	mov	r1, #23552
	mov	r2, #512
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+32
	ldr	r2, .L4+36
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
	.word	4912
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
	mov	r3, #67108864
	mov	r2, #23552
	mov	r0, #4864
	ldr	ip, .L8
	push	{r4, lr}
	ldr	r1, .L8+4
	strh	ip, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r2, .L8+8
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L8+12
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	24068
	.word	67109120
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
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
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+16
	mov	r3, #4352
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	ip, #23552
	mov	r0, #512
	mov	r1, #1
	ldr	r2, .L12+24
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	palettePal
	.word	100720640
	.word	guideScreenMap
	.word	guideScreenTiles
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
	ldr	r4, .L31
	ldr	r3, [r4]
	ldr	r2, .L31+4
	add	r3, r3, #1
	sub	sp, sp, #12
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L31+8
	mov	r2, #1
	ldr	r1, .L31+12
	ldr	r0, .L31+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L31+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
	ldr	r2, .L31+24
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L29
.L15:
	tst	r3, #4
	beq	.L14
	ldr	r3, .L31+24
	ldrh	r3, [r3]
	ands	r5, r3, #4
	beq	.L30
.L14:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L29:
	ldr	r0, [r4]
	ldr	r3, .L31+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L31+32
	ldr	r3, .L31+36
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	str	r5, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	bge	.L16
.L17:
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	blt	.L17
.L16:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToGuide
.L30:
	ldr	r0, [r4]
	ldr	r3, .L31+28
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L31+32
	ldr	r3, .L31+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	str	r5, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	bge	.L16
.L19:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	blt	.L19
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToGuide
.L32:
	.align	2
.L31:
	.word	seed
	.word	waitForVBlank
	.word	playSoundA
	.word	1296288
	.word	startmusic
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
	ldr	r5, .L35
	ldr	r4, .L35+4
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L35+8
	ldr	r1, .L35+12
	mov	lr, pc
	bx	r4
	mov	r3, #192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L35+16
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
	ldr	r2, .L35+20
	ldr	r1, .L35+24
	mov	lr, pc
	bx	r4
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L35+28
	ldr	r1, .L35+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L35+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L35+40
	ldr	r1, .L35+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #23552
	mov	ip, #4864
	mov	r1, #2
	ldr	lr, .L35+52
	ldr	r2, .L35+56
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	str	r1, [r2]
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	ldr	r4, .L44+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L44+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L44+12
	mov	r2, #1
	ldr	r1, .L44+16
	ldr	r0, .L44+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L37
	ldr	r3, .L44+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L43
.L37:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToCharCreation
.L45:
	.align	2
.L44:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	playSoundA
	.word	1296288
	.word	startmusic
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
	ldr	r3, .L48
	push	{r4, r5, r6, lr}
	ldr	r5, .L48+4
	ldr	r0, [r3]
	ldr	r3, .L48+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L48+12
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	lr, pc
	bx	r4
	mov	r3, #672
	mov	r0, #3
	ldr	r2, .L48+24
	ldr	r1, .L48+28
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L48+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L48+36
	ldr	r1, .L48+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #3
	ldr	r4, .L48+48
	ldr	r0, .L48+52
	ldr	r2, .L48+56
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L57
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r0, #104
	ldr	r3, .L57+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L57+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L57+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L57+20
	mov	r2, #1
	ldr	r1, .L57+24
	ldr	r0, .L57+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L51
	ldr	r3, .L57+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L56
.L51:
	pop	{r4, lr}
	b	goToGame
.L56:
	ldr	r3, .L57+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L58:
	.align	2
.L57:
	.word	updatePlayer
	.word	drawPlayer
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	playSoundA
	.word	1296288
	.word	startmusic
	.word	oldButtons
	.word	buttons
	.word	stopSound
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
	ldr	r4, .L61
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L61+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L61+8
	ldr	r1, .L61+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L61+16
	mov	r3, #688
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L61+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L61+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r3, .L70
	ldr	r4, .L70+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L70+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L70+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+20
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r3, .L70+24
	ldr	r1, .L70+28
	ldr	r0, .L70+32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	ldr	r3, .L70+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	ldr	r3, .L70+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L71:
	.align	2
.L70:
	.word	updateGame
	.word	.LANCHOR0
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	playSoundA
	.word	2294208
	.word	backgroundmusic
	.word	oldButtons
	.word	buttons
	.word	pauseSound
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
	ldr	r3, .L84
	mov	lr, pc
	bx	r3
	ldr	r4, .L84+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L84+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+12
	mov	r2, #0
	ldr	r1, .L84+16
	ldr	r0, .L84+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L73
	ldr	r2, .L84+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L82
.L73:
	tst	r3, #4
	beq	.L72
	ldr	r3, .L84+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L83
.L72:
	pop	{r4, lr}
	bx	lr
.L82:
	ldr	r3, .L84+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L83:
	ldr	r3, .L84+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L85:
	.align	2
.L84:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	playSoundB
	.word	81792
	.word	pausesound
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	stopSound
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
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+4
	ldr	r5, .L88+8
	ldr	r0, [r3]
	ldr	r3, .L88+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+16
	mov	r1, r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L88+20
	ldr	r1, .L88+24
	mov	lr, pc
	bx	r4
	mov	r3, #576
	mov	r0, #3
	ldr	r2, .L88+28
	ldr	r1, .L88+32
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L88+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L88+40
	ldr	r1, .L88+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #5888
	mov	ip, #23552
	mov	r1, #5
	ldr	r4, .L88+52
	ldr	r0, .L88+56
	ldr	r2, .L88+60
	strh	r4, [r3, #8]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r3, #12]	@ movhi
	str	r1, [r2]
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r3, .L94
	ldr	r4, .L94+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L94+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L94+16
	mov	lr, pc
	bx	r2
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L94+20
	mov	lr, pc
	bx	r5
	mov	r1, #67108864
	ldr	r3, .L94+24
	ldr	r2, [r3, #8]
	ldrh	r3, [r4]
	sub	r2, r2, #16
	cmp	r2, #4
	lsr	r3, r3, #1
	strh	r3, [r1, #24]	@ movhi
	mov	r2, #1
	ldrls	r1, .L94+28
	ldrls	r0, .L94+32
	ldrhi	r1, .L94+36
	ldrhi	r0, .L94+40
	ldr	r3, .L94+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	updateCombat
	.word	.LANCHOR0
	.word	drawCombat
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	enemyChar
	.word	2389824
	.word	bossmusic
	.word	2294208
	.word	backgroundmusic
	.word	playSoundA
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
	ldr	r4, .L98
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L98+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L98+8
	ldr	r1, .L98+12
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L98+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L98+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L98+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L112+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L112+16
	mov	r2, #0
	ldr	r1, .L112+20
	ldr	r0, .L112+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r2, .L112+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L110
.L101:
	tst	r3, #4
	beq	.L100
	ldr	r3, .L112+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L111
.L100:
	pop	{r4, lr}
	bx	lr
.L110:
	ldr	r3, .L112+36
	mov	lr, pc
	bx	r3
	ldr	r0, .L112+40
	pop	{r4, lr}
	b	goToCombat
.L111:
	ldr	r3, .L112+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L113:
	.align	2
.L112:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	playSoundB
	.word	81792
	.word	pausesound
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	enemyChar
	.word	stopSound
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
	ldr	r4, .L116
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L116+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L116+8
	ldr	r1, .L116+12
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L116+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L116+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L116+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L125
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+8
	mov	r2, #0
	ldr	r1, .L125+12
	ldr	r0, .L125+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L118
	ldr	r3, .L125+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L124
.L118:
	pop	{r4, lr}
	bx	lr
.L124:
	pop	{r4, lr}
	b	goToStart
.L126:
	.align	2
.L125:
	.word	hideSprites
	.word	waitForVBlank
	.word	playSoundB
	.word	51264
	.word	winsound
	.word	oldButtons
	.word	buttons
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
	mov	r3, #256
	ldr	r4, .L129
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L129+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+8
	ldr	r1, .L129+12
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L129+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L129+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L129+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L130:
	.align	2
.L129:
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
	push	{r4, lr}
	ldr	r3, .L138
	mov	lr, pc
	bx	r3
	ldr	r4, .L138+4
	ldr	r3, .L138+8
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L138+12
	mov	r2, #1
	ldr	r1, .L138+16
	ldr	r0, .L138+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L138+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L132
	ldr	r3, .L138+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L137
.L132:
	pop	{r4, lr}
	b	goToStart
.L137:
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	b	goToStart
.L139:
	.align	2
.L138:
	.word	hideSprites
	.word	stopSound
	.word	waitForVBlank
	.word	playSoundA
	.word	1598688
	.word	losemusic
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
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
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	ldr	r6, .L156+4
	ldr	r7, .L156+8
	ldr	r5, .L156+12
	ldr	fp, .L156+16
	ldr	r10, .L156+20
	ldr	r9, .L156+24
	ldr	r8, .L156+28
	ldr	r4, .L156+32
.L141:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L142:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L142
.L144:
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L146
	.word	.L145
	.word	.L143
.L143:
	ldr	r3, .L156+36
	mov	lr, pc
	bx	r3
	b	.L141
.L145:
	ldr	r3, .L156+40
	mov	lr, pc
	bx	r3
	b	.L141
.L146:
	ldr	r3, .L156+44
	mov	lr, pc
	bx	r3
	b	.L141
.L147:
	ldr	r3, .L156+48
	mov	lr, pc
	bx	r3
	b	.L141
.L148:
	ldr	r3, .L156+52
	mov	lr, pc
	bx	r3
	b	.L141
.L149:
	mov	lr, pc
	bx	r8
	b	.L141
.L150:
	mov	lr, pc
	bx	r9
	b	.L141
.L151:
	mov	lr, pc
	bx	r10
	b	.L141
.L152:
	mov	lr, pc
	bx	fp
	b	.L141
.L157:
	.align	2
.L156:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	guide
	.word	charCreation
	.word	game
	.word	67109120
	.word	lose
	.word	win
	.word	combatPause
	.word	combat
	.word	pause
	.size	main, .-main
	.comm	buffer,41,4
	.comm	seed,4,4
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 2
hOff:
	.space	2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
