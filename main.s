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
	mov	r1, #256
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
	mov	r0, #4352
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L7
	ldr	r2, .L7+4
	ldrh	r1, [r1, #48]
	strh	r0, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
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
	mov	r0, #4352
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
	mov	r0, #4352
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
	mov	r1, #256
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
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L51
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
	ldr	r2, .L51+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L49
.L40:
	tst	r3, #4
	beq	.L39
	ldr	r3, .L51+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L50
.L39:
	pop	{r4, lr}
	bx	lr
.L49:
	pop	{r4, lr}
	b	goToGame
.L50:
	pop	{r4, lr}
	b	goToStart
.L52:
	.align	2
.L51:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	mov	r3, #256
	ldr	r4, .L55
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+8
	ldr	r1, .L55+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L55+16
	mov	r3, #656
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #256
	ldr	r3, .L55+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+28
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L55+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r5, .L80+4
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L80+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L58
	ldr	r4, .L80+20
	ldrh	r2, [r4]
	tst	r2, #8
	beq	.L78
.L58:
	tst	r3, #16
	beq	.L60
	ldr	r4, .L80+20
	ldrh	r1, [r4]
	tst	r1, #16
	bne	.L61
	ldr	r2, .L80+24
	ldr	r0, [r2]
	cmp	r0, #10
	ble	.L79
	tst	r3, #32
	beq	.L69
.L68:
	tst	r1, #32
	bne	.L63
	ldr	r2, .L80+24
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L63
.L70:
	sub	r3, r3, #1
	str	r3, [r2]
	bl	goToGame
	ldrh	r3, [r5]
	and	r3, r3, #16
	b	.L59
.L60:
	tst	r3, #32
	beq	.L57
	ldr	r4, .L80+20
	ldrh	r3, [r4]
	tst	r3, #32
	bne	.L57
	ldr	r2, .L80+24
	ldr	r3, [r2]
	cmp	r3, #0
	bgt	.L70
.L57:
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	tst	r3, #32
	bne	.L68
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	bl	goToPause
	ldrh	r3, [r5]
	and	r3, r3, #16
.L59:
	cmp	r3, #0
	beq	.L57
.L63:
	ldrh	r3, [r4]
	tst	r3, #16
	bne	.L57
	ldr	r2, .L80+24
.L69:
	ldr	r3, [r2]
	cmp	r3, #11
	bne	.L57
	pop	{r4, r5, r6, lr}
	b	goToWin
.L79:
	add	r0, r0, #1
	str	r0, [r2]
	bl	goToGame
	ldrh	r3, [r5]
	and	r3, r3, #16
	b	.L59
.L81:
	.align	2
.L80:
	.word	waitForVBlank
	.word	oldButtons
	.word	flipPage
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	currRoom
	.size	game, .-game
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
	ldr	r3, .L89
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
	ldr	r3, .L89+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
.L82:
	pop	{r4, lr}
	bx	lr
.L88:
	pop	{r4, lr}
	b	goToStart
.L90:
	.align	2
.L89:
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
	mov	r0, #4352
	push	{r4, r7, fp, lr}
	strh	r2, [r3, #8]	@ movhi
	ldr	r4, .L103
	ldr	r8, .L103+4
	ldrh	r2, [r4, #48]
	strh	r0, [r3]	@ movhi
	ldr	r3, .L103+8
	strh	r2, [r8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L103+12
	ldr	r5, .L103+16
	ldr	fp, .L103+20
	ldr	r10, .L103+24
	ldr	r9, .L103+28
	ldr	r7, .L103+32
.L92:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L93:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L93
.L95:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L94
	.word	.L94
.L94:
	mov	lr, pc
	bx	r7
	b	.L92
.L96:
	ldr	r3, .L103+36
	mov	lr, pc
	bx	r3
	b	.L92
.L97:
	mov	lr, pc
	bx	r9
	b	.L92
.L98:
	mov	lr, pc
	bx	r10
	b	.L92
.L99:
	mov	lr, pc
	bx	fp
	b	.L92
.L104:
	.align	2
.L103:
	.word	67109120
	.word	buttons
	.word	goToStart
	.word	state
	.word	oldButtons
	.word	start
	.word	charCreation
	.word	game
	.word	win
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
	ldr	r4, .L107
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L107+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+8
	ldr	r1, .L107+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L107+16
	mov	r3, #688
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #256
	ldr	r3, .L107+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+28
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L107+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L108:
	.align	2
.L107:
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
