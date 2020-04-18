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
	mov	r2, #132
	mov	r0, r3
	ldr	r5, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, r0
	mov	r1, #0
	mov	r0, #1
	add	r2, r4, #16
	ldr	ip, [r4, #4]
	ldm	r2, {r2, lr}
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	ldr	ip, [r4, #24]
	ldr	r2, [r4, #28]
	ldr	r5, [r4, #8]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	ldr	lr, [r4, #12]
	ldr	ip, [r4, #32]
	str	r2, [r3, #28]
	ldr	r2, .L4+8
	str	r5, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #32]
	str	r0, [r3, #120]
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
	ldr	r3, .L15
	ldr	r2, [r3, #120]
	cmp	r2, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r0, [r3, #4]
	mov	r2, #72
	mov	r1, #112
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	enemyChar
	.word	drawEnemy
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
	ldr	r3, [r0]
	cmp	r3, #2
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	beq	.L31
	cmp	r3, #3
	beq	.L31
	cmp	r3, #1
	beq	.L31
	ldr	r3, [r0, #4]
	sub	r3, r3, #16
	cmp	r3, #3
	mov	r5, r0
	ldr	r7, .L33
	bhi	.L24
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L33+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #36]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #3
	cmp	r6, r0
	bge	.L32
.L17:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	ldr	r3, [r4, #12]
	cmp	r3, #1000
	subgt	r3, r3, #1000
	strgt	r3, [r4, #12]
	bgt	.L17
.L22:
	mov	r3, #0
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L24:
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L33+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #36]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #1
	cmp	r6, r0
	blt	.L17
	ldr	r5, [r5, #32]
	mov	lr, pc
	bx	r7
	ldr	r3, .L33+12
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	add	r1, r1, #1
	sub	r3, r3, r1
	cmp	r3, #0
	bgt	.L29
	b	.L22
.L32:
	ldr	r5, [r5, #32]
	mov	lr, pc
	bx	r7
	ldr	r3, .L33+12
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	add	r1, r1, #3
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L22
.L29:
	str	r3, [r4, #12]
	b	.L17
.L34:
	.align	2
.L33:
	.word	rand
	.word	statEquipped
	.word	1717986919
	.word	__aeabi_idivmod
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
	ldr	r4, .L96
	ldr	r3, [r4, #12]
	cmp	r3, #0
	sub	sp, sp, #8
	bgt	.L36
	mov	r1, #0
	ldr	r3, .L96+4
	ldr	r3, [r3]
	ldr	r2, .L96+8
	rsb	r3, r3, r3, lsl #3
	rsb	r3, r3, r3, lsl #3
	add	r3, r2, r3, lsl #2
	ldr	r2, [r3, #4]
	cmp	r2, #6
	str	r1, [r4, #120]
	beq	.L93
	cmp	r2, #3
	moveq	ip, #4
	movne	ip, #0
	ldr	r1, .L96+12
	ldr	r2, [r1]
	ldr	r0, .L96+16
	add	r2, r2, #1
	str	ip, [r3, #4]
	str	r2, [r1]
	mov	lr, pc
	bx	r0
.L35:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	ldr	r5, .L96+20
	ldr	r3, .L96+24
	mov	lr, pc
	bx	r3
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L40
	ldr	r3, .L96+28
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L94
.L41:
	tst	r3, #2
	beq	.L46
	ldr	r1, .L96+32
	ldrh	r1, [r1]
	ands	r1, r1, #2
	bne	.L46
	mov	r0, #4
	str	r1, [sp, #4]
	ldr	ip, [sp, #4]
	ldr	r3, .L96+36
	cmp	ip, #1000
	str	r0, [r3, #36]
	bgt	.L35
.L48:
	ldr	r3, [sp, #4]
	cmp	r3, #1000
	moveq	r1, #1
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	moveq	r2, r1
	cmp	r3, #1000
	ble	.L48
.L92:
	cmp	r1, #0
	strne	r2, [r5]
	b	.L35
.L40:
	cmp	r2, #1
	bne	.L35
	ldr	r3, .L96+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+44
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	ldr	r2, [r4, #4]
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
.L93:
	ldr	r3, .L96+48
	mov	lr, pc
	bx	r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	ldr	r1, .L96+32
	ldrh	r1, [r1]
	ands	r6, r1, #1
	bne	.L41
	ldr	r0, .L96+36
	mov	r1, r4
	str	r6, [r0, #36]
	bl	attack
	str	r6, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	bgt	.L35
	mov	r1, r6
	ldr	r2, [r5]
.L44:
	ldr	r3, [sp]
	cmp	r3, #1000
	moveq	r1, #1
	ldr	r3, [sp]
	add	r3, r3, #1
	str	r3, [sp]
	ldr	r3, [sp]
	moveq	r2, r1
	cmp	r3, #1000
	ble	.L44
	b	.L92
.L46:
	tst	r3, #8
	beq	.L49
	ldr	r2, .L96+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L95
.L49:
	tst	r3, #512
	beq	.L35
	ldr	r3, .L96+32
	ldrh	r3, [r3]
	ands	r3, r3, #512
	bne	.L35
	ldr	ip, .L96+4
	ldr	r1, [ip]
	ldr	r0, .L96+8
	rsb	r2, r1, r1, lsl #3
	rsb	r2, r2, r2, lsl #3
	add	r2, r0, r2, lsl #2
	ldr	r2, [r2, #4]
	cmp	r2, #6
	beq	.L35
	sub	r1, r1, #1
	ldr	r2, .L96+16
	str	r1, [ip]
	str	r3, [r4, #120]
	mov	lr, pc
	bx	r2
	b	.L35
.L95:
	ldr	r3, .L96+52
	mov	lr, pc
	bx	r3
	b	.L35
.L51:
	ldr	r2, [r4, #8]
	ldr	r1, .L96+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L90
	cmp	r3, #74
	bgt	.L57
.L58:
	mov	r2, #4
	mov	r3, #0
	str	r2, [r4, #36]
	str	r3, [r5]
	b	.L35
.L53:
	ldr	r1, [r4, #8]
	ldr	r2, .L96+60
	smull	r0, r2, r1, r2
	ldr	r0, [r4, #12]
	sub	r2, r2, r1, asr #31
	cmp	r0, r2
	bgt	.L89
.L62:
	cmp	r3, #59
	ble	.L58
.L57:
	mov	r6, #0
	ldr	r1, .L96+36
	ldr	r0, .L96
	str	r6, [r4, #36]
	bl	attack
	str	r6, [r5]
	b	.L35
.L55:
	ldr	r2, [r4, #8]
	ldr	r1, .L96+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L88
	cmp	r3, #49
	ble	.L58
	b	.L57
.L54:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L89
.L88:
	cmp	r3, #19
	ble	.L58
	b	.L57
.L89:
	cmp	r3, #39
	ble	.L58
	b	.L57
.L50:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L62
.L90:
	cmp	r3, #29
	ble	.L58
	b	.L57
.L97:
	.align	2
.L96:
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
	ldr	r3, .L100
	mov	r4, r1
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	add	r0, r1, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	.align	2
.L100:
	.word	rand
	.word	__aeabi_idivmod
	.size	rollDmg, .-rollDmg
	.comm	turn,4,4
	.comm	enemyChar,132,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
