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
	.global	init
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r2, .L4
	sub	sp, sp, #20
	ldr	r0, [r2]
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L4+8
	ldr	r3, .L4+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	ip, sp
	ldr	r3, .L4+28
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r2, .L4+32
	ldrh	r1, [sp]
	strh	r3, [ip]	@ movhi
	strh	r1, [r2, #242]	@ movhi
	ldrh	r3, [sp, #2]
	strh	r3, [r2, #244]	@ movhi
	ldrh	r3, [sp, #4]
	strh	r3, [r2, #246]	@ movhi
	ldrh	r3, [sp, #6]
	strh	r3, [r2, #248]	@ movhi
	ldrh	r3, [sp, #8]
	strh	r3, [r2, #250]	@ movhi
	ldrh	r3, [sp, #10]
	strh	r3, [r2, #252]	@ movhi
	ldrh	r3, [sp, #12]
	strh	r3, [r2, #254]	@ movhi
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	seed
	.word	srand
	.word	currRoom
	.word	initItems
	.word	initPlayer
	.word	initEnemies
	.word	initDungeon
	.word	.LANCHOR0
	.word	83886336
	.size	init, .-init
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
	push	{r4, r5, lr}
	ldr	r5, .L31
	ldr	r2, [r5]
	ldr	r4, .L31+4
	add	r1, r2, r2, lsl #1
	add	r1, r1, r1, lsl #5
	add	r1, r4, r1, lsl #3
	ldr	r3, [r1, #4]
	cmp	r3, #2
	sub	sp, sp, #716
	beq	.L29
	bic	r0, r3, #2
	cmp	r3, #6
	cmpne	r0, #1
	bne	.L9
	add	r4, r1, #48
	mov	r2, #712
	ldr	r3, .L31+8
	add	r1, r1, #64
	mov	r0, sp
	mov	lr, pc
	bx	r3
	ldm	r4, {r0, r1, r2, r3}
	ldr	r4, .L31+12
	mov	lr, pc
	bx	r4
.L6:
	add	sp, sp, #716
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L9:
	ldr	r3, .L31+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L10
	ldr	r1, .L31+20
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L10
	ldr	r2, .L31+24
	ldr	r3, [r2]
	ldr	r1, .L31+28
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	b	.L6
.L10:
	tst	r3, #16
	beq	.L11
	ldr	r1, .L31+20
	ldrh	r1, [r1]
	lsr	r1, r1, #4
	eor	r1, r1, #1
	cmp	r2, #11
	movgt	r1, #0
	andle	r1, r1, #1
	cmp	r1, #0
	bne	.L30
.L11:
	tst	r3, #32
	beq	.L6
	ldr	r3, .L31+20
	ldrh	r3, [r3]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	beq	.L6
	ldr	r1, .L31+24
	ldr	r3, [r1]
	sub	r2, r2, #1
.L28:
	add	r3, r3, #1
	ldr	r0, .L31+32
	str	r2, [r5]
	str	r3, [r1]
	mov	lr, pc
	bx	r0
	b	.L6
.L29:
	ldr	r3, .L31+36
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r4, r4, r3, lsl #3
	str	r2, [r4, #4]
	add	sp, sp, #716
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L30:
	ldr	r1, .L31+24
	add	r2, r2, #1
	ldr	r3, [r1]
	b	.L28
.L32:
	.align	2
.L31:
	.word	currRoom
	.word	dungeon
	.word	memcpy
	.word	goToCombat
	.word	oldButtons
	.word	buttons
	.word	turnCount
	.word	checkSearch
	.word	goToGame
	.word	checkTrap
	.size	updateGame, .-updateGame
	.comm	turnCount,4,4
	.comm	currRoom,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	0
	.short	31744
	.short	992
	.short	1023
	.short	31
	.short	32767
	.short	15855
	.ident	"GCC: (devkitARM release 53) 9.1.0"
