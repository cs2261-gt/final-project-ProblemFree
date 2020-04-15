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
	.file	"item.c"
	.text
	.align	2
	.global	initItems
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initItems, %function
initItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initItems, .-initItems
	.align	2
	.global	randomWeapon
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomWeapon, %function
randomWeapon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #10
	movle	r0, #0
	ble	.L3
	cmp	r3, #21
	movle	r0, #1
	ble	.L3
	cmp	r3, #32
	movle	r0, #2
	ble	.L3
	cmp	r3, #43
	movle	r0, #3
	ble	.L3
	cmp	r3, #54
	movle	r0, #4
	ble	.L3
	cmp	r3, #65
	movle	r0, #5
	ble	.L3
	cmp	r3, #76
	movle	r0, #6
	ble	.L3
	cmp	r3, #88
	movlt	r0, #7
	movge	r0, #8
.L3:
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	rand
	.word	1374389535
	.size	randomWeapon, .-randomWeapon
	.align	2
	.global	randomArmor
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomArmor, %function
randomArmor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L27
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #14
	movle	r0, #10
	ble	.L16
	cmp	r3, #29
	movle	r0, #11
	ble	.L16
	cmp	r3, #44
	movle	r0, #12
	ble	.L16
	cmp	r3, #54
	movle	r0, #13
	ble	.L16
	cmp	r3, #64
	movle	r0, #14
	ble	.L16
	cmp	r3, #74
	movle	r0, #15
	ble	.L16
	cmp	r3, #84
	movle	r0, #16
	ble	.L16
	cmp	r3, #95
	movlt	r0, #17
	movge	r0, #18
.L16:
	pop	{r4, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	rand
	.word	1374389535
	.size	randomArmor, .-randomArmor
	.align	2
	.global	randomCommon
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomCommon, %function
randomCommon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L37
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #49
	movle	r0, #19
	ble	.L29
	cmp	r3, #59
	movle	r0, #20
	ble	.L29
	cmp	r3, #69
	movle	r0, #21
	ble	.L29
	cmp	r3, #79
	movle	r0, #22
	ble	.L29
	cmp	r3, #90
	movlt	r0, #23
	movge	r0, #24
.L29:
	pop	{r4, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	rand
	.word	1374389535
	.size	randomCommon, .-randomCommon
	.align	2
	.global	randomNormal
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomNormal, %function
randomNormal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #49
	ble	.L43
	cmp	r3, #74
	pople	{r4, lr}
	ble	randomArmor
.L41:
	pop	{r4, lr}
	b	randomWeapon
.L43:
	pop	{r4, lr}
	b	randomCommon
.L45:
	.align	2
.L44:
	.word	rand
	.word	1374389535
	.size	randomNormal, .-randomNormal
	.align	2
	.global	randomRare
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomRare, %function
randomRare:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L55
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #24
	movle	r0, #25
	ble	.L46
	cmp	r3, #49
	movle	r0, #26
	ble	.L46
	cmp	r3, #59
	movle	r0, #27
	ble	.L46
	cmp	r3, #69
	movle	r0, #28
	ble	.L46
	cmp	r3, #79
	movle	r0, #29
	ble	.L46
	cmp	r3, #90
	movlt	r0, #30
	movge	r0, #31
.L46:
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	rand
	.word	1374389535
	.size	randomRare, .-randomRare
	.align	2
	.global	randomAll
	.syntax unified
	.arm
	.fpu softvfp
	.type	randomAll, %function
randomAll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L64
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #49
	ble	.L62
	cmp	r3, #69
	ble	.L63
	cmp	r3, #89
	pople	{r4, lr}
	ble	randomWeapon
.L60:
	pop	{r4, lr}
	b	randomRare
.L62:
	pop	{r4, lr}
	b	randomCommon
.L63:
	pop	{r4, lr}
	b	randomArmor
.L65:
	.align	2
.L64:
	.word	rand
	.word	1374389535
	.size	randomAll, .-randomAll
	.comm	itemList,1280,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
