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
	.file	"character.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #20
	mov	fp, #1
	mov	r10, #12
	ldr	r4, .L6
	ldr	lr, .L6+4
	mov	r9, #10
	mov	r8, #8
	mov	r7, #50
	ldmia	r4!, {r0, r1, r2, r3}
	add	r6, lr, #40
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	add	r4, r4, #288
	stm	r6, {r0, r1}
	ldmia	r4!, {r0, r1, r2, r3}
	add	r5, lr, #80
	stmia	r5!, {r0, r1, r2, r3}
	stm	lr, {fp, ip}
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, lr
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	mov	r4, #32
	add	fp, lr, #40
	stm	r5, {r0, r1}
	ldmia	fp!, {r0, r1, r2, r3}
	str	r10, [lr, #16]
	add	r10, lr, #120
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	str	r9, [lr, #28]
	str	r9, [lr, #20]
	str	r8, [lr, #24]
	str	r8, [lr, #32]
	str	r7, [lr, #8]
	str	r7, [lr, #12]
	stmia	r10!, {r0, r1, r2, r3}
	ldm	r6, {r0, r1}
	add	r6, lr, #80
	stm	r10, {r0, r1}
	ldmia	r6!, {r0, r1, r2, r3}
	add	lr, lr, #160
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	stm	lr, {r0, r1}
	add	r3, ip, #520
.L2:
	str	r4, [ip, #200]
	add	ip, ip, #40
	cmp	ip, r3
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	itemList+360
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	checkDeath
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkDeath, %function
checkDeath:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L19
	ldr	r3, [r0, #12]
	cmp	r3, #0
	bxne	lr
	mov	r2, r0
.L12:
	ldr	r1, [r2, #120]
	cmp	r1, #25
	beq	.L18
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L12
	push	{r4, lr}
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L18:
	mov	r1, #32
	ldr	r2, [r0, #8]
	add	r3, r3, r3, lsl #2
	add	r3, r0, r3, lsl #3
	str	r1, [r3, #120]
	str	r2, [r0, #12]
	bx	lr
.L20:
	.align	2
.L19:
	.word	player
	.word	goToLose
	.size	checkDeath, .-checkDeath
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initEnemies, .-initEnemies
	.align	2
	.global	damageChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	damageChar, %function
damageChar:
	@ Function supports interworking.
	@ args = 732, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, lr}
	ldr	r4, .L24
	add	ip, sp, #4
	stmib	ip, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	add	sp, sp, #16
	bx	lr
.L25:
	.align	2
.L24:
	.word	rand
	.size	damageChar, .-damageChar
	.align	2
	.global	healChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	healChar, %function
healChar:
	@ Function supports interworking.
	@ args = 732, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, lr}
	ldr	r4, .L28
	add	ip, sp, #4
	stmib	ip, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	mov	r0, #0
	add	sp, sp, #16
	bx	lr
.L29:
	.align	2
.L28:
	.word	rand
	.size	healChar, .-healChar
	.align	2
	.global	buffChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	buffChar, %function
buffChar:
	@ Function supports interworking.
	@ args = 736, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	sub	ip, sp, #4
	stmib	ip, {r0, r1, r2, r3}
	add	sp, sp, #16
	bx	lr
	.size	buffChar, .-buffChar
	.align	2
	.global	statEquipped
	.syntax unified
	.arm
	.fpu softvfp
	.type	statEquipped, %function
statEquipped:
	@ Function supports interworking.
	@ args = 732, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	str	lr, [sp, #-4]!
	mov	lr, sp
	ldr	ip, [sp, #732]
	sub	ip, ip, #1
	stmib	lr, {r0, r1, r2, r3}
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L32
.L35:
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L34
.L37:
	ldr	r0, [sp, #24]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #56]
	add	r0, r0, r2
	add	r0, r0, r3
.L32:
	ldr	lr, [sp], #4
	add	sp, sp, #16
	bx	lr
.L34:
	ldr	r0, [sp, #32]
	ldr	r3, [sp, #104]
	ldr	lr, [sp], #4
	add	r0, r0, r3
	add	sp, sp, #16
	bx	lr
.L36:
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #52]
	ldr	lr, [sp], #4
	add	r0, r0, r2
	add	r0, r0, r3
	add	sp, sp, #16
	bx	lr
.L38:
	ldr	r0, [sp, #28]
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #60]
	ldr	lr, [sp], #4
	add	r0, r0, r2
	add	r0, r0, r3
	add	sp, sp, #16
	bx	lr
	.size	statEquipped, .-statEquipped
	.align	2
	.global	statMod
	.syntax unified
	.arm
	.fpu softvfp
	.type	statMod, %function
statMod:
	@ Function supports interworking.
	@ args = 732, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, sp, #28
	stmib	r4, {r0, r1, r2, r3}
	ldr	lr, [sp, #760]
	add	r1, sp, #48
	add	r4, sp, #128
	sub	lr, lr, #1
	ldm	r1, {r1, r2, r3, r10}
	ldr	r7, [sp, #80]
	ldr	r5, [sp, #84]
	ldr	r0, [sp, #88]
	ldr	r8, [sp, #120]
	ldr	r6, [sp, #124]
	ldm	r4, {r4, r9}
	cmp	lr, #3
	ldrls	pc, [pc, lr, asl #2]
	b	.L42
.L44:
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L43
.L45:
	add	ip, r1, r8
	add	ip, ip, r7
.L42:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	ip, ip, ip, lsr #31
	asr	r0, ip, #1
	sub	r0, r0, #5
	add	sp, sp, #16
	bx	lr
.L43:
	add	ip, r10, r9
	b	.L42
.L47:
	add	ip, r3, r4
	add	ip, ip, r0
	b	.L42
.L46:
	add	ip, r2, r6
	add	ip, ip, r5
	b	.L42
	.size	statMod, .-statMod
	.align	2
	.global	statModMob
	.syntax unified
	.arm
	.fpu softvfp
	.type	statModMob, %function
statModMob:
	@ Function supports interworking.
	@ args = 732, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	str	lr, [sp, #-4]!
	mov	lr, sp
	ldr	ip, [sp, #732]
	sub	ip, ip, #1
	stmib	lr, {r0, r1, r2, r3}
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L49
.L52:
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L51
.L54:
	ldr	r0, [sp, #24]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
.L49:
	ldr	lr, [sp], #4
	add	sp, sp, #16
	bx	lr
.L51:
	ldr	r0, [sp, #32]
	ldr	lr, [sp], #4
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	add	sp, sp, #16
	bx	lr
.L53:
	ldr	r0, [sp, #20]
	ldr	lr, [sp], #4
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	add	sp, sp, #16
	bx	lr
.L55:
	ldr	r0, [sp, #28]
	ldr	lr, [sp], #4
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	add	sp, sp, #16
	bx	lr
	.size	statModMob, .-statModMob
	.align	2
	.global	intDiceRoll
	.syntax unified
	.arm
	.fpu softvfp
	.type	intDiceRoll, %function
intDiceRoll:
	@ Function supports interworking.
	@ args = 728, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	ldr	lr, [sp, #32]
	ldr	ip, [sp, #104]
	add	ip, ip, lr
	ldr	lr, [sp, #64]
	add	ip, ip, lr
	add	ip, ip, ip, lsr #31
	add	lr, sp, #12
	ldr	r5, .L60
	asr	ip, ip, #1
	stmib	lr, {r0, r1, r2, r3}
	sub	r4, ip, #5
	mov	lr, pc
	bx	r5
	ldr	r3, .L60+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	cmp	r0, #1
	movlt	r0, #1
	add	sp, sp, #16
	bx	lr
.L61:
	.align	2
.L60:
	.word	rand
	.word	1717986919
	.size	intDiceRoll, .-intDiceRoll
	.align	2
	.global	dexDiceRoll
	.syntax unified
	.arm
	.fpu softvfp
	.type	dexDiceRoll, %function
dexDiceRoll:
	@ Function supports interworking.
	@ args = 728, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	ldr	lr, [sp, #108]
	ldr	ip, [sp, #36]
	add	ip, ip, lr
	ldr	lr, [sp, #68]
	add	ip, ip, lr
	add	ip, ip, ip, lsr #31
	add	lr, sp, #12
	ldr	r5, .L64
	asr	ip, ip, #1
	stmib	lr, {r0, r1, r2, r3}
	sub	r4, ip, #5
	mov	lr, pc
	bx	r5
	ldr	r3, .L64+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	cmp	r0, #1
	movlt	r0, #1
	add	sp, sp, #16
	bx	lr
.L65:
	.align	2
.L64:
	.word	rand
	.word	1717986919
	.size	dexDiceRoll, .-dexDiceRoll
	.align	2
	.global	strDiceRoll
	.syntax unified
	.arm
	.fpu softvfp
	.type	strDiceRoll, %function
strDiceRoll:
	@ Function supports interworking.
	@ args = 728, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	ldr	lr, [sp, #112]
	ldr	ip, [sp, #40]
	add	ip, ip, lr
	ldr	lr, [sp, #72]
	add	ip, ip, lr
	add	ip, ip, ip, lsr #31
	add	lr, sp, #12
	ldr	r5, .L68
	asr	ip, ip, #1
	stmib	lr, {r0, r1, r2, r3}
	sub	r4, ip, #5
	mov	lr, pc
	bx	r5
	ldr	r3, .L68+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	cmp	r0, #1
	movlt	r0, #1
	add	sp, sp, #16
	bx	lr
.L69:
	.align	2
.L68:
	.word	rand
	.word	1717986919
	.size	strDiceRoll, .-strDiceRoll
	.comm	enemyList,14560,4
	.comm	player,728,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
