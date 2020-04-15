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
	push	{r4, lr}
	ldr	r3, .L4
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L4+4
	ldr	r3, .L4+8
	add	r0, r0, r0, lsl #2
	add	r4, r4, r4, lsl #1
	add	r4, r4, r4, lsl #5
	add	ip, ip, r0, lsl #3
	add	r4, r3, r4, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
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
	str	r0, [r4, #780]
	pop	{r4, lr}
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L8+4
	ldr	r3, .L8+8
	add	r0, r0, r0, lsl #2
	add	r4, r4, r4, lsl #1
	add	r4, r4, r4, lsl #5
	add	ip, ip, r0, lsl #3
	add	r4, r3, r4, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
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
	str	r0, [r4, #780]
	pop	{r4, lr}
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
	push	{r4, lr}
	ldr	r3, .L12
	mov	r4, r0
	mov	lr, pc
	bx	r3
	ldr	ip, .L12+4
	ldr	r3, .L12+8
	add	r0, r0, r0, lsl #2
	add	r4, r4, r4, lsl #1
	add	r4, r4, r4, lsl #5
	add	ip, ip, r0, lsl #3
	add	r4, r3, r4, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
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
	str	r0, [r4, #780]
	pop	{r4, lr}
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
	mov	r4, r0
	ldr	r5, .L16
	mov	lr, pc
	bx	r5
	add	r4, r4, r4, lsl #1
	ldr	r3, .L16+4
	add	r4, r4, r4, lsl #5
	add	r4, r3, r4, lsl #3
	and	r0, r0, #1
	str	r0, [r4, #776]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #11
	str	r0, [r4, #784]
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
	mov	r2, #728
	rsbs	lr, r0, #0
	ldr	ip, .L20+4
	add	r4, r4, r4, lsl #1
	and	lr, lr, #15
	ldr	r1, .L20+8
	add	r4, r4, r4, lsl #5
	and	r3, r0, #15
	add	r4, ip, r4, lsl #3
	rsbpl	r3, lr, #0
	mla	r1, r2, r3, r1
	add	r0, r4, #48
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	rand
	.word	dungeon
	.word	enemyList
	.word	memcpy
	.size	placeEnemy, .-placeEnemy
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L52
	ldr	r4, .L52+4
	str	r3, [r5]
	sub	sp, sp, #40
	mov	lr, pc
	bx	r4
	ldr	r3, .L52+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #59
	movle	r3, #0
	strle	r3, [r5, #4]
	ble	.L24
	cmp	r3, #94
	movle	r3, #4
	movgt	r3, #5
	str	r3, [r5, #4]
.L24:
	mov	r2, #17
	mov	r3, #6
	ldr	r5, .L52+12
	str	r2, [r5, #520]
	str	r3, [r5, #524]
	mov	lr, pc
	bx	r4
	mov	r2, #728
	rsbs	r1, r0, #0
	and	r1, r1, #3
	and	r3, r0, #3
	rsbpl	r3, r1, #0
	ldr	r1, .L52+16
	add	r3, r3, #16
	mla	r1, r2, r3, r1
	add	r0, r5, #568
	ldr	r3, .L52+20
	mov	lr, pc
	bx	r3
	mov	r5, #0
	add	r6, sp, #36
.L26:
	mov	lr, pc
	bx	r4
	sub	r1, sp, #4
	mov	r3, r1
	rsbs	r2, r0, #0
	and	r2, r2, #15
	and	r0, r0, #15
	rsbpl	r0, r2, #0
.L28:
	ldr	r2, [r3, #4]!
	cmp	r2, r0
	beq	.L27
	cmp	r3, r6
	bne	.L28
	add	r3, sp, #40
	add	r3, r3, r5, lsl #2
	add	r5, r5, #1
	cmp	r5, #10
	str	r0, [r3, #-40]
	bne	.L26
.L40:
	ldr	r5, .L52
	mov	r3, r5
.L31:
	ldr	r2, [r1, #4]!
	cmp	r1, r6
	str	r2, [r3, #792]!
	bne	.L31
	mov	r6, #1
	ldr	r7, .L52+8
	ldr	r9, .L52+24
	ldr	r8, .L52+28
	b	.L39
.L49:
	mov	r3, #1
	mov	r0, r6
	str	r3, [r5, #796]
	bl	placeEnemy
.L33:
	ldr	r3, [r5, #792]
	cmp	r3, #10
	beq	.L47
.L38:
	add	r6, r6, #1
	cmp	r6, #11
	add	r5, r5, #792
	beq	.L48
.L39:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #9
	movle	r3, #0
	strle	r3, [r5, #796]
	ble	.L33
	cmp	r3, #29
	ble	.L49
	cmp	r3, #49
	ble	.L50
	cmp	r3, #69
	ble	.L51
	cmp	r3, #94
	bgt	.L37
	mov	r3, #4
	mov	r0, r6
	str	r3, [r5, #796]
	bl	placeCommon
	ldr	r3, [r5, #792]
	cmp	r3, #10
	bne	.L38
.L47:
	mov	r3, #5
	str	r3, [r5, #796]
	mov	lr, pc
	bx	r9
	mov	lr, #0
	add	r0, r0, r0, lsl #2
	add	ip, r8, r0, lsl #3
	ldmia	ip!, {r0, r1, r2, r3}
	add	r10, r5, #800
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r10!, {r0, r1, r2, r3}
	add	r6, r6, #1
	ldm	ip, {r0, r1}
	cmp	r6, #11
	stm	r10, {r0, r1}
	add	r5, r5, #792
	str	lr, [r5, #780]
	bne	.L39
.L48:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L37:
	mov	r3, #5
	mov	r0, r6
	str	r3, [r5, #796]
	bl	placeRare
	b	.L33
.L27:
	cmp	r5, #9
	ble	.L26
	b	.L40
.L50:
	mov	r3, #2
	mov	r0, r6
	str	r3, [r5, #796]
	bl	placeTrap
	b	.L33
.L51:
	mov	r3, #3
	mov	r0, r6
	str	r3, [r5, #796]
	bl	placeEnemy
	mov	r0, r6
	bl	placeAny
	b	.L33
.L53:
	.align	2
.L52:
	.word	dungeon
	.word	rand
	.word	1374389535
	.word	dungeon+8192
	.word	enemyList
	.word	memcpy
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
	ldr	r3, .L76
	add	r0, r0, r0, lsl #1
	add	r0, r0, r0, lsl #5
	ldr	r3, [r3, r0, lsl #3]
	push	{r4, lr}
	cmp	r3, #17
	ldrls	pc, [pc, r3, asl #2]
	b	.L54
.L57:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L56
.L56:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+4
	ldr	r4, .L76+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+20
	mov	lr, pc
	bx	r4
.L54:
	pop	{r4, lr}
	bx	lr
.L74:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+28
	mov	lr, pc
	bx	r4
	mov	r3, #288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+32
	mov	lr, pc
	bx	r4
	b	.L54
.L73:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+40
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+44
	mov	lr, pc
	bx	r4
	b	.L54
.L72:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+52
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+56
	mov	lr, pc
	bx	r4
	b	.L54
.L71:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+60
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+64
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+68
	mov	lr, pc
	bx	r4
	b	.L54
.L70:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+72
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+76
	mov	lr, pc
	bx	r4
	mov	r3, #448
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+80
	mov	lr, pc
	bx	r4
	b	.L54
.L69:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+84
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+88
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+92
	mov	lr, pc
	bx	r4
	b	.L54
.L68:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+96
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+100
	mov	lr, pc
	bx	r4
	mov	r3, #352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+104
	mov	lr, pc
	bx	r4
	b	.L54
.L67:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+108
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+112
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+116
	mov	lr, pc
	bx	r4
	b	.L54
.L66:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+120
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+124
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+128
	mov	lr, pc
	bx	r4
	b	.L54
.L65:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+132
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+136
	mov	lr, pc
	bx	r4
	mov	r3, #320
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+140
	mov	lr, pc
	bx	r4
	b	.L54
.L64:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+144
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+148
	mov	lr, pc
	bx	r4
	mov	r3, #288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+152
	mov	lr, pc
	bx	r4
	b	.L54
.L63:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+156
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+160
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+164
	mov	lr, pc
	bx	r4
	b	.L54
.L62:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+168
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+172
	mov	lr, pc
	bx	r4
	mov	r3, #320
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+176
	mov	lr, pc
	bx	r4
	b	.L54
.L61:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+180
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+184
	mov	lr, pc
	bx	r4
	mov	r3, #1376
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+188
	mov	lr, pc
	bx	r4
	b	.L54
.L60:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+192
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+196
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+200
	mov	lr, pc
	bx	r4
	b	.L54
.L59:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+204
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+208
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+212
	mov	lr, pc
	bx	r4
	b	.L54
.L58:
	ldr	r4, .L76+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+216
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+220
	mov	lr, pc
	bx	r4
	mov	r3, #2272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+224
	mov	lr, pc
	bx	r4
	b	.L54
.L77:
	.align	2
.L76:
	.word	dungeon
	.word	bossroombgPal
	.word	DMANow
	.word	100720640
	.word	bossroombgMap
	.word	bossroombgTiles
	.word	alchemybgPal
	.word	alchemybgMap
	.word	alchemybgTiles
	.word	atriumbgPal
	.word	atriumbgMap
	.word	atriumbgTiles
	.word	bedroombgPal
	.word	bedroombgMap
	.word	bedroombgTiles
	.word	brewerybgPal
	.word	brewerybgMap
	.word	brewerybgTiles
	.word	circlesbgPal
	.word	circlesbgMap
	.word	circlesbgTiles
	.word	chessbgPal
	.word	chessbgMap
	.word	chessbgTiles
	.word	teleporterbgPal
	.word	teleporterbgMap
	.word	teleporterbgTiles
	.word	crystalbgPal
	.word	crystalbgMap
	.word	crystalbgTiles
	.word	librarybgPal
	.word	librarybgMap
	.word	librarybgTiles
	.word	menageriebgPal
	.word	menageriebgMap
	.word	menageriebgTiles
	.word	treasurybgPal
	.word	treasurybgMap
	.word	treasurybgTiles
	.word	golemfabbgPal
	.word	golemfabbgMap
	.word	golemfabbgTiles
	.word	diningbgPal
	.word	diningbgMap
	.word	diningbgTiles
	.word	observatorybgPal
	.word	observatorybgMap
	.word	observatorybgTiles
	.word	prisonbgPal
	.word	prisonbgMap
	.word	prisonbgTiles
	.word	gardenbgPal
	.word	gardenbgMap
	.word	gardenbgTiles
	.word	entrancebgPal
	.word	entrancebgMap
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
	ldr	r4, .L87
	ldr	r3, .L87+4
	mov	r0, r4
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+8
	ldr	ip, [r3]
	ldr	lr, .L87+12
	add	r2, ip, ip, lsl #1
	add	r2, r2, r2, lsl #5
	add	r2, lr, r2, lsl #3
	ldr	r3, [r2, #780]
	cmp	r0, r3
	blt	.L83
	mov	r2, r4
	mov	r3, #0
	lsl	r0, ip, #1
.L82:
	ldr	r1, [r2, #120]
	cmp	r1, #32
	beq	.L86
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L82
.L83:
	mov	r3, #0
	pop	{r4, lr}
	mov	r0, r3
	bx	lr
.L86:
	add	ip, r0, ip
	add	ip, ip, ip, lsl #5
	add	lr, lr, ip, lsl #3
	add	r3, r3, r3, lsl #2
	add	lr, lr, #8
	add	ip, r4, r3, lsl #3
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, ip, #120
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	mov	r3, #1
	ldm	lr, {r0, r1}
	pop	{r4, lr}
	stm	ip, {r0, r1}
	mov	r0, r3
	bx	lr
.L88:
	.align	2
.L87:
	.word	player
	.word	intDiceRoll
	.word	currRoom
	.word	dungeon
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
	ldr	r5, .L98
	ldr	r3, [r5]
	ldr	r4, .L98+4
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r3, r4, r3, lsl #3
	ldr	r3, [r3, #776]
	cmp	r3, #1
	beq	.L96
	cmp	r3, #0
	beq	.L97
.L93:
	mov	r0, #0
.L89:
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	ldr	r0, .L98+8
	ldr	r3, .L98+12
.L95:
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #5
	add	r4, r4, r3, lsl #3
	ldr	r3, [r4, #784]
	cmp	r0, r3
	bge	.L93
	mov	r1, #6
	ldr	r0, .L98+8
	ldr	r3, .L98+16
	mov	lr, pc
	bx	r3
	mov	r0, #1
	b	.L89
.L96:
	ldr	r0, .L98+8
	ldr	r3, .L98+20
	b	.L95
.L99:
	.align	2
.L98:
	.word	currRoom
	.word	dungeon
	.word	player
	.word	dexDiceRoll
	.word	damageChar
	.word	intDiceRoll
	.size	checkTrap, .-checkTrap
	.comm	dungeon,9504,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
