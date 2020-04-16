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
	mov	r1, r0
	mov	r2, #728
	push	{r4, lr}
	ldr	r3, .L4
	ldr	r0, .L4+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	memcpy
	.word	enemyChar
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	r2, #72
	ldr	r0, [r3, #4]
	mov	r1, #112
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [r0]
	cmp	r6, #1
	mov	r5, r0
	mov	r4, r1
	beq	.L24
	cmp	r6, #2
	beq	.L25
	cmp	r6, #0
	beq	.L26
	ldr	r3, [r0, #4]
	sub	r3, r3, #16
	cmp	r3, #3
	ldr	r7, .L28
	bhi	.L19
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L28+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #36]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #3
	cmp	r6, r0
	bge	.L27
.L10:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L26:
	ldr	r7, .L28
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #1
	mov	r0, r5
	ldr	r9, .L28+12
	mov	lr, pc
	bx	r9
	ldr	r8, .L28+8
	smull	r3, r2, r8, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r6, r6, r3, lsl #2
	ldr	r2, [r4, #36]
	ldr	r3, [r4, #28]
	add	r6, r6, #1
	add	r6, r6, r0
	add	r3, r3, r2
	cmp	r6, r3
	movge	r0, r5
	movge	r1, #1
	blt	.L10
.L23:
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
	ldr	r2, [r4, #12]
	add	r3, r3, #1
	add	r0, r3, r5
	sub	r0, r2, r0
	cmp	r0, #0
	strgt	r0, [r4, #12]
	bgt	.L10
.L17:
	mov	r3, #0
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L28+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L28+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #36]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #1
	cmp	r6, r0
	blt	.L10
	ldr	r5, [r5, #32]
	mov	lr, pc
	bx	r7
	ldr	r3, .L28+16
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	add	r1, r1, #1
	sub	r1, r3, r1
	cmp	r1, #0
	ble	.L17
.L22:
	str	r1, [r4, #12]
	b	.L10
.L24:
	ldr	r7, .L28
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	ldr	r9, .L28+12
	mov	lr, pc
	bx	r9
	ldr	r8, .L28+8
	smull	r3, r2, r8, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r6, r6, r3, lsl #2
	ldr	r2, [r4, #36]
	ldr	r3, [r4, #28]
	add	r6, r6, #1
	add	r6, r6, r0
	add	r3, r3, r2
	cmp	r6, r3
	blt	.L10
	mov	r0, r5
	mov	r1, #3
	b	.L23
.L27:
	ldr	r5, [r5, #32]
	mov	lr, pc
	bx	r7
	ldr	r3, .L28+16
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	add	r1, r1, #3
	sub	r1, r3, r1
	cmp	r1, #0
	bgt	.L22
	b	.L17
.L25:
	ldr	r8, .L28
	mov	lr, pc
	bx	r8
	mov	r7, r0
	mov	r1, r6
	mov	r0, r5
	ldr	r10, .L28+12
	mov	lr, pc
	bx	r10
	ldr	r9, .L28+8
	smull	r3, r2, r9, r7
	asr	r3, r7, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r7, r7, r3, lsl #2
	ldr	r2, [r4, #36]
	ldr	r3, [r4, #28]
	add	r7, r7, #1
	add	r7, r7, r0
	add	r3, r3, r2
	cmp	r7, r3
	blt	.L10
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
	ldr	r2, [r4, #12]
	add	r3, r3, #1
	add	r3, r3, r5
	sub	r3, r2, r3
	cmp	r3, #0
	strgt	r3, [r4, #12]
	bgt	.L10
	b	.L17
.L29:
	.align	2
.L28:
	.word	rand
	.word	statEquipped
	.word	1717986919
	.word	statMod
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L76
	ldr	r2, [r4, #12]
	cmp	r2, #0
	bne	.L31
	ldr	r3, .L76+4
	ldr	r3, [r3]
	ldr	r1, .L76+8
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r1, r3, lsl #3
	ldr	r1, [r3, #4]
	cmp	r1, #6
	beq	.L72
	cmp	r1, #3
	moveq	r2, #4
	ldr	r0, .L76+12
	ldr	r1, [r0]
	ldr	r4, .L76+16
	add	r1, r1, #1
	str	r2, [r3, #4]
	str	r1, [r0]
	mov	lr, pc
	bx	r4
.L30:
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	ldr	r5, .L76+20
	ldr	r3, .L76+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L35
	ldr	r3, .L76+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L36
	ldr	r2, .L76+32
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L73
.L36:
	tst	r3, #2
	beq	.L37
	ldr	r2, .L76+32
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L74
.L37:
	tst	r3, #8
	beq	.L38
	ldr	r2, .L76+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L38:
	tst	r3, #512
	beq	.L30
	ldr	r3, .L76+32
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L30
	ldr	r0, .L76+4
	ldr	r2, [r0]
	ldr	r1, .L76+8
	add	r3, r2, r2, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r1, r3, lsl #3
	ldr	r3, [r3, #4]
	cmp	r3, #6
	beq	.L30
	sub	r2, r2, #1
	ldr	r3, .L76+16
	str	r2, [r0]
	mov	lr, pc
	bx	r3
	b	.L30
.L35:
	cmp	r3, #1
	bne	.L30
	ldr	r3, .L76+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+40
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
	b	.L39
.L41:
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L40
.L72:
	ldr	r3, .L76+44
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	mov	r2, #4
	mov	r1, #1
	ldr	r3, .L76+48
	str	r1, [r5]
	str	r2, [r3, #36]
	b	.L30
.L75:
	ldr	r3, .L76+52
	mov	lr, pc
	bx	r3
	b	.L30
.L40:
	ldr	r2, [r4, #8]
	ldr	r1, .L76+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L71
	cmp	r3, #74
	bgt	.L46
.L47:
	mov	r2, #4
	mov	r3, #0
	str	r2, [r4, #36]
	str	r3, [r5]
	b	.L30
.L42:
	ldr	r1, [r4, #8]
	ldr	r2, .L76+60
	smull	r0, r2, r1, r2
	ldr	r0, [r4, #12]
	sub	r2, r2, r1, asr #31
	cmp	r0, r2
	bgt	.L70
.L51:
	cmp	r3, #59
	ble	.L47
.L46:
	mov	r6, #0
	ldr	r1, .L76+48
	ldr	r0, .L76
	str	r6, [r4, #36]
	bl	attack
	str	r6, [r5]
	b	.L30
.L44:
	ldr	r2, [r4, #8]
	ldr	r1, .L76+56
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L69
	cmp	r3, #49
	ble	.L47
	b	.L46
.L43:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L70
.L69:
	cmp	r3, #19
	ble	.L47
	b	.L46
.L73:
	ldr	r0, .L76+48
	mov	r1, r4
	str	r2, [r0, #36]
	bl	attack
	mov	r3, #1
	str	r3, [r5]
	b	.L30
.L70:
	cmp	r3, #39
	ble	.L47
	b	.L46
.L39:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L51
.L71:
	cmp	r3, #29
	ble	.L47
	b	.L46
.L77:
	.align	2
.L76:
	.word	enemyChar
	.word	currRoom
	.word	dungeon
	.word	turnCount
	.word	goToGame
	.word	turn
	.word	checkDeath
	.word	oldButtons
	.word	buttons
	.word	rand
	.word	1374389535
	.word	goToWin
	.word	player
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
	ldr	r3, .L80
	mov	r4, r1
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	add	r0, r1, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	rand
	.word	__aeabi_idivmod
	.size	rollDmg, .-rollDmg
	.comm	turn,4,4
	.comm	enemyChar,728,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
