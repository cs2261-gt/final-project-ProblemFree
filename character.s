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
	mov	r10, #0
	mov	r9, #22
	mov	fp, #2
	ldr	ip, .L6
	ldr	lr, .L6+4
	ldmia	ip!, {r0, r1, r2, r3}
	add	r5, lr, #44
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	sub	ip, ip, #472
	stm	r5, {r0, r1}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r4, lr, #84
	stmia	r4!, {r0, r1, r2, r3}
	str	r10, [lr, #4]
	str	r9, [lr, #8]
	str	fp, [lr]
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	add	r10, lr, #44
	stm	r4, {r0, r1}
	ldr	ip, .L6+8
	ldmia	r10!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	mov	r3, #8
	str	r3, [lr, #28]
	mov	r3, #6
	mov	r7, #12
	mov	r6, #60
	mov	r8, #10
	mov	r9, #32
	str	r3, [lr, #36]
	ldmia	r10!, {r0, r1, r2, r3}
	str	r8, [lr, #24]
	str	r7, [lr, #32]
	str	r7, [lr, #20]
	str	r6, [lr, #12]
	str	r6, [lr, #16]
	stmia	ip!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1}
	add	lr, lr, #84
	stm	ip, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r5, ip, #8
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	stm	r5, {r0, r1}
	sub	r3, ip, #32
	add	ip, ip, #488
.L2:
	str	r9, [r3, #80]
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	itemList+1160
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
	ldr	r3, .L39
	ldrh	r3, [r3]
	tst	r3, #32
	push	{r4, lr}
	beq	.L9
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L9
	ldr	r3, .L39+8
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L37
	cmp	r2, #1
	beq	.L14
	cmp	r2, #3
	bne	.L8
.L15:
	mov	r1, #12
	mov	r2, #50
	mov	r4, #2
	mov	lr, #18
	mov	ip, #8
	mov	r0, #10
	str	r4, [r3]
	str	lr, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	ip, [r3, #28]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r0, [r3, #32]
	b	.L8
.L9:
	tst	r3, #16
	beq	.L13
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L13
	ldr	r3, .L39+8
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L14
	cmp	r2, #1
	beq	.L15
	cmp	r2, #3
	bne	.L8
	mov	r0, #10
	mov	r1, #14
	mov	r2, #75
	mov	lr, #1
	mov	ip, #12
	str	lr, [r3]
	str	r0, [r3, #20]
	str	r0, [r3, #36]
	str	ip, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	b	.L8
.L13:
	tst	r3, #64
	bne	.L38
.L16:
	ldr	r3, .L39+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L8
.L17:
	ldr	r2, .L39+8
	ldr	r3, [r2, #4]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2, #4]
.L8:
	pop	{r4, lr}
	bx	lr
.L38:
	ldr	r3, .L39+4
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L16
	b	.L17
.L37:
	mov	r1, #10
	mov	r2, #75
	mov	r4, #1
	mov	lr, #12
	mov	ip, #16
	mov	r0, #14
	str	r4, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #36]
	str	lr, [r3, #24]
	str	ip, [r3, #28]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r0, [r3, #32]
	b	.L8
.L14:
	mov	r2, #12
	mov	lr, #3
	mov	r1, #65
	mov	ip, #16
	mov	r0, #6
	str	lr, [r3]
	str	r2, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #24]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	str	r0, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	ip, .L50
	ldr	r2, [ip]
	ldr	r3, .L50+4
	cmp	r2, #2
	strh	r0, [r3, #34]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	beq	.L48
	cmp	r2, #1
	beq	.L49
	cmp	r2, #3
	bxne	lr
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L47
	mov	r2, #896
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L49:
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L46
	mov	r2, #768
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L48:
	ldr	r2, [ip, #4]
	cmp	r2, #0
	bne	.L43
	mov	r2, #640
	strh	r2, [r3, #36]	@ movhi
	bx	lr
.L43:
	cmp	r2, #1
	moveq	r2, #656
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L46:
	cmp	r2, #1
	moveq	r2, #784
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L47:
	cmp	r2, #1
	moveq	r2, #912
	strheq	r2, [r3, #36]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawPlayerName
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerName, %function
drawPlayerName:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L66
	push	{r4, r5, r6, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L60
	cmp	r4, #1
	beq	.L61
	cmp	r4, #3
	beq	.L62
.L52:
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L63
	cmp	r3, #1
	bne	.L52
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L66+4
	ldr	r1, .L66+8
	ldr	r4, .L66+12
	mov	lr, pc
	bx	r4
	mov	r3, #656
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+16
	mov	lr, pc
	bx	r4
	b	.L52
.L60:
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L64
	cmp	r3, #1
	bne	.L52
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L66+4
	ldr	r1, .L66+20
	ldr	r4, .L66+12
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+24
	mov	lr, pc
	bx	r4
	b	.L52
.L63:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L66+4
	ldr	r1, .L66+28
	ldr	r4, .L66+12
	mov	lr, pc
	bx	r4
	mov	r3, #704
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+32
	mov	lr, pc
	bx	r4
	b	.L52
.L62:
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L65
	cmp	r3, #1
	bne	.L52
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L66+4
	ldr	r1, .L66+36
	ldr	r5, .L66+12
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #560
	mov	r2, #100663296
	ldr	r1, .L66+40
	mov	lr, pc
	bx	r5
	b	.L52
.L64:
	ldr	r4, .L66+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L66+4
	ldr	r1, .L66+44
	mov	lr, pc
	bx	r4
	mov	r3, #736
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L66+4
	ldr	r1, .L66+52
	ldr	r5, .L66+12
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #576
	mov	r2, #100663296
	ldr	r1, .L66+56
	mov	lr, pc
	bx	r5
	b	.L52
.L67:
	.align	2
.L66:
	.word	player
	.word	100720640
	.word	charcreatebgjodianneMap
	.word	DMANow
	.word	charcreatebgjodianneTiles
	.word	charcreatebgmarieMap
	.word	charcreatebgmarieTiles
	.word	charcreatebgwilliamMap
	.word	charcreatebgwilliamTiles
	.word	charcreatebgbiancaMap
	.word	charcreatebgbiancaTiles
	.word	charcreatebgaaronMap
	.word	charcreatebgaaronTiles
	.word	charcreatebgchrisMap
	.word	charcreatebgchrisTiles
	.size	drawPlayerName, .-drawPlayerName
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
	ldr	ip, .L86
	orr	r2, r2, #16384
	orr	r3, r3, #16384
	cmp	r1, r0
	strh	r3, [ip, #48]	@ movhi
	strh	r2, [ip, #50]	@ movhi
	beq	.L82
	ldr	r3, .L86+4
	smull	r2, r3, r0, r3
	asr	r0, r0, #31
	rsb	r0, r0, r3, asr #2
	add	r3, r0, r0, lsl #3
	cmp	r3, r1
	lsl	r3, r0, #3
	beq	.L83
	cmp	r3, r1
	beq	.L84
	sub	r3, r3, r0
	cmp	r3, r1
	beq	.L85
	add	r3, r0, r0, lsl #1
	cmp	r1, r3, lsl #1
	moveq	r3, #400
	str	lr, [sp, #-4]!
	strheq	r3, [ip, #52]	@ movhi
	lsl	lr, r0, #1
	beq	.L68
	add	r2, r0, r0, lsl #2
	cmp	r2, r1
	moveq	r3, #448
	lsl	r2, r0, #2
	strheq	r3, [ip, #52]	@ movhi
	beq	.L68
	cmp	r2, r1
	moveq	r3, #452
	strheq	r3, [ip, #52]	@ movhi
	beq	.L68
	cmp	r3, r1
	moveq	r3, #456
	strheq	r3, [ip, #52]	@ movhi
	beq	.L68
	cmp	lr, r1
	moveq	r3, #460
	strheq	r3, [ip, #52]	@ movhi
	beq	.L68
	cmp	r0, r1
	moveq	r3, #464
	strheq	r3, [ip, #52]	@ movhi
.L68:
	ldr	lr, [sp], #4
	bx	lr
.L83:
	mov	r3, #388
	strh	r3, [ip, #52]	@ movhi
	bx	lr
.L82:
	mov	r3, #384
	strh	r3, [ip, #52]	@ movhi
	bx	lr
.L85:
	mov	r3, #396
	strh	r3, [ip, #52]	@ movhi
	bx	lr
.L84:
	mov	r3, #392
	strh	r3, [ip, #52]	@ movhi
	bx	lr
.L87:
	.align	2
.L86:
	.word	shadowOAM
	.word	1717986919
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
	ldr	r0, .L100
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxne	lr
	ldr	ip, .L100+4
	mov	r2, ip
.L93:
	ldr	r1, [r2]
	cmp	r1, #25
	beq	.L99
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #40
	bne	.L93
.L94:
	push	{r4, lr}
	ldr	r3, .L100+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L99:
	mov	r1, #32
	ldr	r2, [r0, #12]
	add	r3, r3, r3, lsl #2
	cmp	r2, #0
	str	r1, [ip, r3, lsl #3]
	str	r2, [r0, #16]
	bxgt	lr
	b	.L94
.L101:
	.align	2
.L100:
	.word	player
	.word	backpack
	.word	stopSound
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
	@ args = 0, pretend = 0, frame = 2816
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #128
	sub	sp, sp, #2816
	sub	sp, sp, #4
	ldr	r5, .L104
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
	add	r0, sp, #256
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #384
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #512
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #640
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #768
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #896
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1024
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1152
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1280
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1408
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1536
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1664
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1792
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #1920
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2048
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2176
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2304
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2432
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2560
	mov	lr, pc
	bx	r5
	mov	r2, fp
	mov	r1, #0
	add	r0, sp, #2688
	mov	r4, #10
	mov	r8, #8
	mov	r7, #12
	mov	r9, #16
	mov	lr, pc
	bx	r5
	mov	r3, #25
	ldr	r6, .L104+4
	ldr	r5, .L104+8
	mov	r1, sp
	mov	r2, fp
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	mov	r0, r6
	str	r8, [sp, #20]
	str	r7, [sp, #24]
	str	r9, [sp, #28]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	mov	lr, pc
	bx	r5
	mov	ip, #1
	mov	r3, #6
	str	ip, [sp, #136]
	mov	ip, #15
	mov	r2, fp
	str	ip, [sp, #140]
	str	ip, [sp, #144]
	str	r3, [sp, #164]
	add	r1, sp, fp
	str	r9, [sp, #148]
	str	r7, [sp, #152]
	str	r4, [sp, #156]
	str	r8, [sp, #160]
	add	r0, r6, fp
	mov	lr, pc
	bx	r5
	mov	r10, #14
	mov	ip, #30
	mov	lr, #2
	mov	r3, #18
	mov	r2, fp
	str	lr, [sp, #264]
	str	ip, [sp, #268]
	str	ip, [sp, #272]
	str	r3, [sp, #280]
	str	r10, [sp, #284]
	add	r1, sp, #256
	str	r4, [sp, #276]
	str	r7, [sp, #288]
	str	r4, [sp, #292]
	add	r0, r6, #256
	mov	lr, pc
	bx	r5
	mov	r3, #18
	mov	lr, #6
	mov	ip, #3
	str	r3, [sp, #396]
	str	r3, [sp, #400]
	mov	r2, fp
	str	r10, [sp, #404]
	str	r10, [sp, #412]
	str	lr, [sp, #416]
	str	lr, [sp, #420]
	str	ip, [sp, #392]
	add	r1, sp, #384
	str	r9, [sp, #408]
	add	r0, r6, #384
	mov	lr, pc
	bx	r5
	mov	lr, #4
	mov	ip, #20
	str	lr, [sp, #520]
	mov	r2, fp
	str	r10, [sp, #532]
	str	ip, [sp, #524]
	str	ip, [sp, #528]
	add	r1, sp, #512
	str	r7, [sp, #536]
	str	r7, [sp, #540]
	str	r4, [sp, #544]
	str	r4, [sp, #548]
	add	r0, r6, #512
	mov	lr, pc
	bx	r5
	mov	r3, #25
	mov	ip, #5
	str	r3, [sp, #652]
	str	r3, [sp, #656]
	mov	r3, #18
	str	ip, [sp, #648]
	str	r3, [sp, #668]
	mov	r2, fp
	add	r1, sp, #640
	str	r8, [sp, #660]
	str	r4, [sp, #664]
	str	r7, [sp, #672]
	str	r4, [sp, #676]
	add	r0, r6, #640
	mov	lr, pc
	bx	r5
	mov	lr, #6
	mov	r2, fp
	str	lr, [sp, #776]
	str	lr, [sp, #804]
	add	r1, sp, #768
	str	r4, [sp, #780]
	str	r4, [sp, #784]
	str	r8, [sp, #788]
	str	r9, [sp, #792]
	str	r7, [sp, #796]
	str	r8, [sp, #800]
	add	r0, r6, #768
	mov	lr, pc
	bx	r5
	mov	ip, #18
	mov	lr, #6
	mov	r3, #7
	str	lr, [sp, #924]
	str	ip, [sp, #916]
	str	ip, [sp, #920]
	mov	r2, fp
	str	r10, [sp, #928]
	str	r3, [sp, #904]
	add	r1, sp, #896
	str	r8, [sp, #908]
	str	r8, [sp, #912]
	str	r8, [sp, #932]
	add	r0, r6, #896
	mov	lr, pc
	bx	r5
	mov	r3, #6
	mov	r2, fp
	str	r10, [sp, #1048]
	str	r10, [sp, #1052]
	str	r3, [sp, #1060]
	add	r1, sp, #1024
	str	r8, [sp, #1032]
	str	r7, [sp, #1036]
	str	r7, [sp, #1040]
	str	r4, [sp, #1044]
	str	r4, [sp, #1056]
	add	r0, r6, #1024
	mov	lr, pc
	bx	r5
	mov	r3, #9
	mov	r2, fp
	str	r3, [sp, #1160]
	str	r10, [sp, #1172]
	str	r10, [sp, #1180]
	add	r1, sp, #1152
	str	r9, [sp, #1164]
	str	r9, [sp, #1168]
	str	r7, [sp, #1176]
	str	r4, [sp, #1184]
	str	r8, [sp, #1188]
	add	r0, r6, #1152
	mov	lr, pc
	bx	r5
	mov	ip, #18
	mov	r2, fp
	str	ip, [sp, #1292]
	str	ip, [sp, #1296]
	add	r1, sp, #1280
	str	r4, [sp, #1288]
	str	r4, [sp, #1300]
	str	r9, [sp, #1304]
	str	r9, [sp, #1308]
	str	r4, [sp, #1312]
	str	r4, [sp, #1316]
	add	r0, r6, #1280
	mov	lr, pc
	bx	r5
	mov	lr, #4
	mov	r3, #40
	str	lr, [sp, #1444]
	mov	lr, #11
	str	r3, [sp, #1420]
	str	lr, [sp, #1416]
	str	r3, [sp, #1424]
	mov	r2, fp
	add	r1, sp, #1408
	str	r4, [sp, #1428]
	str	r8, [sp, #1432]
	str	r4, [sp, #1436]
	str	r7, [sp, #1440]
	add	r0, r6, #1408
	mov	lr, pc
	bx	r5
	mov	r2, fp
	str	r10, [sp, #1560]
	add	r1, sp, #1536
	str	r7, [sp, #1544]
	str	r7, [sp, #1548]
	str	r7, [sp, #1552]
	str	r8, [sp, #1556]
	str	r4, [sp, #1564]
	str	r8, [sp, #1568]
	str	r8, [sp, #1572]
	add	r0, r6, #1536
	mov	lr, pc
	bx	r5
	mov	r3, #35
	mov	lr, #13
	str	r3, [sp, #1676]
	str	r3, [sp, #1680]
	mov	r2, fp
	str	lr, [sp, #1672]
	add	r1, sp, #1664
	str	r8, [sp, #1684]
	str	r7, [sp, #1688]
	str	r9, [sp, #1692]
	str	r7, [sp, #1696]
	str	r4, [sp, #1700]
	add	r0, r6, #1664
	mov	lr, pc
	bx	r5
	mov	lr, #20
	mov	r2, fp
	str	lr, [sp, #1804]
	str	lr, [sp, #1808]
	str	r10, [sp, #1800]
	add	r1, sp, #1792
	str	r9, [sp, #1812]
	str	r9, [sp, #1816]
	str	r9, [sp, #1820]
	str	r4, [sp, #1824]
	str	r4, [sp, #1828]
	add	r0, r6, #1792
	mov	lr, pc
	bx	r5
	mov	ip, #15
	mov	r3, #6
	str	ip, [sp, #1928]
	str	r3, [sp, #1956]
	str	ip, [sp, #1932]
	str	ip, [sp, #1936]
	mov	r2, fp
	str	r10, [sp, #1948]
	add	r1, sp, #1920
	str	r8, [sp, #1940]
	str	r4, [sp, #1944]
	str	r8, [sp, #1952]
	add	r0, r6, #1920
	mov	lr, pc
	bx	r5
	mov	lr, #20
	mov	r2, fp
	str	lr, [sp, #2060]
	str	lr, [sp, #2064]
	str	r10, [sp, #2068]
	str	r10, [sp, #2076]
	add	r1, sp, #2048
	str	r9, [sp, #2056]
	str	r9, [sp, #2072]
	str	r7, [sp, #2080]
	str	r8, [sp, #2084]
	add	r0, r6, #2048
	mov	lr, pc
	bx	r5
	mov	lr, #20
	mov	r3, #18
	mov	ip, #17
	str	lr, [sp, #2196]
	str	r3, [sp, #2204]
	mov	lr, #13
	mov	r3, #60
	mov	r2, fp
	str	lr, [sp, #2208]
	str	ip, [sp, #2184]
	str	r3, [sp, #2188]
	str	r3, [sp, #2192]
	add	r1, sp, #2176
	str	r9, [sp, #2200]
	str	r4, [sp, #2212]
	add	r0, r6, #2176
	mov	lr, pc
	bx	r5
	mov	r3, #18
	mov	ip, #80
	mov	lr, #20
	str	r3, [sp, #2312]
	mov	r3, #15
	mov	r2, fp
	str	lr, [sp, #2324]
	str	lr, [sp, #2332]
	str	r3, [sp, #2336]
	str	ip, [sp, #2316]
	str	ip, [sp, #2320]
	add	r1, sp, #2304
	str	r9, [sp, #2328]
	str	r4, [sp, #2340]
	add	r0, r6, #2304
	mov	lr, pc
	bx	r5
	mov	r3, #20
	mov	lr, #19
	mov	ip, #50
	str	r3, [sp, #2452]
	mov	r3, #11
	str	lr, [sp, #2440]
	mov	r2, fp
	str	r10, [sp, #2460]
	str	r3, [sp, #2464]
	str	ip, [sp, #2444]
	str	ip, [sp, #2448]
	add	r1, sp, #2432
	str	r4, [sp, #2468]
	str	r9, [sp, #2456]
	add	r0, r6, #2432
	mov	lr, pc
	bx	r5
	mov	r3, #20
	mov	ip, #24
	str	r3, [sp, #2568]
	str	r10, [sp, #2584]
	mov	r3, #60
	mov	r10, #11
	mov	r2, fp
	str	r3, [sp, #2572]
	str	r3, [sp, #2576]
	str	ip, [sp, #2580]
	add	r1, sp, #2560
	str	r10, [sp, #2592]
	str	r4, [sp, #2596]
	str	r9, [sp, #2588]
	add	r0, r6, #2560
	mov	lr, pc
	bx	r5
	mov	r3, #100
	mov	ip, #21
	mov	lr, #18
	mov	r2, fp
	str	lr, [sp, #2712]
	str	r10, [sp, #2720]
	str	r8, [sp, #2708]
	str	r7, [sp, #2716]
	str	r7, [sp, #2724]
	str	ip, [sp, #2696]
	str	r3, [sp, #2700]
	str	r3, [sp, #2704]
	add	r0, r6, #2688
	add	r1, sp, #2688
	mov	lr, pc
	bx	r5
	add	sp, sp, #2816
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L105:
	.align	2
.L104:
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
	ldr	r3, .L133
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	ldr	r3, [r3]
	lsr	r1, r1, #16
	lsr	r2, r2, #16
.L107:
	cmp	r0, #21
	ldrls	pc, [pc, r0, asl #2]
	b	.L108
.L110:
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L120
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L132
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L109
.L132:
	mov	r0, r3
	b	.L107
.L115:
	mov	r0, #156
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L116:
	mov	r0, #152
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L117:
	mov	r0, #148
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L118:
	mov	r0, #144
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L119:
	mov	r0, #140
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L120:
	mov	r0, #136
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L121:
	mov	r0, #132
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L122:
	mov	r0, #128
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L123:
	mov	r0, #28
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L124:
	mov	r0, #24
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L125:
	mov	r0, #20
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L126:
	mov	r0, #16
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L127:
	mov	r0, #12
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L128:
	mov	r0, #8
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L129:
	mov	r0, #4
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L130:
	mov	r0, #0
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L109:
	mov	r0, #272
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L111:
	mov	r0, #268
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L112:
	mov	r0, #264
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L113:
	mov	r0, #260
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L114:
	mov	r0, #256
	ldr	r3, .L133+4
	strh	r0, [r3, #20]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L108:
	ldr	r3, .L133+4
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	bx	lr
.L134:
	.align	2
.L133:
	.word	anicounter
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
	ldr	ip, .L153
	orr	r2, r2, #16384
	orr	r3, r3, #16384
	cmp	r1, r0
	strh	r3, [ip, #64]	@ movhi
	strh	r2, [ip, #66]	@ movhi
	beq	.L149
	ldr	r3, .L153+4
	smull	r2, r3, r0, r3
	asr	r0, r0, #31
	rsb	r0, r0, r3, asr #2
	add	r3, r0, r0, lsl #3
	cmp	r3, r1
	lsl	r3, r0, #3
	beq	.L150
	cmp	r3, r1
	beq	.L151
	sub	r3, r3, r0
	cmp	r3, r1
	beq	.L152
	add	r3, r0, r0, lsl #1
	cmp	r1, r3, lsl #1
	moveq	r3, #400
	str	lr, [sp, #-4]!
	strheq	r3, [ip, #68]	@ movhi
	lsl	lr, r0, #1
	beq	.L135
	add	r2, r0, r0, lsl #2
	cmp	r2, r1
	moveq	r3, #448
	lsl	r2, r0, #2
	strheq	r3, [ip, #68]	@ movhi
	beq	.L135
	cmp	r2, r1
	moveq	r3, #452
	strheq	r3, [ip, #68]	@ movhi
	beq	.L135
	cmp	r3, r1
	moveq	r3, #456
	strheq	r3, [ip, #68]	@ movhi
	beq	.L135
	cmp	lr, r1
	moveq	r3, #460
	strheq	r3, [ip, #68]	@ movhi
	beq	.L135
	cmp	r0, r1
	moveq	r3, #464
	strheq	r3, [ip, #68]	@ movhi
.L135:
	ldr	lr, [sp], #4
	bx	lr
.L150:
	mov	r3, #388
	strh	r3, [ip, #68]	@ movhi
	bx	lr
.L149:
	mov	r3, #384
	strh	r3, [ip, #68]	@ movhi
	bx	lr
.L152:
	mov	r3, #396
	strh	r3, [ip, #68]	@ movhi
	bx	lr
.L151:
	mov	r3, #392
	strh	r3, [ip, #68]	@ movhi
	bx	lr
.L154:
	.align	2
.L153:
	.word	shadowOAM
	.word	1717986919
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
	ldr	r3, .L157
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L157+4
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
.L158:
	.align	2
.L157:
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
	ldr	r3, .L161
	mov	r4, r0
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L161+4
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
.L162:
	.align	2
.L161:
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
	b	.L163
.L166:
	.word	.L170
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L165
.L169:
	ldr	r3, [r0, #28]
	add	r2, r3, r2
	str	r2, [r0, #28]
.L163:
	bx	lr
.L165:
	ldr	r3, [r0, #32]
	add	r2, r3, r2
	str	r2, [r0, #32]
	bx	lr
.L170:
	ldr	r3, [r0, #12]
	add	r2, r3, r2
	str	r2, [r0, #12]
	bx	lr
.L168:
	ldr	r3, [r0, #24]
	add	r2, r3, r2
	str	r2, [r0, #24]
	bx	lr
.L167:
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
	sub	r1, r1, #1
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L172
.L174:
	.word	.L177
	.word	.L176
	.word	.L175
	.word	.L173
.L173:
	push	{r4, lr}
	ldr	r3, [r0, #104]
	ldr	r4, [r0, #32]
	mov	r1, #2
	add	r4, r4, r3
	bl	statEquipped
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	add	r0, r0, r4
	pop	{r4, lr}
	bx	lr
.L175:
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #92]
	ldr	r2, [r0, #52]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L176:
	ldr	r3, [r0, #24]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #56]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L177:
	ldr	r3, [r0, #28]
	ldr	r1, [r0, #100]
	ldr	r2, [r0, #60]
	add	r0, r3, r1
	add	r0, r0, r2
	bx	lr
.L172:
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
	beq	.L185
	cmp	r1, #3
	beq	.L186
	cmp	r1, #1
	bxne	lr
	ldr	r0, [r0, #28]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L186:
	ldr	r0, [r0, #20]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
	sub	r0, r0, #5
	bx	lr
.L185:
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
	ldr	r3, .L193
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L193+4
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
.L194:
	.align	2
.L193:
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
	ldr	r3, .L197
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+4
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
.L198:
	.align	2
.L197:
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
	ldr	r3, .L201
	asr	r0, r0, #1
	sub	r4, r0, #5
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+4
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
.L202:
	.align	2
.L201:
	.word	rand
	.word	1717986919
	.size	strDiceRoll, .-strDiceRoll
	.comm	enemyList,2816,4
	.comm	slicethescreamlord,128,4
	.comm	mindflayer,128,4
	.comm	wizard,128,4
	.comm	dragon,128,4
	.comm	beholder,128,4
	.comm	zombie,128,4
	.comm	vampire,128,4
	.comm	troll,128,4
	.comm	skeleton,128,4
	.comm	slime,128,4
	.comm	orc,128,4
	.comm	mimic,128,4
	.comm	kobold,128,4
	.comm	homunculus,128,4
	.comm	goblin,128,4
	.comm	golem,128,4
	.comm	elemental,128,4
	.comm	drow,128,4
	.comm	chimera,128,4
	.comm	apprentice,128,4
	.comm	abomination,128,4
	.comm	anicounter,4,4
	.comm	anitimer,4,4
	.comm	backpack,600,4
	.comm	player,128,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
