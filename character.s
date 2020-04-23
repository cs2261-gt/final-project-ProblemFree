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
	mov	r9, #0
	mov	r8, #20
	mov	r10, #2
	ldr	lr, .L6
	ldr	ip, .L6+4
	add	fp, lr, #8
	ldmia	fp!, {r0, r1, r2, r3}
	add	r4, ip, #44
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	fp!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	fp, {r0, r1}
	add	lr, lr, #88
	stm	r4, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	add	fp, ip, #84
	stmia	fp!, {r0, r1, r2, r3}
	str	r9, [ip, #4]
	str	r8, [ip, #8]
	str	r10, [ip]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	fp!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	add	r9, ip, #44
	stm	fp, {r0, r1}
	ldr	lr, .L6+8
	ldmia	r9!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r3, #12
	mov	r6, #8
	mov	r7, #10
	mov	r5, #50
	mov	r8, #32
	str	r3, [ip, #20]
	ldmia	r9!, {r0, r1, r2, r3}
	str	r7, [ip, #32]
	str	r7, [ip, #24]
	str	r6, [ip, #28]
	str	r6, [ip, #36]
	str	r5, [ip, #12]
	str	r5, [ip, #16]
	stmia	lr!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	add	ip, ip, #84
	stm	lr, {r0, r1}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, lr, r6
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	fp, {r0, r1}
	stm	r4, {r0, r1}
	sub	r3, lr, #32
	add	lr, lr, #488
.L2:
	str	r8, [r3, #80]
	add	r3, r3, #40
	cmp	r3, lr
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
	@ link register save eliminated.
	ldr	r3, .L41
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L9
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L9
	ldr	r3, .L41+8
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L16
	cmp	r2, #1
	beq	.L14
	cmp	r2, #3
	bxne	lr
.L15:
	mov	r2, #2
	str	r2, [r3]
	bx	lr
.L9:
	tst	r3, #16
	beq	.L13
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L13
	ldr	r3, .L41+8
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L14
	cmp	r2, #1
	beq	.L15
	cmp	r2, #3
	bxne	lr
.L16:
	mov	r2, #1
	str	r2, [r3]
	bx	lr
.L13:
	tst	r3, #64
	bne	.L40
.L17:
	ldr	r3, .L41+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bxne	lr
.L18:
	ldr	r2, .L41+8
	ldr	r3, [r2, #4]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2, #4]
	bx	lr
.L40:
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L17
	b	.L18
.L14:
	mov	r2, #3
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	oldButtons
	.word	buttons
	.word	player
	.word	67109120
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
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	ldr	ip, .L52
	ldr	r2, [ip]
	ldr	r3, .L52+4
	cmp	r2, #2
	strh	r0, [r3, #34]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	beq	.L50
	cmp	r2, #1
	beq	.L51
	cmp	r2, #3
	bxne	lr
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L49
	mov	r2, #896
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L51:
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L48
	mov	r2, #768
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L50:
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L45
	mov	r2, #640
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L45:
	cmp	r2, #1
	moveq	r2, #656
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L48:
	cmp	r2, #1
	moveq	r2, #784
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L49:
	cmp	r2, #1
	moveq	r2, #912
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L53:
	.align	2
.L52:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawPlayerHealthbar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerHealthbar, %function
drawPlayerHealthbar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L66
	push	{r4, lr}
	smull	lr, ip, r0, ip
	asr	r0, r0, #31
	rsb	r0, r0, ip, asr #2
	add	lr, r0, r0, lsl #2
	ldr	ip, .L66+4
	orr	r3, r3, #16384
	cmp	r1, lr, lsl #1
	strh	r3, [ip, #48]	@ movhi
	moveq	r3, #384
	orr	r2, r2, #16384
	strh	r2, [ip, #50]	@ movhi
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	add	r3, r0, r0, lsl #3
	cmp	r3, r1
	lsl	r3, r0, #3
	moveq	r3, #388
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	cmp	r3, r1
	moveq	r3, #392
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	sub	r3, r3, r0
	cmp	r3, r1
	moveq	r3, #396
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	add	r3, r0, r0, lsl #1
	cmp	r1, r3, lsl #1
	moveq	r3, #400
	lsl	r4, r0, #1
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	cmp	lr, r1
	moveq	r3, #448
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	lsl	r2, r0, #2
	cmp	r2, r1
	moveq	r3, #452
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	cmp	r3, r1
	moveq	r3, #456
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	cmp	r4, r1
	moveq	r3, #460
	strheq	r3, [ip, #52]	@ movhi
	beq	.L54
	cmp	r0, r1
	moveq	r3, #464
	strheq	r3, [ip, #52]	@ movhi
.L54:
	pop	{r4, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	1717986919
	.word	shadowOAM
	.size	drawPlayerHealthbar, .-drawPlayerHealthbar
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
	ldr	r0, .L78
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxne	lr
	ldr	ip, .L78+4
	mov	r2, ip
.L71:
	ldr	r1, [r2]
	cmp	r1, #25
	beq	.L77
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L71
	push	{r4, lr}
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L77:
	mov	r1, #32
	ldr	r2, [r0, #12]
	add	r3, r3, r3, lsl #2
	str	r1, [ip, r3, lsl #3]
	str	r2, [r0, #16]
	bx	lr
.L79:
	.align	2
.L78:
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
	@ args = 0, pretend = 0, frame = 2720
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #136
	sub	sp, sp, #2720
	sub	sp, sp, #4
	ldr	r5, .L82
	mov	r2, fp
	mov	r0, sp
	mov	r1, #0
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, fp
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #272
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #408
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #544
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #680
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #816
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #952
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1088
	mov	lr, pc
	bx	r5
	add	r0, sp, #1216
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1360
	mov	lr, pc
	bx	r5
	add	r0, sp, #1488
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1632
	mov	lr, pc
	bx	r5
	add	r0, sp, #1760
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1904
	mov	lr, pc
	bx	r5
	add	r0, sp, #2032
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2176
	mov	lr, pc
	bx	r5
	add	r0, sp, #2304
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2448
	mov	lr, pc
	bx	r5
	add	r0, sp, #2576
	mov	r2, fp
	mov	r1, #0
	add	r0, r0, #8
	mov	r4, #10
	mov	r8, #8
	mov	r6, #12
	mov	lr, pc
	bx	r5
	mov	r9, #16
	mov	r3, #25
	ldr	r7, .L82+4
	ldr	r5, .L82+8
	mov	r1, sp
	mov	r2, fp
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r8, [sp, #20]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	mov	r0, r7
	str	r6, [sp, #24]
	str	r9, [sp, #28]
	mov	lr, pc
	bx	r5
	mov	r3, #15
	mov	ip, #1
	str	r3, [sp, #148]
	str	r3, [sp, #152]
	mov	r3, #6
	mov	r2, fp
	str	r4, [sp, #164]
	str	r8, [sp, #168]
	str	ip, [sp, #144]
	str	r3, [sp, #172]
	add	r1, sp, fp
	str	r9, [sp, #156]
	str	r6, [sp, #160]
	add	r0, r7, fp
	mov	lr, pc
	bx	r5
	mov	r10, #14
	mov	ip, #30
	mov	lr, #2
	mov	r3, #18
	mov	r2, fp
	str	r4, [sp, #292]
	str	r4, [sp, #308]
	str	lr, [sp, #280]
	str	ip, [sp, #284]
	str	ip, [sp, #288]
	str	r3, [sp, #296]
	add	r1, sp, #272
	str	r6, [sp, #304]
	str	r10, [sp, #300]
	add	r0, r7, #272
	mov	lr, pc
	bx	r5
	mov	lr, #6
	mov	r3, #18
	mov	ip, #3
	str	lr, [sp, #440]
	str	lr, [sp, #444]
	str	r3, [sp, #420]
	str	r3, [sp, #424]
	mov	r2, fp
	str	ip, [sp, #416]
	add	r1, sp, #408
	str	r10, [sp, #428]
	str	r9, [sp, #432]
	str	r10, [sp, #436]
	add	r0, r7, #408
	mov	lr, pc
	bx	r5
	mov	ip, #4
	str	ip, [sp, #552]
	mov	ip, #20
	mov	r2, fp
	str	r4, [sp, #576]
	str	r4, [sp, #580]
	str	ip, [sp, #556]
	str	ip, [sp, #560]
	add	r1, sp, #544
	str	r10, [sp, #564]
	str	r6, [sp, #568]
	str	r6, [sp, #572]
	add	r0, r7, #544
	mov	lr, pc
	bx	r5
	mov	r3, #25
	mov	ip, #5
	str	r3, [sp, #692]
	str	r3, [sp, #696]
	mov	r3, #18
	str	ip, [sp, #688]
	str	r3, [sp, #708]
	mov	r2, fp
	str	r8, [sp, #700]
	str	r4, [sp, #704]
	str	r4, [sp, #716]
	add	r1, sp, #680
	str	r6, [sp, #712]
	add	r0, r7, #680
	mov	lr, pc
	bx	r5
	mov	lr, #6
	mov	r2, fp
	str	lr, [sp, #824]
	str	r4, [sp, #828]
	str	r4, [sp, #832]
	str	r8, [sp, #836]
	str	r8, [sp, #848]
	str	lr, [sp, #852]
	add	r1, sp, #816
	str	r9, [sp, #840]
	str	r6, [sp, #844]
	add	r0, r7, #816
	mov	lr, pc
	bx	r5
	mov	ip, #18
	mov	r3, #7
	mov	lr, #6
	str	ip, [sp, #972]
	str	ip, [sp, #976]
	str	r3, [sp, #960]
	mov	r2, fp
	str	r8, [sp, #964]
	str	r8, [sp, #968]
	str	lr, [sp, #980]
	str	r8, [sp, #988]
	add	r1, sp, #952
	str	r10, [sp, #984]
	add	r0, r7, #952
	mov	lr, pc
	bx	r5
	mov	lr, #6
	mov	r2, fp
	str	lr, [sp, #1124]
	str	r8, [sp, #1096]
	str	r4, [sp, #1108]
	str	r4, [sp, #1120]
	add	r1, sp, #1088
	str	r6, [sp, #1100]
	str	r6, [sp, #1104]
	str	r10, [sp, #1112]
	str	r10, [sp, #1116]
	add	r0, r7, #1088
	mov	lr, pc
	bx	r5
	mov	r3, #9
	add	r0, r7, #1216
	add	r1, sp, #1216
	str	r3, [sp, #1232]
	mov	r2, fp
	str	r4, [sp, #1256]
	str	r8, [sp, #1260]
	str	r9, [sp, #1236]
	str	r9, [sp, #1240]
	str	r10, [sp, #1244]
	str	r6, [sp, #1248]
	str	r10, [sp, #1252]
	add	r1, r1, #8
	add	r0, r0, r8
	mov	lr, pc
	bx	r5
	mov	ip, #18
	mov	r2, fp
	str	r4, [sp, #1368]
	str	ip, [sp, #1372]
	str	ip, [sp, #1376]
	str	r4, [sp, #1380]
	str	r4, [sp, #1392]
	str	r4, [sp, #1396]
	add	r1, sp, #1360
	str	r9, [sp, #1384]
	str	r9, [sp, #1388]
	add	r0, r7, #1360
	mov	lr, pc
	bx	r5
	mov	lr, #11
	mov	r3, #40
	mov	ip, #4
	add	r0, r7, #1488
	add	r1, sp, #1488
	str	lr, [sp, #1504]
	str	ip, [sp, #1532]
	str	r3, [sp, #1508]
	str	r3, [sp, #1512]
	mov	r2, fp
	str	r4, [sp, #1516]
	str	r8, [sp, #1520]
	str	r4, [sp, #1524]
	str	r6, [sp, #1528]
	add	r1, r1, #8
	add	r0, r0, r8
	mov	lr, pc
	bx	r5
	mov	r2, fp
	str	r8, [sp, #1652]
	str	r4, [sp, #1660]
	str	r8, [sp, #1664]
	str	r8, [sp, #1668]
	add	r1, sp, #1632
	str	r6, [sp, #1640]
	str	r6, [sp, #1644]
	str	r6, [sp, #1648]
	str	r10, [sp, #1656]
	add	r0, r7, #1632
	mov	lr, pc
	bx	r5
	mov	r3, #18
	mov	ip, #35
	str	r3, [sp, #1796]
	mov	r3, #13
	add	r0, r7, #1760
	add	r1, sp, #1760
	str	r3, [sp, #1776]
	mov	r2, fp
	str	r8, [sp, #1788]
	str	ip, [sp, #1780]
	str	ip, [sp, #1784]
	str	r6, [sp, #1792]
	str	r6, [sp, #1800]
	str	r6, [sp, #1804]
	add	r1, r1, #8
	add	r0, r0, r8
	mov	lr, pc
	bx	r5
	mov	ip, #20
	mov	r2, fp
	str	ip, [sp, #1916]
	str	ip, [sp, #1920]
	str	r4, [sp, #1936]
	str	r4, [sp, #1940]
	add	r1, sp, #1904
	str	r10, [sp, #1912]
	str	r9, [sp, #1924]
	str	r9, [sp, #1928]
	str	r9, [sp, #1932]
	add	r0, r7, #1904
	mov	lr, pc
	bx	r5
	mov	lr, #6
	str	lr, [sp, #2076]
	mov	lr, #15
	add	r0, r7, #2032
	add	r1, sp, #2032
	str	lr, [sp, #2048]
	str	lr, [sp, #2052]
	str	lr, [sp, #2056]
	mov	r2, fp
	str	r8, [sp, #2060]
	str	r4, [sp, #2064]
	str	r8, [sp, #2072]
	str	r10, [sp, #2068]
	add	r1, r1, #8
	add	r0, r0, r8
	mov	lr, pc
	bx	r5
	mov	r4, #13
	mov	r3, #18
	mov	r8, #20
	str	r4, [sp, #2208]
	str	r3, [sp, #2200]
	mov	r4, r3
	str	r3, [sp, #2204]
	mov	r3, #60
	mov	r2, fp
	str	r3, [sp, #2188]
	str	r3, [sp, #2192]
	str	r8, [sp, #2196]
	add	r1, sp, #2176
	str	r9, [sp, #2184]
	str	r6, [sp, #2212]
	add	r0, r7, #2176
	mov	lr, pc
	bx	r5
	mov	lr, #17
	mov	ip, #80
	add	r0, r7, #2304
	add	r1, sp, #2304
	str	lr, [sp, #2320]
	mov	r2, fp
	str	r8, [sp, #2332]
	str	r8, [sp, #2336]
	str	r8, [sp, #2340]
	str	r8, [sp, #2348]
	str	ip, [sp, #2324]
	str	ip, [sp, #2328]
	str	r4, [sp, #2344]
	add	r1, r1, #8
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	mov	ip, #50
	str	r8, [sp, #2468]
	mov	r8, #11
	mov	r2, fp
	str	ip, [sp, #2460]
	str	ip, [sp, #2464]
	add	r1, sp, #2448
	str	r10, [sp, #2476]
	str	r8, [sp, #2480]
	str	r4, [sp, #2456]
	str	r9, [sp, #2472]
	str	r6, [sp, #2484]
	add	r0, r7, #2448
	mov	lr, pc
	bx	r5
	mov	r3, #60
	mov	lr, #19
	mov	ip, #24
	add	r0, r7, #2576
	add	r1, sp, #2576
	mov	r2, fp
	str	r3, [sp, #2596]
	str	r3, [sp, #2600]
	str	r10, [sp, #2608]
	str	r8, [sp, #2616]
	str	r9, [sp, #2612]
	str	r6, [sp, #2620]
	str	lr, [sp, #2592]
	str	ip, [sp, #2604]
	add	r1, r1, #8
	add	r0, r0, #8
	mov	lr, pc
	bx	r5
	add	sp, sp, #2720
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	memset
	.word	enemyList
	.word	memcpy
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
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r3, .L107
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	cmp	r0, #19
	ldrls	pc, [pc, r0, asl #2]
	b	.L84
.L87:
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L102
	.word	.L101
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
	.word	.L86
.L86:
	mov	r2, #268
	strh	r2, [r3, #20]	@ movhi
.L84:
	bx	lr
.L88:
	mov	r2, #264
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L89:
	mov	r2, #260
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L90:
	mov	r2, #256
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L91:
	mov	r2, #156
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L92:
	mov	r2, #152
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L93:
	mov	r2, #148
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L94:
	mov	r2, #144
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L95:
	mov	r2, #140
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L96:
	mov	r2, #136
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L97:
	mov	r2, #132
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L98:
	mov	r2, #128
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L99:
	mov	r2, #28
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L100:
	mov	r2, #24
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L101:
	mov	r2, #20
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L102:
	mov	r2, #16
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L103:
	mov	r2, #12
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L104:
	mov	r2, #8
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L105:
	mov	r2, #4
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L106:
	mov	r2, #0
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L108:
	.align	2
.L107:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawEnemyHealthbar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyHealthbar, %function
drawEnemyHealthbar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L121
	push	{r4, lr}
	smull	lr, ip, r0, ip
	asr	r0, r0, #31
	rsb	r0, r0, ip, asr #2
	add	lr, r0, r0, lsl #2
	ldr	ip, .L121+4
	orr	r3, r3, #16384
	cmp	r1, lr, lsl #1
	strh	r3, [ip, #64]	@ movhi
	moveq	r3, #384
	orr	r2, r2, #16384
	strh	r2, [ip, #66]	@ movhi
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	add	r3, r0, r0, lsl #3
	cmp	r3, r1
	lsl	r3, r0, #3
	moveq	r3, #388
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	cmp	r3, r1
	moveq	r3, #392
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	sub	r3, r3, r0
	cmp	r3, r1
	moveq	r3, #396
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	add	r3, r0, r0, lsl #1
	cmp	r1, r3, lsl #1
	moveq	r3, #400
	lsl	r4, r0, #1
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	cmp	lr, r1
	moveq	r3, #448
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	lsl	r2, r0, #2
	cmp	r2, r1
	moveq	r3, #452
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	cmp	r3, r1
	moveq	r3, #456
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	cmp	r4, r1
	moveq	r3, #460
	strheq	r3, [ip, #68]	@ movhi
	beq	.L109
	cmp	r0, r1
	moveq	r3, #464
	strheq	r3, [ip, #68]	@ movhi
.L109:
	pop	{r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	1717986919
	.word	shadowOAM
	.size	drawEnemyHealthbar, .-drawEnemyHealthbar
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
	ldr	r3, .L125
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L125+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	add	r1, r1, #1
	sub	r1, r3, r1
	cmp	r1, #1
	movlt	r1, #1
	str	r1, [r4, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L129
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L129+4
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #12]
	add	r1, r1, #1
	add	r1, r1, r2
	cmp	r1, r3
	movge	r1, r3
	str	r1, [r4, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L130:
	.align	2
.L129:
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
	b	.L131
.L134:
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L135
	.word	.L133
.L137:
	ldr	r3, [r0, #28]
	add	r2, r3, r2
	str	r2, [r0, #28]
.L131:
	bx	lr
.L133:
	ldr	r3, [r0, #32]
	add	r2, r3, r2
	str	r2, [r0, #32]
	bx	lr
.L138:
	ldr	r3, [r0, #12]
	add	r2, r3, r2
	str	r2, [r0, #12]
	bx	lr
.L136:
	ldr	r3, [r0, #24]
	add	r2, r3, r2
	str	r2, [r0, #24]
	bx	lr
.L135:
	ldr	r3, [r0, #20]
	add	r2, r3, r2
	str	r2, [r0, #20]
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
	b	.L140
.L142:
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L141
.L141:
	ldr	r3, [r0, #32]
	ldr	r0, [r0, #104]
	add	r0, r3, r0
	bx	lr
.L143:
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L144:
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L145:
	ldr	r3, [r0, #28]
	ldr	r1, [r0, #100]
	ldr	r2, [r0, #60]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L140:
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
	beq	.L150
	cmp	r1, #3
	beq	.L151
	cmp	r1, #1
	bxne	lr
	ldr	r0, [r0, #28]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L151:
	ldr	r0, [r0, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L150:
	ldr	r0, [r0, #24]
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
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L158
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L158+4
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
.L159:
	.align	2
.L158:
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
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L162
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L162+4
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
.L163:
	.align	2
.L162:
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
	ldr	r3, [r0, #28]
	ldr	r1, [r0, #100]
	ldr	r2, [r0, #60]
	add	r0, r3, r1
	add	r0, r0, r2
	add	r0, r0, r0, lsr #31
	push	{r4, lr}
	ldr	r3, .L166
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L166+4
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
.L167:
	.align	2
.L166:
	.word	rand
	.word	1717986919
	.size	strDiceRoll, .-strDiceRoll
	.comm	enemyList,2720,4
	.comm	mindflayer,136,4
	.comm	wizard,136,4
	.comm	dragon,136,4
	.comm	beholder,136,4
	.comm	zombie,136,4
	.comm	vampire,136,4
	.comm	troll,136,4
	.comm	skeleton,136,4
	.comm	slime,136,4
	.comm	orc,136,4
	.comm	mimic,136,4
	.comm	kobold,136,4
	.comm	homunculus,136,4
	.comm	goblin,136,4
	.comm	golem,136,4
	.comm	elemental,136,4
	.comm	drow,136,4
	.comm	chimera,136,4
	.comm	apprentice,136,4
	.comm	abomination,136,4
	.comm	backpack,600,4
	.comm	player,136,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
