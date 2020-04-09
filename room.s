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
	.global	initDungeon
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDungeon, %function
initDungeon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #16
	push	{r4, r5, r6, lr}
	ldr	r4, .L18
	ldr	r6, .L18+4
	str	r3, [r4]
	sub	sp, sp, #40
	mov	lr, pc
	bx	r6
	ldr	r3, .L18+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #59
	movle	r3, #0
	strle	r3, [r4, #4]
	ble	.L3
	cmp	r3, #94
	movle	r3, #4
	movgt	r3, #5
	str	r3, [r4, #4]
.L3:
	mov	r2, #17
	mov	r3, #6
	mov	r5, #0
	str	r2, [r4, #88]
	str	r3, [r4, #92]
	add	r4, sp, #36
.L5:
	mov	lr, pc
	bx	r6
	sub	r1, sp, #4
	mov	r3, r1
	rsbs	r2, r0, #0
	and	r2, r2, #15
	and	r0, r0, #15
	rsbpl	r0, r2, #0
.L7:
	ldr	r2, [r3, #4]!
	cmp	r2, r0
	beq	.L6
	cmp	r3, r4
	bne	.L7
	add	r3, sp, #40
	add	r3, r3, r5, lsl #2
	add	r5, r5, #1
	cmp	r5, #10
	str	r0, [r3, #-40]
	bne	.L5
.L11:
	ldr	r3, .L18
.L10:
	ldr	r2, [r1, #4]!
	cmp	r1, r4
	str	r2, [r3, #8]!
	bne	.L10
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L6:
	cmp	r5, #9
	ble	.L5
	b	.L11
.L19:
	.align	2
.L18:
	.word	dungeon
	.word	rand
	.word	1374389535
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
	ldr	r3, .L42
	ldr	r3, [r3, r0, lsl #3]
	push	{r4, lr}
	cmp	r3, #17
	ldrls	pc, [pc, r3, asl #2]
	b	.L20
.L23:
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L29
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L22
.L22:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+4
	ldr	r4, .L42+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+16
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
.L20:
	pop	{r4, lr}
	bx	lr
.L40:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+28
	mov	lr, pc
	bx	r4
	mov	r3, #288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+32
	mov	lr, pc
	bx	r4
	b	.L20
.L39:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+40
	mov	lr, pc
	bx	r4
	mov	r3, #208
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+44
	mov	lr, pc
	bx	r4
	b	.L20
.L38:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+52
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+56
	mov	lr, pc
	bx	r4
	b	.L20
.L37:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+60
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+64
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+68
	mov	lr, pc
	bx	r4
	b	.L20
.L36:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+72
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+76
	mov	lr, pc
	bx	r4
	mov	r3, #448
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+80
	mov	lr, pc
	bx	r4
	b	.L20
.L35:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+84
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+88
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+92
	mov	lr, pc
	bx	r4
	b	.L20
.L34:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+96
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+100
	mov	lr, pc
	bx	r4
	mov	r3, #352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+104
	mov	lr, pc
	bx	r4
	b	.L20
.L33:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+108
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+112
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+116
	mov	lr, pc
	bx	r4
	b	.L20
.L32:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+120
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+124
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+128
	mov	lr, pc
	bx	r4
	b	.L20
.L31:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+132
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+136
	mov	lr, pc
	bx	r4
	mov	r3, #320
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+140
	mov	lr, pc
	bx	r4
	b	.L20
.L30:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+144
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+148
	mov	lr, pc
	bx	r4
	mov	r3, #288
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+152
	mov	lr, pc
	bx	r4
	b	.L20
.L29:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+156
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+160
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+164
	mov	lr, pc
	bx	r4
	b	.L20
.L28:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+168
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+172
	mov	lr, pc
	bx	r4
	mov	r3, #320
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+176
	mov	lr, pc
	bx	r4
	b	.L20
.L27:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+180
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+184
	mov	lr, pc
	bx	r4
	mov	r3, #1376
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+188
	mov	lr, pc
	bx	r4
	b	.L20
.L26:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+192
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+196
	mov	lr, pc
	bx	r4
	mov	r3, #224
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+200
	mov	lr, pc
	bx	r4
	b	.L20
.L25:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+204
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+208
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+212
	mov	lr, pc
	bx	r4
	b	.L20
.L24:
	ldr	r4, .L42+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+216
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+220
	mov	lr, pc
	bx	r4
	mov	r3, #2272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+224
	mov	lr, pc
	bx	r4
	b	.L20
.L43:
	.align	2
.L42:
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
	.global	updateRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRoom, %function
updateRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateRoom, .-updateRoom
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
	.comm	dungeon,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
