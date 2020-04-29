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
	mov	r3, #67108864
	mov	r1, #23552
	mov	r2, #512
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	lr, .L4+32
	ldr	ip, .L4+36
	ldr	r4, .L4+40
	mov	r2, #1
	ldr	r1, .L4+44
	ldr	r0, .L4+48
	str	r3, [lr]
	str	r3, [ip]
	mov	lr, pc
	bx	r4
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
	.word	playSoundA
	.word	1296288
	.word	startmusic
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
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	ip, #23552
	mov	r0, #512
	mov	r1, #1
	ldr	r2, .L12+28
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
	.word	4368
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
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
	ldr	r2, .L31+12
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L29
.L15:
	tst	r3, #4
	beq	.L14
	ldr	r3, .L31+12
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
	ldr	r3, .L31+16
	mov	lr, pc
	bx	r3
	ldr	r2, .L31+20
	ldr	r3, .L31+24
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
	ldr	r3, .L31+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L31+20
	ldr	r3, .L31+24
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
	mov	r3, #768
	mov	r0, #3
	ldr	r2, .L35+16
	ldr	r1, .L35+20
	mov	lr, pc
	bx	r4
	mov	r1, r5
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L35+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L35+28
	ldr	r1, .L35+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+36
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r0, #23552
	mov	ip, #4864
	mov	r1, #2
	ldr	lr, .L35+40
	ldr	r2, .L35+44
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
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L37
	ldr	r3, .L44+16
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L50
	ldr	r3, .L50+4
	ldr	r0, [r5]
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L50+16
	ldr	r1, .L50+20
	mov	lr, pc
	bx	r4
	mov	r3, #672
	mov	r0, #3
	ldr	r2, .L50+24
	ldr	r1, .L50+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L50+32
	ldr	r1, .L50+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L50+36
	ldr	r1, .L50+40
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #23552
	mov	r0, #5888
	ldr	ip, .L50+48
	ldr	r2, .L50+52
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L49
.L47:
	mov	r2, #3
	ldr	r3, .L50+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L49:
	mov	r2, #1
	ldr	r1, .L50+60
	ldr	r0, .L50+64
	ldr	r3, .L50+68
	mov	lr, pc
	bx	r3
	b	.L47
.L51:
	.align	2
.L50:
	.word	currRoom
	.word	loadRoomData
	.word	DMANow
	.word	palettePal
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
	.word	2294208
	.word	backgroundmusic
	.word	playSoundA
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
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r0, #104
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L59+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L59+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r3, .L59+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
.L52:
	pop	{r4, lr}
	bx	lr
.L58:
	ldr	r3, .L59+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L60:
	.align	2
.L59:
	.word	updatePlayer
	.word	drawPlayer
	.word	drawPlayerName
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	ldr	r4, .L63
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L63+8
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L63+16
	mov	r3, #688
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L63+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L63+28
	ldr	r1, .L63+32
	ldr	r0, .L63+36
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L63+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	playSoundB
	.word	81792
	.word	pausesound
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
	ldr	r3, .L72
	ldr	r4, .L72+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L72+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L72+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L72+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	ldr	r3, .L72+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
	ldr	r3, .L72+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L71
.L65:
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	ldr	r3, .L72+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L73:
	.align	2
.L72:
	.word	updateGame
	.word	.LANCHOR0
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	pauseSoundA
	.word	unpauseSoundB
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
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	ldr	r4, .L86+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L86+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L86+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L86+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L84
.L75:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L86+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L85
.L74:
	pop	{r4, lr}
	bx	lr
.L84:
	ldr	r3, .L86+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L85:
	ldr	r3, .L86+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L87:
	.align	2
.L86:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	unpauseSoundA
	.word	pauseSoundB
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
	ldr	r5, .L92
	ldr	r3, .L92+4
	mov	lr, pc
	bx	r3
	ldr	r0, [r5]
	ldr	r3, .L92+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L92+20
	ldr	r1, .L92+24
	mov	lr, pc
	bx	r4
	mov	r3, #576
	mov	r0, #3
	ldr	r2, .L92+28
	ldr	r1, .L92+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L92+36
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L92+40
	ldr	r1, .L92+44
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+48
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #23552
	mov	r0, #5888
	ldr	ip, .L92+52
	ldr	r2, .L92+56
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r5]
	cmp	r3, #11
	beq	.L91
.L89:
	mov	r2, #5
	ldr	r3, .L92+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L91:
	mov	r2, #1
	ldr	r1, .L92+64
	ldr	r0, .L92+68
	ldr	r3, .L92+72
	mov	lr, pc
	bx	r3
	b	.L89
