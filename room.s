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
	.file	"room.c"
	.text
	.align	2
	.global	placeCommon
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeCommon, %function
placeCommon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	mov	r5, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L4+4
	add	r0, r0, r0, lsl #2
	ldr	r4, .L4+8
	add	r5, r5, r5, lsl #1
	add	ip, ip, r0, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, r5, lsl #6
	add	lr, r4, #8
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	ldr	r3, .L4+12
	stm	lr, {r0, r1}
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #9
	str	r0, [r4, #180]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	randomCommon
	.word	itemList
	.word	dungeon
	.word	rand
	.word	715827883
	.size	placeCommon, .-placeCommon
	.align	2
	.global	placeRare
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeRare, %function
placeRare:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	r5, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L8+4
	add	r0, r0, r0, lsl #2
	ldr	r4, .L8+8
	add	r5, r5, r5, lsl #1
	add	ip, ip, r0, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, r5, lsl #6
	add	lr, r4, #8
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	ldr	r3, .L8+12
	stm	lr, {r0, r1}
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+16
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #13
	str	r0, [r4, #180]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	randomRare
	.word	itemList
	.word	dungeon
	.word	rand
	.word	715827883
	.size	placeRare, .-placeRare
	.align	2
	.global	placeAny
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeAny, %function
placeAny:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	mov	r5, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L12+4
	add	r0, r0, r0, lsl #2
	ldr	r4, .L12+8
	add	r5, r5, r5, lsl #1
	add	ip, ip, r0, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, r5, lsl #6
	add	lr, r4, #8
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	ldr	r3, .L12+12
	stm	lr, {r0, r1}
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+16
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #11
	str	r0, [r4, #180]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	randomAll
	.word	itemList
	.word	dungeon
	.word	rand
	.word	715827883
	.size	placeAny, .-placeAny
	.align	2
	.global	placeTrap
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeTrap, %function
placeTrap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L16
	mov	r4, r0
	mov	lr, pc
	bx	r5
	ldr	r3, .L16+4
	add	r4, r4, r4, lsl #1
	add	r4, r3, r4, lsl #6
	and	r0, r0, #1
	str	r0, [r4, #176]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #11
	str	r0, [r4, #184]
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	rand
	.word	dungeon
	.size	placeTrap, .-placeTrap
	.align	2
	.global	placeEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeEnemy, %function
placeEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r2, .L20+4
	smull	r1, r3, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #3
	ldr	r1, .L20+8
	add	r2, r2, r2, lsl #4
	sub	r2, r0, r2
	add	r2, r1, r2, lsl #7
	ldr	r3, .L20+12
	ldr	lr, [r2, #8]
	ldr	ip, [r2, #20]
	ldr	r1, [r2, #24]
	add	r0, r4, r4, lsl #1
	add	r0, r3, r0, lsl #6
	ldr	r4, [r2, #28]
	str	lr, [r0, #56]
	str	ip, [r0, #68]
	ldr	lr, [r2, #32]
	ldr	ip, [r2, #12]
	str	r1, [r0, #72]
	ldr	r3, [r2, #36]
	ldr	r1, [r2, #16]
	str	r4, [r0, #76]
	str	lr, [r0, #80]
	str	ip, [r0, #60]
	str	r1, [r0, #64]
	str	r3, [r0, #84]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	rand
	.word	2021161081
	.word	enemyList
	.word	dungeon
	.size	placeEnemy, .-placeEnemy
	.align	2
	.global	placeGoblinoid
	.syntax unified
	.arm
	.fpu softvfp
	.type	placeGoblinoid, %function
placeGoblinoid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L29
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	subs	r3, r0, r3
	bne	.L23
	ldr	r2, .L29+8
	ldr	r3, .L29+12
	ldr	ip, [r2, #776]
	ldr	r1, [r2, #792]
	ldr	r5, [r2, #788]
	add	r4, r4, r4, lsl #1
	add	r4, r3, r4, lsl #6
	str	ip, [r4, #56]
	str	r1, [r4, #72]
	ldr	lr, [r2, #796]
	ldr	ip, [r2, #800]
	str	r5, [r4, #68]
	ldr	r0, [r2, #780]
	ldr	r1, [r2, #784]
	ldr	r3, [r2, #804]
.L27:
	str	lr, [r4, #76]
	str	ip, [r4, #80]
	str	r0, [r4, #60]
	str	r1, [r4, #64]
	str	r3, [r4, #84]
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	cmp	r3, #1
	beq	.L28
	cmp	r3, #2
	bne	.L22
	ldr	r2, .L29+8
	ldr	r3, .L29+12
	ldr	ip, [r2, #1672]
	ldr	r0, [r2, #1684]
	ldr	r1, [r2, #1688]
	add	r4, r4, r4, lsl #1
	add	r4, r3, r4, lsl #6
	str	ip, [r4, #56]
	str	r0, [r4, #68]
	str	r1, [r4, #72]
	ldr	lr, [r2, #1692]
	ldr	ip, [r2, #1696]
	ldr	r0, [r2, #1676]
	ldr	r1, [r2, #1680]
	ldr	r3, [r2, #1700]
	b	.L27
.L28:
	ldr	r2, .L29+8
	ldr	r3, .L29+12
	ldr	ip, [r2, #1288]
	ldr	r1, [r2, #1304]
	ldr	r5, [r2, #1300]
	add	r4, r4, r4, lsl #1
	add	r4, r3, r4, lsl #6
	str	ip, [r4, #56]
	str	r1, [r4, #72]
	ldr	lr, [r2, #1308]
	ldr	ip, [r2, #1312]
	str	r5, [r4, #68]
	ldr	r0, [r2, #1292]
	ldr	r1, [r2, #1296]
	ldr	r3, [r2, #1316]
	b	.L27
.L30:
	.align	2
.L29:
	.word	rand
	.word	1431655766
	.word	enemyList
	.word	dungeon
	.size	placeGoblinoid, .-placeGoblinoid
	.align	2
	.global	initDungeon
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDungeon, %function
initDungeon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #16
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L78
	ldr	r4, .L78+4
	str	r3, [r6]
	sub	sp, sp, #44
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #59
	movle	r3, #0
	strle	r3, [r6, #4]
	ble	.L33
	cmp	r3, #94
	movle	r3, #4
	movgt	r3, #5
	str	r3, [r6, #4]
.L33:
	mov	r2, #17
	mov	r3, #6
	ldr	r5, .L78+12
	ldr	r1, [r5]
	cmp	r1, #0
	str	r2, [r6, #2112]
	str	r3, [r6, #2116]
	beq	.L35
	ldr	r3, .L78+16
	ldr	r2, [r3, #2696]
	ldr	r1, [r3, #2708]
	str	r2, [r6, #2168]
	ldr	r2, [r3, #2712]
	str	r1, [r6, #2180]
	str	r2, [r6, #2184]
	ldr	r1, [r3, #2716]
	ldr	r2, [r3, #2720]
	str	r1, [r6, #2188]
	str	r2, [r6, #2192]
	ldr	r1, [r3, #2700]
	ldr	r2, [r3, #2704]
	ldr	r3, [r3, #2724]
	str	r1, [r6, #2172]
	str	r2, [r6, #2176]
	str	r3, [r6, #2196]
.L37:
	mov	r6, #0
	add	r7, sp, #36
.L36:
	mov	lr, pc
	bx	r4
	sub	r1, sp, #4
	mov	r3, r1
	rsbs	r2, r0, #0
	and	r2, r2, #15
	and	r0, r0, #15
	rsbpl	r0, r2, #0
.L39:
	ldr	r2, [r3, #4]!
	cmp	r2, r0
	beq	.L38
	cmp	r3, r7
	bne	.L39
	add	r3, sp, #40
	add	r3, r3, r6, lsl #2
	add	r6, r6, #1
	cmp	r6, #10
	str	r0, [r3, #-40]
	bne	.L36
.L61:
	ldr	r6, .L78
	mov	r3, r6
.L42:
	ldr	r2, [r1, #4]!
	cmp	r1, r7
	str	r2, [r3, #192]!
	bne	.L42
	mov	r7, #1
	ldr	r8, .L78+8
	ldr	r10, .L78+20
	ldr	r9, .L78+24
	b	.L60
.L76:
	mov	r3, #1
	cmp	r2, #0
	str	r3, [r6, #196]
	bne	.L73
	mov	r0, r7
	bl	placeEnemy
.L44:
	ldr	r3, [r6, #192]
	cmp	r3, #10
	beq	.L74
.L59:
	add	r7, r7, #1
	cmp	r7, #11
	add	r6, r6, #192
	beq	.L75
.L60:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #9
	movls	r3, #0
	strls	r3, [r6, #196]
	bls	.L44
	sub	r2, r3, #10
	cmp	r2, #19
	ldr	r2, [r5]
	bls	.L76
	sub	r1, r3, #30
	cmp	r1, #19
	movls	r3, #2
	strls	r3, [r6, #196]
	bls	.L67
	sub	r1, r3, #50
	cmp	r1, #19
	bhi	.L51
	mov	r3, #3
	cmp	r2, #0
	str	r3, [r6, #196]
	bne	.L77
	mov	r0, r7
	bl	placeEnemy
	mov	r0, r7
	bl	placeAny
	ldr	r3, [r6, #192]
	cmp	r3, #10
	bne	.L59
.L74:
	mov	r3, #5
	str	r3, [r6, #196]
	mov	lr, pc
	bx	r10
	mov	lr, #0
	add	r0, r0, r0, lsl #2
	add	ip, r9, r0, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	add	fp, r6, #200
	stmia	fp!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	fp!, {r0, r1, r2, r3}
	add	r7, r7, #1
	ldm	ip, {r0, r1}
	cmp	r7, #11
	stm	fp, {r0, r1}
	add	r6, r6, #192
	str	lr, [r6, #180]
	bne	.L60
.L75:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L38:
	cmp	r6, #9
	ble	.L36
	b	.L61
.L67:
	mov	r0, r7
	bl	placeTrap
	b	.L44
.L73:
	mov	r0, r7
	bl	placeGoblinoid
	b	.L44
.L77:
	mov	r0, r7
	bl	placeGoblinoid
	mov	r0, r7
	bl	placeAny
	b	.L44
.L51:
	sub	r3, r3, #70
	cmp	r3, #24
	movls	r3, #4
	movhi	r3, #5
	strls	r3, [r6, #196]
	strhi	r3, [r6, #196]
	bhi	.L70
	mov	r0, r7
	bl	placeCommon
	b	.L44
.L70:
	mov	r0, r7
	bl	placeRare
	b	.L44
.L35:
	mov	lr, pc
	bx	r4
	rsbs	r2, r0, #0
	and	r2, r2, #3
	and	r3, r0, #3
	rsbpl	r3, r2, #0
	ldr	r2, .L78+16
	add	r3, r3, #17
	add	r3, r2, r3, lsl #7
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #20]
	str	r2, [r6, #2168]
	ldr	r2, [r3, #24]
	str	r1, [r6, #2180]
	str	r2, [r6, #2184]
	ldr	r1, [r3, #28]
	ldr	r2, [r3, #32]
	str	r1, [r6, #2188]
	str	r2, [r6, #2192]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r3, #36]
	str	r1, [r6, #2172]
	str	r2, [r6, #2176]
	str	r3, [r6, #2196]
	b	.L37
.L79:
	.align	2
.L78:
	.word	dungeon
	.word	rand
	.word	1374389535
	.word	goblinMode
	.word	enemyList
	.word	randomRare
	.word	itemList
	.size	initDungeon, .-initDungeon
	.align	2
	.global	loadRoomData
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadRoomData, %function
loadRoomData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L102
	add	r0, r0, r0, lsl #1
	ldr	r3, [r3, r0, lsl #6]
	push	{r4, lr}
	cmp	r3, #17
	ldrls	pc, [pc, r3, asl #2]
	b	.L80
.L83:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L82
.L82:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+16
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L102+24
	ldr	r1, .L102+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L102+32
	ldr	r2, .L102+36
	ldr	r1, .L102+40
	mov	lr, pc
	bx	r4
.L80:
	pop	{r4, lr}
	bx	lr
.L100:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+44
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+48
	ldr	r1, .L102+52
	mov	lr, pc
	bx	r4
	b	.L80
.L99:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+56
	mov	lr, pc
	bx	r4
	mov	r3, #2176
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+60
	mov	lr, pc
	bx	r4
	b	.L80
.L98:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+64
	mov	lr, pc
	bx	r4
	mov	r3, #2688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+68
	mov	lr, pc
	bx	r4
	b	.L80
.L97:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+72
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+76
	ldr	r1, .L102+80
	mov	lr, pc
	bx	r4
	b	.L80
.L96:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+84
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+88
	ldr	r1, .L102+92
	mov	lr, pc
	bx	r4
	b	.L80
.L95:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+96
	mov	lr, pc
	bx	r4
	mov	r3, #3024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+100
	mov	lr, pc
	bx	r4
	b	.L80
.L94:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+104
	mov	lr, pc
	bx	r4
	mov	r3, #2576
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+108
	mov	lr, pc
	bx	r4
	b	.L80
.L93:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+112
	mov	lr, pc
	bx	r4
	mov	r3, #2064
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+116
	mov	lr, pc
	bx	r4
	b	.L80
.L92:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+120
	mov	lr, pc
	bx	r4
	mov	r3, #4608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+124
	mov	lr, pc
	bx	r4
	b	.L80
.L91:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+128
	mov	lr, pc
	bx	r4
	mov	r3, #3008
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+132
	mov	lr, pc
	bx	r4
	b	.L80
.L90:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+136
	mov	lr, pc
	bx	r4
	mov	r3, #2688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+140
	mov	lr, pc
	bx	r4
	b	.L80
.L89:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+144
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+148
	ldr	r1, .L102+152
	mov	lr, pc
	bx	r4
	b	.L80
.L88:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+156
	mov	lr, pc
	bx	r4
	mov	r3, #2464
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+160
	mov	lr, pc
	bx	r4
	b	.L80
.L87:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+164
	mov	lr, pc
	bx	r4
	mov	r3, #2432
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+168
	mov	lr, pc
	bx	r4
	b	.L80
.L86:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+172
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+176
	ldr	r1, .L102+180
	mov	lr, pc
	bx	r4
	b	.L80
.L85:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+184
	mov	lr, pc
	bx	r4
	mov	r3, #6720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L102+188
	mov	lr, pc
	bx	r4
	b	.L80
.L84:
	ldr	r4, .L102+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L102+12
	ldr	r1, .L102+192
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L102+196
	ldr	r1, .L102+200
	mov	lr, pc
	bx	r4
	b	.L80
.L103:
	.align	2
.L102:
	.word	dungeon
	.word	DMANow
	.word	palettePal
	.word	100720640
	.word	bossroombg1Map
	.word	bossroombg1Tiles
	.word	100716544
	.word	bossroombg2Map
	.word	4720
	.word	100696064
	.word	bossroombg2Tiles
	.word	alchemybgMap
	.word	5904
	.word	alchemybgTiles
	.word	atriumbgMap
	.word	atriumbgTiles
	.word	bedroombgMap
	.word	bedroombgTiles
	.word	brewerybgMap
	.word	5072
	.word	brewerybgTiles
	.word	circlesbgMap
	.word	6128
	.word	circlesbgTiles
	.word	chessbgMap
	.word	chessbgTiles
	.word	teleporterbgMap
	.word	teleporterbgTiles
	.word	crystalbgMap
	.word	crystalbgTiles
	.word	librarybgMap
	.word	librarybgTiles
	.word	menageriebgMap
	.word	menageriebgTiles
	.word	treasurybgMap
	.word	treasurybgTiles
	.word	golemfabbgMap
	.word	5168
	.word	golemfabbgTiles
	.word	diningbgMap
	.word	diningbgTiles
	.word	observatorybgMap
	.word	observatorybgTiles
	.word	prisonbgMap
	.word	4688
	.word	prisonbgTiles
	.word	gardenbgMap
	.word	gardenbgTiles
	.word	entrancebgMap
	.word	5296
	.word	entrancebgTiles
	.size	loadRoomData, .-loadRoomData
	.align	2
	.global	drawRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRoom, %function
drawRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawRoom, .-drawRoom
	.align	2
	.global	checkSearch
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkSearch, %function
checkSearch:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L113
	ldr	r0, .L113+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L113+8
	ldr	ip, [r3]
	ldr	lr, .L113+12
	add	r3, ip, ip, lsl #1
	add	r3, lr, r3, lsl #6
	ldr	r3, [r3, #180]
	cmp	r0, r3
	blt	.L109
	ldr	r4, .L113+16
	mov	r3, #0
	mov	r2, r4
	lsl	r0, ip, #1
.L108:
	ldr	r1, [r2]
	cmp	r1, #32
	beq	.L112
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L108
.L109:
	mov	r3, #0
	pop	{r4, lr}
	mov	r0, r3
	bx	lr
.L112:
	add	ip, r0, ip
	add	lr, lr, ip, lsl #6
	add	lr, lr, #8
	add	ip, r3, r3, lsl #2
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, r4, ip, lsl #3
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	mov	r3, #1
	ldm	lr, {r0, r1}
	pop	{r4, lr}
	stm	ip, {r0, r1}
	mov	r0, r3
	bx	lr
.L114:
	.align	2
.L113:
	.word	intDiceRoll
	.word	player
	.word	currRoom
	.word	dungeon
	.word	backpack
	.size	checkSearch, .-checkSearch
	.align	2
	.global	checkTrap
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkTrap, %function
checkTrap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L124
	ldr	r3, [r5]
	ldr	r4, .L124+4
	add	r3, r3, r3, lsl #1
	add	r3, r4, r3, lsl #6
	ldr	r3, [r3, #176]
	cmp	r3, #1
	beq	.L122
	cmp	r3, #0
	beq	.L123
.L117:
	ldr	r0, .L124+8
	mov	r2, #0
	ldr	r1, .L124+12
	ldr	r3, .L124+16
	mov	lr, pc
	bx	r3
	mov	r0, #0
.L115:
	pop	{r4, r5, r6, lr}
	bx	lr
.L123:
	ldr	r0, .L124+20
	ldr	r3, .L124+24
.L121:
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #1
	add	r4, r4, r3, lsl #6
	ldr	r3, [r4, #184]
	cmp	r0, r3
	bge	.L117
	mov	r2, #0
	ldr	r1, .L124+28
	ldr	r0, .L124+32
	ldr	r3, .L124+16
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r0, .L124+20
	ldr	r3, .L124+36
	mov	lr, pc
	bx	r3
	mov	r0, #1
	b	.L115
.L122:
	ldr	r0, .L124+20
	ldr	r3, .L124+40
	b	.L121
.L125:
	.align	2
.L124:
	.word	currRoom
	.word	dungeon
	.word	dodgesound
	.word	22050
	.word	playSoundB
	.word	player
	.word	dexDiceRoll
	.word	22180
	.word	hitsound
	.word	damageChar
	.word	intDiceRoll
	.size	checkTrap, .-checkTrap
	.comm	goblinMode,4,4
	.comm	dungeon,2304,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
