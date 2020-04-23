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
	.file	"combat.c"
	.text
	.align	2
	.global	initCombat
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCombat, %function
initCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	push	{r4, r5, r6, lr}
	mov	r1, r0
	mov	r4, r0
	mov	r2, #136
	mov	r0, r3
	ldr	r5, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, r0
	mov	r1, #0
	mov	r0, #1
	add	r2, r4, #20
	ldr	ip, [r4, #8]
	ldm	r2, {r2, lr}
	str	ip, [r3, #8]
	str	r2, [r3, #20]
	ldr	ip, [r4, #28]
	ldr	r2, [r4, #32]
	ldr	r5, [r4, #12]
	str	lr, [r3, #24]
	str	ip, [r3, #28]
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #36]
	str	r2, [r3, #32]
	ldr	r2, .L4+8
	str	r5, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #36]
	str	r0, [r3, #124]
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	enemyChar
	.word	memcpy
	.word	turn
	.size	initCombat, .-initCombat
	.align	2
	.global	drawCombat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCombat, %function
drawCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #64
	mov	r0, #24
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+4
	ldr	r4, .L13+8
	add	r0, r3, #12
	mov	r2, #24
	mov	r3, #96
	ldm	r0, {r0, r1}
	ldr	r5, .L13+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #124]
	cmp	r3, #0
	bne	.L12
	pop	{r4, r5, r6, lr}
	bx	lr
.L12:
	ldr	r0, [r4, #8]
	mov	r2, #64
	mov	r1, #184
	ldr	r3, .L13+16
	mov	lr, pc
	bx	r3
	add	r0, r4, #12
	mov	r3, #96
	ldr	r4, .L13+20
	mov	r2, #184
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	drawPlayer
	.word	player
	.word	enemyChar
	.word	drawPlayerHealthbar
	.word	drawEnemy
	.word	drawEnemyHealthbar
	.size	drawCombat, .-drawCombat
	.global	__aeabi_idivmod
	.align	2
	.global	attack
	.syntax unified
	.arm
	.fpu softvfp
	.type	attack, %function
attack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [r0]
	cmp	r6, #2
	mov	r5, r0
	mov	r4, r1
	beq	.L30
	cmp	r6, #3
	beq	.L31
	cmp	r6, #1
	beq	.L32
	ldr	r3, [r0, #8]
	sub	r3, r3, #16
	cmp	r3, #3
	ldr	r7, .L34
	bhi	.L24
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L34+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #40]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #3
	cmp	r6, r0
	bge	.L33
.L15:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L24:
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L34+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #40]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #1
	cmp	r6, r0
	blt	.L15
	ldr	r5, [r5, #36]
	mov	lr, pc
	bx	r7
	ldr	r3, .L34+12
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #1
	sub	r1, r3, r1
	cmp	r1, #0
	ble	.L22
.L27:
	str	r1, [r4, #16]
	b	.L15
.L30:
	ldr	r7, .L34
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	ldr	r9, .L34+16
	mov	lr, pc
	bx	r9
	ldr	r8, .L34+8
	smull	r3, r2, r8, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r6, r6, r3, lsl #2
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #32]
	add	r6, r6, #1
	add	r6, r6, r0
	add	r3, r3, r2
	cmp	r6, r3
	blt	.L15
	mov	r0, r5
	mov	r1, #3
	mov	lr, pc
	bx	r9
	mov	r5, r0
	mov	lr, pc
	bx	r7
	smull	r3, r8, r0, r8
	asr	r3, r0, #31
	rsb	r8, r3, r8, asr #2
	add	r8, r8, r8, lsl #2
	sub	r3, r0, r8, lsl #1
	ldr	r2, [r4, #16]
	add	r3, r3, #1
	add	r0, r3, r5
	sub	r0, r2, r0
	cmp	r0, #0
	strgt	r0, [r4, #16]
	bgt	.L15
.L22:
	mov	r3, #0
	str	r3, [r4, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L33:
	ldr	r5, [r5, #36]
	mov	lr, pc
	bx	r7
	ldr	r3, .L34+12
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #3
	sub	r1, r3, r1
	cmp	r1, #0
	bgt	.L27
	b	.L22
.L31:
	ldr	r7, .L34
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #2
	mov	r0, r5
	ldr	r9, .L34+16
	mov	lr, pc
	bx	r9
	ldr	r8, .L34+8
	smull	r3, r2, r8, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r6, r6, r3, lsl #2
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #32]
	add	r6, r6, #1
	add	r6, r6, r0
	add	r3, r3, r2
	cmp	r6, r3
	blt	.L15
	mov	r0, r5
	mov	r1, #2
	mov	lr, pc
	bx	r9
	mov	r5, r0
	mov	lr, pc
	bx	r7
	smull	r3, r8, r0, r8
	asr	r3, r0, #31
	rsb	r8, r3, r8, asr #2
	add	r8, r8, r8, lsl #2
	sub	r3, r0, r8, lsl #1
.L29:
	ldr	r2, [r4, #16]
	add	r3, r3, #1
	add	r3, r3, r5
	sub	r3, r2, r3
	cmp	r3, #0
	strgt	r3, [r4, #16]
	bgt	.L15
	b	.L22
.L32:
	ldr	r8, .L34
	mov	lr, pc
	bx	r8
	mov	r7, r0
	mov	r1, r6
	mov	r0, r5
	ldr	r10, .L34+16
	mov	lr, pc
	bx	r10
	ldr	r9, .L34+8
	smull	r3, r2, r9, r7
	asr	r3, r7, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r7, r7, r3, lsl #2
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #32]
	add	r7, r7, #1
	add	r7, r7, r0
	add	r3, r3, r2
	cmp	r7, r3
	blt	.L15
	mov	r1, r6
	mov	r0, r5
	mov	lr, pc
	bx	r10
	mov	r5, r0
	mov	lr, pc
	bx	r8
	smull	r3, r9, r0, r9
	asr	r3, r0, #31
	rsb	r9, r3, r9, asr #2
	add	r9, r9, r9, lsl #2
	sub	r3, r0, r9, lsl #1
	b	.L29
.L35:
	.align	2
.L34:
	.word	rand
	.word	statEquipped
	.word	1717986919
	.word	__aeabi_idivmod
	.word	statMod
	.size	attack, .-attack
	.align	2
	.global	updateCombat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCombat, %function
updateCombat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L87
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #8
	bgt	.L37
	mov	r1, #0
	ldr	r3, .L87+4
	ldr	r3, [r3]
	ldr	r2, .L87+8
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	r3, r2, r3, lsl #3
	ldr	r2, [r3, #4]
	cmp	r2, #6
	str	r1, [r4, #124]
	beq	.L85
	cmp	r2, #3
	moveq	ip, #4
	movne	ip, #0
	ldr	r1, .L87+12
	ldr	r2, [r1]
	ldr	r0, .L87+16
	add	r2, r2, #1
	str	ip, [r3, #4]
	str	r2, [r1]
	mov	lr, pc
	bx	r0
.L36:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	ldr	r5, .L87+20
	ldr	r3, .L87+24
	mov	lr, pc
	bx	r3
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L41
	ldr	r3, .L87+28
	ldrh	r0, [r3]
	tst	r0, #1
	bne	.L86
.L42:
	tst	r0, #2
	beq	.L47
	ldr	r3, .L87+32
	ldrh	r1, [r3]
	ands	r1, r1, #2
	bne	.L47
	mov	r0, #4
	str	r1, [sp, #4]
	ldr	ip, [sp, #4]
	ldr	r3, .L87+36
	cmp	ip, #1000
	str	r0, [r3, #40]
	bgt	.L36
.L49:
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	moveq	r1, #1
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	moveq	r2, r1
	cmp	r3, #1000
	ble	.L49
	cmp	r1, #0
	strne	r2, [r5]
	b	.L36
.L41:
	cmp	r2, #1
	bne	.L36
	ldr	r3, .L87+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+44
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	ldr	r2, [r4, #8]
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r2, r2, #16
	sub	r3, r0, r3, lsl #2
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L50
.L52:
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L51
.L85:
	ldr	r3, .L87+48
	mov	lr, pc
	bx	r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	ldr	r3, .L87+32
	ldrh	r3, [r3]
	ands	r6, r3, #1
	bne	.L42
	ldr	r0, .L87+36
	mov	r1, r4
	str	r6, [r0, #40]
	bl	attack
	str	r6, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	bgt	.L36
	mov	r2, r6
	ldr	r1, [r5]
.L45:
	ldr	r3, [sp]
	cmp	r3, #1000
	moveq	r2, #1
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	moveq	r1, r2
	cmp	r3, #1000
	ble	.L45
	cmp	r2, #0
	strne	r1, [r5]
	b	.L36
.L47:
	tst	r0, #8
	beq	.L36
	ldr	r3, .L87+32
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L36
	ldr	r3, .L87+52
	mov	lr, pc
	bx	r3
	b	.L36
.L51:
	ldr	r2, [r4, #12]
	ldr	r1, .L87+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #16]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L84
	cmp	r3, #74
	bgt	.L57
.L58:
	mov	r2, #4
	mov	r3, #0
	str	r2, [r4, #40]
	str	r3, [r5]
	b	.L36
.L53:
	ldr	r1, [r4, #12]
	ldr	r2, .L87+60
	smull	r0, r2, r1, r2
	ldr	r0, [r4, #16]
	sub	r2, r2, r1, asr #31
	cmp	r0, r2
	bgt	.L83
.L62:
	cmp	r3, #59
	ble	.L58
.L57:
	mov	r6, #0
	ldr	r1, .L87+36
	ldr	r0, .L87
	str	r6, [r4, #40]
	bl	attack
	str	r6, [r5]
	b	.L36
.L55:
	ldr	r2, [r4, #12]
	ldr	r1, .L87+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #16]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L82
	cmp	r3, #49
	ble	.L58
	b	.L57
.L54:
	ldr	r2, [r4, #12]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #16]
	cmp	r1, r2, asr #2
	ble	.L83
.L82:
	cmp	r3, #19
	ble	.L58
	b	.L57
.L83:
	cmp	r3, #39
	ble	.L58
	b	.L57
.L50:
	ldr	r2, [r4, #12]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #16]
	cmp	r1, r2, asr #2
	ble	.L62
.L84:
	cmp	r3, #29
	ble	.L58
	b	.L57
.L88:
	.align	2
.L87:
	.word	enemyChar
	.word	currRoom
	.word	dungeon
	.word	turnCount
	.word	goToGame
	.word	turn
	.word	checkDeath
	.word	oldButtons
	.word	buttons
	.word	player
	.word	rand
	.word	1374389535
	.word	goToWin
	.word	goToCombatPause
	.word	1717986919
	.word	1431655766
	.size	updateCombat, .-updateCombat
	.align	2
	.global	rollDmg
	.syntax unified
	.arm
	.fpu softvfp
	.type	rollDmg, %function
rollDmg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldr	r3, .L91
	mov	r4, r1
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	add	r0, r1, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	rand
	.word	__aeabi_idivmod
	.size	rollDmg, .-rollDmg
	.comm	turn,4,4
	.comm	enemyChar,136,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
