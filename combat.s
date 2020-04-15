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
	ldr	r1, [r3]
	ldr	r3, .L4+4
	add	r1, r1, r1, lsl #1
	add	r1, r1, r1, lsl #5
	add	r1, r3, r1, lsl #3
	mov	r2, #728
	push	{r4, lr}
	ldr	r3, .L4+8
	ldr	r0, .L4+12
	add	r1, r1, #48
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	currRoom
	.word	dungeon
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
	@ link register save eliminated.
	bx	lr
	.size	drawCombat, .-drawCombat
	.align	2
	.global	attack
	.syntax unified
	.arm
	.fpu softvfp
	.type	attack, %function
attack:
	@ Function supports interworking.
	@ args = 1456, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #724
	add	r4, sp, #760
	cmp	r0, #1
	stm	r4, {r0, r1, r2, r3}
	ldr	r6, [sp, #1516]
	ldr	r7, [sp, #1524]
	beq	.L19
	cmp	r0, #2
	mov	r5, r0
	beq	.L20
	cmp	r0, #0
	beq	.L21
	ldr	r3, [sp, #764]
	sub	r3, r3, #16
	cmp	r3, #3
	ldr	r5, .L22
	bhi	.L14
	mov	lr, pc
	bx	r5
	mov	ip, #4
	mov	r4, r0
	mov	r2, #712
	ldr	r3, .L22+4
	str	ip, [sp, #712]
	add	r1, sp, #1504
	mov	r0, sp
	mov	lr, pc
	bx	r3
	add	r3, sp, #1488
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L22+8
	mov	lr, pc
	bx	r6
	ldr	r3, .L22+12
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r4, r4, r3, lsl #2
	add	r7, r0, r7
	add	r4, r4, #3
	cmp	r4, r7
	bge	.L15
.L7:
	add	sp, sp, #724
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #16
	bx	lr
.L21:
	ldr	r8, .L22
	mov	lr, pc
	bx	r8
	mov	fp, #1
	mov	r5, r0
	mov	r2, #712
	add	r1, sp, #776
	mov	r0, sp
	ldr	r10, .L22+4
	str	fp, [sp, #712]
	mov	lr, pc
	bx	r10
	ldr	r9, .L22+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r9
	ldr	r3, .L22+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r5, r5, r3, lsl #2
	add	r5, r5, fp
	add	r6, r6, r7
	add	r5, r5, r0
	cmp	r5, r6
	blt	.L7
.L17:
	add	r1, sp, #776
	mov	r2, #712
	mov	r0, sp
	str	fp, [sp, #712]
	mov	lr, pc
	bx	r10
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	add	sp, sp, #724
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #16
	bx	lr
.L14:
	mov	lr, pc
	bx	r5
	mov	ip, #4
	mov	r4, r0
	mov	r2, #712
	ldr	r3, .L22+4
	str	ip, [sp, #712]
	add	r1, sp, #1504
	mov	r0, sp
	mov	lr, pc
	bx	r3
	add	r3, sp, #1488
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L22+8
	mov	lr, pc
	bx	r6
	ldr	r3, .L22+12
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r4, r4, r3, lsl #2
	add	r7, r0, r7
	add	r4, r4, #1
	cmp	r4, r7
	blt	.L7
.L15:
	mov	lr, pc
	bx	r5
	add	sp, sp, #724
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #16
	bx	lr
.L19:
	ldr	r8, .L22
	mov	lr, pc
	bx	r8
	mov	fp, #3
	mov	r5, r0
	mov	r2, #712
	add	r1, sp, #776
	mov	r0, sp
	ldr	r10, .L22+4
	str	fp, [sp, #712]
	mov	lr, pc
	bx	r10
	ldr	r9, .L22+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r9
	ldr	r3, .L22+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr fp
	add	r3, r3, r3, lsl #2
	sub	r5, r5, r3, lsl #2
	add	r5, r5, #1
	add	r6, r6, r7
	add	r5, r5, r0
	cmp	r5, r6
	bge	.L17
	add	sp, sp, #724
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	sp, sp, #16
	bx	lr
.L20:
	ldr	r9, .L22
	mov	lr, pc
	bx	r9
	mov	r8, r0
	mov	r2, #712
	add	r1, sp, #776
	mov	r0, sp
	ldr	fp, .L22+4
	str	r5, [sp, #712]
	mov	lr, pc
	bx	fp
	ldr	r10, .L22+16
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r10
	ldr	r3, .L22+12
	smull	r1, r2, r3, r8
	asr	r3, r8, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r8, r8, r3, lsl #2
	add	r8, r8, #1
	add	r6, r6, r7
	add	r8, r8, r0
	cmp	r8, r6
	blt	.L7
	add	r1, sp, #776
	mov	r2, #712
	mov	r0, sp
	str	r5, [sp, #712]
	mov	lr, pc
	bx	fp
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	b	.L7
.L23:
	.align	2
.L22:
	.word	rand
	.word	memcpy
	.word	statEquipped
	.word	1717986919
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L68
	ldr	r2, [r4, #12]
	cmp	r2, #0
	sub	sp, sp, #1440
	bne	.L25
	ldr	r3, .L68+4
	ldr	r3, [r3]
	ldr	r1, .L68+8
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r1, r3, lsl #3
	ldr	r1, [r3, #4]
	cmp	r1, #6
	beq	.L64
	cmp	r1, #3
	moveq	r2, #4
	ldr	r0, .L68+12
	ldr	r1, [r0]
	ldr	r4, .L68+16
	add	r1, r1, #1
	str	r2, [r3, #4]
	str	r1, [r0]
	mov	lr, pc
	bx	r4
.L24:
	add	sp, sp, #1440
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	ldr	r5, .L68+20
	ldr	r3, .L68+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L29
	ldr	r3, .L68+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L30
	ldr	r2, .L68+32
	ldrh	r2, [r2]
	ands	ip, r2, #1
	beq	.L65
.L30:
	tst	r3, #2
	beq	.L31
	ldr	r2, .L68+32
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L66
.L31:
	tst	r3, #8
	beq	.L32
	ldr	r3, .L68+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
.L32:
	ldr	r3, .L68+36
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L24
	ldr	r0, .L68+4
	ldr	r2, [r0]
	ldr	r1, .L68+8
	add	r3, r2, r2, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r1, r3, lsl #3
	ldr	r3, [r3, #4]
	cmp	r3, #6
	beq	.L24
	sub	r2, r2, #1
	ldr	r3, .L68+16
	str	r2, [r0]
	mov	lr, pc
	bx	r3
	b	.L24
.L29:
	cmp	r3, #1
	bne	.L24
	ldr	r3, .L68+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+44
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
	b	.L33
.L35:
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L34
.L64:
	ldr	r3, .L68+48
	mov	lr, pc
	bx	r3
	add	sp, sp, #1440
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	mov	r2, #4
	ldr	r3, .L68+52
	str	r2, [r3, #36]
	b	.L24
.L67:
	mov	r2, #712
	mov	r0, sp
	ldr	r1, .L68+56
	ldr	r3, .L68+60
	mov	lr, pc
	bx	r3
	ldm	r4, {r0, r1, r2, r3}
	ldr	r4, .L68+64
	mov	lr, pc
	bx	r4
	b	.L24
.L34:
	ldr	r2, [r4, #8]
	ldr	r1, .L68+68
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L63
	cmp	r3, #74
	bgt	.L40
.L42:
	mov	r3, #4
	str	r3, [r4, #36]
.L41:
	mov	r3, #0
	str	r3, [r5]
	b	.L24
.L36:
	ldr	r1, [r4, #8]
	ldr	r2, .L68+72
	smull	r0, r2, r1, r2
	ldr	r0, [r4, #12]
	sub	r2, r2, r1, asr #31
	cmp	r0, r2
	bgt	.L62
.L46:
	cmp	r3, #59
	ble	.L42
.L40:
	mov	r3, #0
	ldr	r6, .L68+60
	mov	r2, #728
	ldr	r1, .L68+52
	add	r0, sp, #712
	str	r3, [r4, #36]
	mov	lr, pc
	bx	r6
	mov	r2, #712
	mov	r0, sp
	ldr	r1, .L68+56
	mov	lr, pc
	bx	r6
	ldm	r4, {r0, r1, r2, r3}
	bl	attack
	b	.L41
.L38:
	ldr	r2, [r4, #8]
	ldr	r1, .L68+68
	smull	r0, r1, r2, r1
	ldr	r0, [r4, #12]
	asr	r2, r2, #31
	rsb	r2, r2, r1, asr #1
	cmp	r0, r2
	bgt	.L61
	cmp	r3, #49
	ble	.L42
	b	.L40
.L37:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L62
.L61:
	cmp	r3, #19
	ble	.L42
	b	.L40
.L65:
	ldr	r5, .L68+52
	mov	r1, r4
	mov	r2, #728
	ldr	r4, .L68+60
	add	r0, sp, #712
	str	ip, [r5, #36]
	mov	lr, pc
	bx	r4
	add	r1, r5, #16
	mov	r2, #712
	mov	r0, sp
	mov	lr, pc
	bx	r4
	ldm	r5, {r0, r1, r2, r3}
	bl	attack
	b	.L24
.L62:
	cmp	r3, #39
	ble	.L42
	b	.L40
.L33:
	ldr	r2, [r4, #8]
	add	r1, r2, #3
	cmp	r2, #0
	movlt	r2, r1
	ldr	r1, [r4, #12]
	cmp	r1, r2, asr #2
	ble	.L46
.L63:
	cmp	r3, #29
	ble	.L42
	b	.L40
.L69:
	.align	2
.L68:
	.word	enemyChar
	.word	currRoom
	.word	dungeon
	.word	turnCount
	.word	goToGame
	.word	turn
	.word	checkDeath
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	rand
	.word	1374389535
	.word	goToWin
	.word	player
	.word	enemyChar+16
	.word	memcpy
	.word	goToCombatPause
	.word	1717986919
	.word	1431655766
	.size	updateCombat, .-updateCombat
	.global	__aeabi_idivmod
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
	ldr	r3, .L72
	mov	r4, r1
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L72+4
	mov	lr, pc
	bx	r3
	add	r0, r1, #1
	add	r0, r0, r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	rand
	.word	__aeabi_idivmod
	.size	rollDmg, .-rollDmg
	.comm	turn,4,4
	.comm	enemyChar,728,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