.L93:
	.align	2
.L92:
	.word	currRoom
	.word	initCombat
	.word	loadRoomData
	.word	DMANow
	.word	palettePal
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
	.word	2389824
	.word	bossmusic
	.word	playSoundA
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
	ldr	r3, .L96
	ldr	r4, .L96+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	ldr	r2, .L96+12
	add	r3, r3, #1
	strh	r3, [r4]	@ movhi
	ldr	r5, .L96+16
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L96+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldrh	r3, [r4]
	lsr	r3, r3, #1
	strh	r3, [r2, #24]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	.align	2
.L96:
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
	ldr	r4, .L100
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L100+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L100+8
	ldr	r1, .L100+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #688
	mov	r2, #100663296
	ldr	r1, .L100+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r3, .L100+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L100+24
	ldr	r1, .L100+28
	ldr	r0, .L100+32
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L100+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L101:
	.align	2
.L100:
	.word	DMANow
	.word	pausePal
	.word	100720640
	.word	pauseMap
	.word	pauseTiles
	.word	waitForVBlank
	.word	playSoundB
	.word	81792
	.word	pausesound
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
	ldr	r3, .L114
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L114+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L114+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L114+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L103
	ldr	r2, .L114+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L112
.L103:
	tst	r3, #4
	beq	.L102
	ldr	r3, .L114+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L113
.L102:
	pop	{r4, lr}
	bx	lr
.L112:
	ldr	r3, .L114+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L114+28
	mov	lr, pc
	bx	r3
	ldr	r0, .L114+32
	pop	{r4, lr}
	b	goToCombat
.L113:
	ldr	r3, .L114+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L115:
	.align	2
.L114:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	unpauseSoundA
	.word	pauseSoundB
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
	ldr	r4, .L118
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L118+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L118+8
	ldr	r1, .L118+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #608
	mov	r2, #100663296
	ldr	r1, .L118+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L118+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L118+24
	ldr	r1, .L118+28
	ldr	r0, .L118+32
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L118+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L119:
	.align	2
.L118:
	.word	DMANow
	.word	winPal
	.word	100720640
	.word	winMap
	.word	winTiles
	.word	waitForVBlank
	.word	playSoundB
	.word	51264
	.word	winsound
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
	ldr	r3, .L127
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L127+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
	ldr	r3, .L127+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L126
.L120:
	pop	{r4, lr}
	bx	lr
.L126:
	pop	{r4, lr}
	b	goToStart
.L128:
	.align	2
.L127:
	.word	hideSprites
	.word	waitForVBlank
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
	ldr	r4, .L131
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L131+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L131+8
	ldr	r1, .L131+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #512
	mov	r2, #100663296
	ldr	r1, .L131+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L131+20
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L131+24
	ldr	r1, .L131+28
	ldr	r0, .L131+32
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L131+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L132:
	.align	2
.L131:
	.word	DMANow
	.word	losePal
	.word	100720640
	.word	loseMap
	.word	loseTiles
	.word	waitForVBlank
	.word	playSoundA
	.word	1598688
	.word	losemusic
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
	ldr	r3, .L140+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L139
.L133:
	pop	{r4, lr}
	bx	lr
.L139:
	ldr	r3, .L140+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L141:
	.align	2
.L140:
	.word	hideSprites
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSound
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
	ldr	r3, .L158
	mov	lr, pc
	bx	r3
	ldr	r6, .L158+4
	ldr	r7, .L158+8
	ldr	r5, .L158+12
	ldr	fp, .L158+16
	ldr	r10, .L158+20
	ldr	r9, .L158+24
	ldr	r8, .L158+28
	ldr	r4, .L158+32
.L143:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L144:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L144
.L146:
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L145
.L145:
	ldr	r3, .L158+36
	mov	lr, pc
	bx	r3
	b	.L143
.L147:
	ldr	r3, .L158+40
	mov	lr, pc
	bx	r3
	b	.L143
.L148:
	ldr	r3, .L158+44
	mov	lr, pc
	bx	r3
	b	.L143
.L149:
	ldr	r3, .L158+48
	mov	lr, pc
	bx	r3
	b	.L143
.L150:
	ldr	r3, .L158+52
	mov	lr, pc
	bx	r3
	b	.L143
.L151:
	mov	lr, pc
	bx	r8
	b	.L143
.L152:
	mov	lr, pc
	bx	r9
	b	.L143
.L153:
	mov	lr, pc
	bx	r10
	b	.L143
.L154:
	mov	lr, pc
	bx	fp
	b	.L143
.L159:
	.align	2
.L158:
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
