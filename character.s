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
	add	r5, r4, #8
	ldmia	r5!, {r0, r1, r2, r3}
	add	r6, lr, #40
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	add	r4, r4, #88
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
	.word	itemList+1152
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
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L45
	orr	r1, r1, #16384
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	cmp	r0, #19
	ldrls	pc, [pc, r0, asl #2]
	b	.L22
.L25:
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L29
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L24
.L24:
	mov	r2, #70
	strh	r2, [r3, #20]	@ movhi
.L22:
	bx	lr
.L26:
	mov	r2, #68
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L27:
	mov	r2, #66
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L28:
	mov	r2, #64
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L29:
	mov	r2, #30
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L30:
	mov	r2, #28
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L31:
	mov	r2, #26
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L32:
	mov	r2, #24
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L33:
	mov	r2, #22
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L34:
	mov	r2, #20
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L35:
	mov	r2, #18
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L36:
	mov	r2, #16
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L37:
	mov	r2, #14
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L38:
	mov	r2, #12
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L39:
	mov	r2, #10
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L40:
	mov	r2, #8
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L41:
	mov	r2, #6
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L42:
	mov	r2, #4
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L43:
	mov	r2, #2
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L44:
	mov	r2, #0
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L46:
	.align	2
.L45:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.global	__aeabi_idivmod
	.align	2
	.global	damageChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	damageChar, %function
damageChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r3, .L49
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	add	r1, r1, #1
	sub	r1, r3, r1
	cmp	r1, #1
	movlt	r1, #1
	str	r1, [r4, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	rand
	.word	__aeabi_idivmod
	.size	damageChar, .-damageChar
	.align	2
	.global	healChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	healChar, %function
healChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r3, .L53
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L53+4
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	add	r1, r1, #1
	add	r1, r1, r2
	cmp	r1, r3
	movge	r1, r3
	str	r1, [r4, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	rand
	.word	__aeabi_idivmod
	.size	healChar, .-healChar
	.align	2
	.global	buffChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	buffChar, %function
buffChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #4
	ldrls	pc, [pc, r1, asl #2]
	b	.L55
.L58:
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L57
.L61:
	ldr	r3, [r0, #24]
	add	r2, r3, r2
	str	r2, [r0, #24]
.L55:
	bx	lr
.L57:
	ldr	r3, [r0, #28]
	add	r2, r3, r2
	str	r2, [r0, #28]
	bx	lr
.L62:
	ldr	r3, [r0, #8]
	add	r2, r3, r2
	str	r2, [r0, #8]
	bx	lr
.L60:
	ldr	r3, [r0, #20]
	add	r2, r3, r2
	str	r2, [r0, #20]
	bx	lr
.L59:
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0, #16]
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r1, r1, #1
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L64
.L66:
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L65
.L65:
	ldr	r3, [r0, #28]
	ldr	r0, [r0, #100]
	add	r0, r3, r0
	bx	lr
.L67:
	ldr	r3, [r0, #16]
	ldr	r1, [r0, #88]
	ldr	r2, [r0, #48]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L68:
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L69:
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L64:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	statEquipped
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	pop	{r4, lr}
	bx	lr
	.size	statMod, .-statMod
	.align	2
	.global	statModMob
	.syntax unified
	.arm
	.fpu softvfp
	.type	statModMob, %function
statModMob:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r1, r1, #1
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L74
.L76:
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L75
.L75:
	ldr	r0, [r0, #28]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L77:
	ldr	r0, [r0, #16]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L78:
	ldr	r0, [r0, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L79:
	ldr	r0, [r0, #24]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L74:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #16]
	ldr	r1, [r0, #88]
	ldr	r2, [r0, #48]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L83
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	cmp	r0, #1
	movlt	r0, #1
	pop	{r4, lr}
	bx	lr
.L84:
	.align	2
.L83:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L87
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	cmp	r0, #1
	movlt	r0, #1
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L91
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L91+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #1
	add	r0, r0, r4
	cmp	r0, #1
	movlt	r0, #1
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	rand
	.word	1717986919
	.size	strDiceRoll, .-strDiceRoll
	.comm	enemyList,14560,4
	.comm	player,728,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
