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
	mov	ip, sp
	ldr	r3, .L4+20
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	ldr	r2, .L4+24
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
	.word	initPlayer
	.word	initDungeon
	.word	.LANCHOR0
	.word	83886336
	.size	init, .-init
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
