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
	mov	r2, #128
	mov	r0, r3
	ldr	r5, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, r0
	mov	r2, #0
	mov	lr, #1
	ldr	r1, [r4, #8]
	ldr	ip, [r4, #20]
	ldr	r0, [r4, #24]
	str	r1, [r3, #8]
	ldr	r1, [r4, #28]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	ldr	ip, [r4, #32]
	ldr	r0, [r4, #12]
	str	r1, [r3, #28]
	ldr	r1, [r4, #16]
	str	r0, [r3, #12]
	ldr	r4, [r4, #36]
	str	ip, [r3, #32]
	ldr	r0, .L4+8
	ldr	ip, .L4+12
	str	r1, [r3, #16]
	ldr	r1, .L4+16
	str	r4, [r3, #36]
	str	lr, [r3, #124]
	str	r2, [ip]
	str	r2, [r0]
	mov	lr, pc
	bx	r1
	rsbs	r3, r0, #0
	ldr	r2, .L4+20
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	str	r0, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	enemyChar
	.word	memcpy
	.word	anitimer
	.word	turn
	.word	rand
	.word	anicounter
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
	beq	.L28
	cmp	r6, #3
	beq	.L29
	cmp	r6, #1
	beq	.L30
	ldr	r3, [r0, #8]
	sub	r3, r3, #17
	cmp	r3, #4
	ldr	r7, .L32
	bhi	.L23
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L32+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #40]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #3
	cmp	r6, r0
	blt	.L17
	mov	r2, #0
	ldr	r1, .L32+12
	ldr	r3, .L32+16
	ldr	r0, .L32+20
	mov	lr, pc
	bx	r3
	ldr	r5, [r5, #36]
	mov	lr, pc
	bx	r7
	ldr	r3, .L32+24
	mov	r1, r5
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #3
	sub	r1, r3, r1
	cmp	r1, #0
	ble	.L21
.L25:
	str	r1, [r4, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #4
	ldr	r3, .L32+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+8
	smull	r1, r2, r3, r6
	asr	r3, r6, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #40]
	sub	r6, r6, r3, lsl #2
	add	r0, r0, r2
	add	r6, r6, #1
	cmp	r6, r0
	blt	.L17
	ldr	r6, [r5, #36]
	mov	lr, pc
	bx	r7
	mov	r5, r0
	mov	r2, #0
	ldr	r1, .L32+12
	ldr	r0, .L32+20
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+24
	mov	r0, r5
	mov	r1, r6
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #1
	sub	r1, r3, r1
	cmp	r1, #0
	bgt	.L25
.L21:
	mov	r3, #0
	str	r3, [r4, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L28:
	ldr	r7, .L32
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	ldr	r8, .L32+28
	mov	lr, pc
	bx	r8
	ldr	r3, .L32+8
	smull	r1, r2, r3, r6
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
	bge	.L31
.L17:
	mov	r2, #0
	ldr	r1, .L32+32
	ldr	r0, .L32+36
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L31:
	ldr	r1, .L32+12
	mov	r2, #0
	ldr	r0, .L32+20
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L32+40
	str	r2, [r3]
	mov	lr, pc
	bx	r7
	mov	r1, #3
	rsbs	r2, r0, #0
	and	r3, r0, #15
	mov	r0, r5
	and	r2, r2, #15
	ldr	lr, .L32+44
	ldr	ip, .L32+48
	rsbpl	r3, r2, #0
.L27:
	str	r3, [lr]
	ldr	r6, [ip, #36]
	mov	lr, pc
	bx	r8
	mov	r5, r0
	mov	lr, pc
	bx	r7
.L26:
	ldr	r3, .L32+24
	mov	r1, r6
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #1
	add	r1, r1, r5
	sub	r1, r3, r1
	cmp	r1, #0
	bgt	.L25
	b	.L21
.L29:
	ldr	r7, .L32
	mov	lr, pc
	bx	r7
	mov	r6, r0
	mov	r1, #2
	mov	r0, r5
	ldr	r8, .L32+28
	mov	lr, pc
	bx	r8
	ldr	r3, .L32+8
	smull	r1, r2, r3, r6
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
	blt	.L17
	ldr	r1, .L32+12
	mov	r2, #0
	ldr	r0, .L32+20
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L32+40
	str	r2, [r3]
	mov	lr, pc
	bx	r7
	rsbs	r2, r0, #0
	and	r2, r2, #15
	and	r3, r0, #15
	mov	r1, #2
	mov	r0, r5
	ldr	lr, .L32+44
	ldr	ip, .L32+48
	rsbpl	r3, r2, #0
	b	.L27
.L30:
	ldr	r8, .L32
	mov	lr, pc
	bx	r8
	mov	r7, r0
	mov	r1, r6
	mov	r0, r5
	ldr	r9, .L32+28
	mov	lr, pc
	bx	r9
	ldr	r3, .L32+8
	smull	r1, r2, r3, r7
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
	blt	.L17
	ldr	r1, .L32+12
	mov	r2, #0
	ldr	r0, .L32+20
	ldr	r3, .L32+16
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L32+40
	str	r2, [r3]
	mov	lr, pc
	bx	r8
	rsbs	r2, r0, #0
	ldr	lr, .L32+44
	ldr	ip, .L32+48
	and	r2, r2, #15
	and	r3, r0, #15
	mov	r1, r6
	rsbpl	r3, r2, #0
	mov	r0, r5
	str	r3, [lr]
	ldr	r6, [ip, #36]
	mov	lr, pc
	bx	r9
	mov	r5, r0
	mov	lr, pc
	bx	r8
	b	.L26
.L33:
	.align	2
.L32:
	.word	rand
	.word	statEquipped
	.word	1717986919
	.word	22180
	.word	playSoundB
	.word	hitsound
	.word	__aeabi_idivmod
	.word	statMod
	.word	22050
	.word	dodgesound
	.word	anitimer
	.word	anicounter
	.word	player
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
	ldr	r2, .L96
	push	{r4, r5, r6, lr}
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #600
	str	r3, [r2]
	sub	sp, sp, #8
	beq	.L92
.L35:
	ldr	r4, .L96+4
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bgt	.L36
	mov	r1, #0
	ldr	r3, .L96+8
	ldr	r3, [r3]
	ldr	r2, .L96+12
	add	r3, r3, r3, lsl #1
	add	r3, r2, r3, lsl #6
	ldr	r2, [r3, #4]
	cmp	r2, #6
	str	r1, [r4, #124]
	beq	.L93
	cmp	r2, #3
	moveq	ip, #4
	movne	ip, #0
	ldr	r1, .L96+16
	ldr	r2, [r1]
	ldr	r0, .L96+20
	add	r2, r2, #1
	str	ip, [r3, #4]
	str	r2, [r1]
	mov	lr, pc
	bx	r0
.L34:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	ldr	r5, .L96+24
	ldr	r3, .L96+28
	mov	lr, pc
	bx	r3
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L40
	ldr	r3, .L96+32
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L94
.L41:
	tst	r3, #2
	beq	.L46
	ldr	r1, .L96+36
	ldrh	r1, [r1]
	ands	r1, r1, #2
	bne	.L46
	mov	r0, #4
	str	r1, [sp, #4]
	ldr	ip, [sp, #4]
	ldr	r3, .L96+40
	cmp	ip, #1000
	str	r0, [r3, #40]
	bgt	.L34
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
.L91:
	cmp	r1, #0
	strne	r2, [r5]
	b	.L34
.L40:
	cmp	r2, #1
	bne	.L34
	ldr	r3, .L96+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+48
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	ldr	r2, [r4, #8]
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r2, r2, #17
	sub	r3, r0, r3, lsl #2
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L50
.L52:
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L51
.L92:
	ldr	r3, .L96+44
	mov	lr, pc
	bx	r3
	rsbs	r3, r0, #0
	ldr	r2, .L96+52
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	str	r0, [r2]
	b	.L35
.L93:
	ldr	r3, .L96+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+60
	mov	lr, pc
	bx	r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	ldr	r1, .L96+36
	ldrh	r1, [r1]
	ands	r6, r1, #1
	bne	.L41
	ldr	r0, .L96+40
	mov	r1, r4
	str	r6, [r0, #40]
	bl	attack
	str	r6, [sp]
	ldr	r3, [sp]
	cmp	r3, #1000
	bgt	.L34
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
	b	.L91
.L46:
	tst	r3, #8
	beq	.L49
	ldr	r2, .L96+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L95
.L49:
	tst	r3, #512
	beq	.L34
	ldr	r3, .L96+36
	ldrh	r3, [r3]
	tst	r3, #512
	ldreq	r3, .L96+40
	ldreq	r2, [r3, #12]
	streq	r2, [r3, #16]
	b	.L34
.L95:
	ldr	r3, .L96+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+72
	mov	lr, pc
	bx	r3
	b	.L34
.L51:
	ldr	r2, [r4, #12]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #16]
	cmp	r1, r2, asr #2
	ble	.L87
.L64:
	cmp	r3, #59
	bgt	.L58
.L59:
	mov	r2, #4
	mov	r3, #0
	str	r2, [r4, #40]
	str	r3, [r5]
	b	.L34
.L53:
	ldr	r2, [r4, #12]
	ldr	r1, .L96+76
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #16]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L89
	cmp	r3, #74
	ble	.L59
.L58:
	mov	r6, #0
	ldr	r1, .L96+80
	mov	r2, r6
	ldr	r0, .L96+84
	ldr	r3, .L96+88
	mov	lr, pc
	bx	r3
	ldr	r1, .L96+40
	ldr	r0, .L96+4
	str	r6, [r4, #40]
	bl	attack
	str	r6, [r5]
	b	.L34
.L54:
	ldr	r1, [r4, #12]
	ldr	r2, .L96+92
	smull	r0, r2, r1, r2
	ldr	r0, [r4, #16]
	sub	r2, r2, r1, asr #31
	cmp	r0, r2
	ble	.L64
.L88:
	cmp	r3, #39
	ble	.L59
	b	.L58
.L55:
	ldr	r2, [r4, #12]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #16]
	cmp	r1, r2, asr #2
	ble	.L88
.L87:
	cmp	r3, #19
	ble	.L59
	b	.L58
.L56:
	ldr	r2, [r4, #12]
	ldr	r1, .L96+76
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #16]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L87
	cmp	r3, #49
	ble	.L59
	b	.L58
.L50:
	ldr	r2, [r4, #12]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #16]
	cmp	r1, r2, asr #2
	ble	.L64
.L89:
	cmp	r3, #29
	ble	.L59
	b	.L58
.L97:
	.align	2
.L96:
	.word	anitimer
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
	.word	anicounter
	.word	stopSound
	.word	goToWin
	.word	pauseSoundA
	.word	stopSoundB
	.word	goToCombatPause
	.word	1717986919
	.word	22180
	.word	attacksound
	.word	playSoundB
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
	.comm	enemyChar,128,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
