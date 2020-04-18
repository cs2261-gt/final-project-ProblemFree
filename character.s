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
	mov	fp, #2
	mov	r6, #20
	ldr	ip, .L6
	ldr	lr, .L6+4
	mov	r8, #8
	mov	r9, #10
	mov	r7, #50
	add	r4, ip, #8
	mov	r10, #12
	ldmia	r4!, {r0, r1, r2, r3}
	add	r5, lr, #40
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	add	ip, ip, #88
	stm	r5, {r0, r1}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, lr, #80
	stmia	r4!, {r0, r1, r2, r3}
	str	fp, [lr]
	str	r6, [lr, #4]
	ldmia	ip!, {r0, r1, r2, r3}
	mov	r6, #32
	stmia	r4!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	add	fp, lr, #40
	stm	r4, {r0, r1}
	ldr	ip, .L6+8
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	str	r10, [lr, #16]
	str	r9, [lr, #28]
	str	r9, [lr, #20]
	str	r8, [lr, #24]
	str	r8, [lr, #32]
	str	r7, [lr, #8]
	str	r7, [lr, #12]
	stmia	ip!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	add	lr, lr, #80
	stm	ip, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r5, ip, r8
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	stm	r5, {r0, r1}
	sub	r3, ip, #32
	add	ip, ip, #488
.L2:
	str	r6, [r3, #80]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	itemList+1152
	.word	player
	.word	backpack
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L25
	ldrh	r3, [r3]
	tst	r3, #32
	push	{r4, r5, lr}
	beq	.L9
	ldr	r2, .L25+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L24
.L9:
	tst	r3, #64
	beq	.L12
	ldr	r2, .L25+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L12
	ldr	r5, .L25+8
	ldr	r4, [r5]
	ldr	r3, .L25+12
	add	r4, r4, #1
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r4, r3, lsl #1
	ldr	ip, .L25+16
	add	r3, r3, #9
	add	r3, r3, r3, lsl #2
	add	ip, ip, r3, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	lr, .L25+20
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	str	r4, [r5]
.L8:
	pop	{r4, r5, lr}
	bx	lr
.L12:
	tst	r3, #128
	beq	.L8
	ldr	r3, .L25+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L8
	ldr	r5, .L25+8
	ldr	r4, [r5]
	ldr	r3, .L25+12
	sub	r4, r4, #1
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r4, r3, lsl #1
	ldr	ip, .L25+16
	add	r3, r3, #9
	add	r3, r3, r3, lsl #2
	add	ip, ip, r3, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	lr, .L25+20
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	str	r4, [r5]
	stm	lr, {r0, r1}
	pop	{r4, r5, lr}
	bx	lr
.L24:
	ldr	r1, .L25+24
	ldr	r2, [r1]
	cmp	r2, #2
	moveq	r2, #1
	streq	r2, [r1]
	beq	.L9
	cmp	r2, #1
	moveq	r2, #3
	streq	r2, [r1]
	beq	.L9
	cmp	r2, #3
	moveq	r2, #2
	streq	r2, [r1]
	b	.L9
.L26:
	.align	2
.L25:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	1717986919
	.word	itemList
	.word	player+40
	.word	player
	.size	updatePlayer, .-updatePlayer
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
	ldr	r0, .L38
	ldr	r3, [r0, #12]
	cmp	r3, #0
	bxne	lr
	ldr	ip, .L38+4
	mov	r2, ip
.L31:
	ldr	r1, [r2]
	cmp	r1, #25
	beq	.L37
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L31
	push	{r4, lr}
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L37:
	mov	r1, #32
	ldr	r2, [r0, #8]
	add	r3, r3, r3, lsl #2
	str	r1, [ip, r3, lsl #3]
	str	r2, [r0, #12]
	bx	lr
.L39:
	.align	2
.L38:
	.word	player
	.word	backpack
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
	ldr	r3, .L64
	orr	r1, r1, #16384
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	cmp	r0, #19
	ldrls	pc, [pc, r0, asl #2]
	b	.L41
.L44:
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L57
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L51
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L43
.L43:
	mov	r2, #70
	strh	r2, [r3, #20]	@ movhi
.L41:
	bx	lr
.L45:
	mov	r2, #68
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L46:
	mov	r2, #66
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L47:
	mov	r2, #64
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L48:
	mov	r2, #30
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L49:
	mov	r2, #28
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L50:
	mov	r2, #26
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L51:
	mov	r2, #24
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L52:
	mov	r2, #22
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L53:
	mov	r2, #20
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L54:
	mov	r2, #18
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L55:
	mov	r2, #16
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L56:
	mov	r2, #14
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L57:
	mov	r2, #12
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L58:
	mov	r2, #10
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L59:
	mov	r2, #8
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L60:
	mov	r2, #6
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L61:
	mov	r2, #4
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L62:
	mov	r2, #2
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L63:
	mov	r2, #0
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L68
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L68+4
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
.L69:
	.align	2
.L68:
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
	ldr	r3, .L72
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L72+4
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
.L73:
	.align	2
.L72:
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
	b	.L74
.L77:
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L76
.L80:
	ldr	r3, [r0, #24]
	add	r2, r3, r2
	str	r2, [r0, #24]
.L74:
	bx	lr
.L76:
	ldr	r3, [r0, #28]
	add	r2, r3, r2
	str	r2, [r0, #28]
	bx	lr
.L81:
	ldr	r3, [r0, #8]
	add	r2, r3, r2
	str	r2, [r0, #8]
	bx	lr
.L79:
	ldr	r3, [r0, #20]
	add	r2, r3, r2
	str	r2, [r0, #20]
	bx	lr
.L78:
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
	b	.L83
.L85:
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L84
.L84:
	ldr	r3, [r0, #28]
	ldr	r0, [r0, #100]
	add	r0, r3, r0
	bx	lr
.L86:
	ldr	r3, [r0, #16]
	ldr	r1, [r0, #88]
	ldr	r2, [r0, #48]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L87:
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L88:
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L83:
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
	cmp	r1, #2
	beq	.L93
	cmp	r1, #3
	beq	.L94
	cmp	r1, #1
	bxne	lr
	ldr	r0, [r0, #24]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L94:
	ldr	r0, [r0, #16]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L93:
	ldr	r0, [r0, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
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
	ldr	r3, .L101
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
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
.L102:
	.align	2
.L101:
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
	ldr	r3, .L105
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
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
.L106:
	.align	2
.L105:
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
	ldr	r3, .L109
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+4
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
.L110:
	.align	2
.L109:
	.word	rand
	.word	1717986919
	.size	strDiceRoll, .-strDiceRoll
	.comm	enemyList,2640,4
	.comm	mindflayer,132,4
	.comm	wizard,132,4
	.comm	dragon,132,4
	.comm	beholder,132,4
	.comm	zombie,132,4
	.comm	vampire,132,4
	.comm	troll,132,4
	.comm	skeleton,132,4
	.comm	slime,132,4
	.comm	orc,132,4
	.comm	mimic,132,4
	.comm	kobold,132,4
	.comm	homunculus,132,4
	.comm	goblin,132,4
	.comm	golem,132,4
	.comm	elemental,132,4
	.comm	drow,132,4
	.comm	chimera,132,4
	.comm	apprentice,132,4
	.comm	abomination,132,4
	.global	weaponSlider
	.comm	backpack,600,4
	.comm	player,132,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	weaponSlider, %object
	.size	weaponSlider, 4
weaponSlider:
	.word	209
	.ident	"GCC: (devkitARM release 53) 9.1.0"
