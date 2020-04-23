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
	movls	r0, #0
	bls	.L3
	sub	r2, r3, #11
	cmp	r2, #10
	movls	r0, #1
	bls	.L3
	sub	r2, r3, #22
	cmp	r2, #10
	movls	r0, #2
	bls	.L3
	sub	r2, r3, #33
	cmp	r2, #10
	movls	r0, #3
	bls	.L3
	sub	r2, r3, #44
	cmp	r2, #10
	movls	r0, #4
	bls	.L3
	sub	r2, r3, #55
	cmp	r2, #10
	movls	r0, #5
	bls	.L3
	sub	r2, r3, #66
	cmp	r2, #10
	movls	r0, #6
	bls	.L3
	sub	r3, r3, #77
	cmp	r3, #11
	movcc	r0, #7
	movcs	r0, #8
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
	movls	r0, #10
	bls	.L16
	sub	r2, r3, #15
	cmp	r2, #14
	movls	r0, #11
	bls	.L16
	sub	r2, r3, #30
	cmp	r2, #14
	movls	r0, #12
	bls	.L16
	sub	r2, r3, #45
	cmp	r2, #9
	movls	r0, #13
	bls	.L16
	sub	r2, r3, #55
	cmp	r2, #9
	movls	r0, #14
	bls	.L16
	sub	r2, r3, #65
	cmp	r2, #9
	movls	r0, #15
	bls	.L16
	sub	r2, r3, #75
	cmp	r2, #9
	movls	r0, #16
	bls	.L16
	sub	r3, r3, #85
	cmp	r3, #10
	movcc	r0, #17
	movcs	r0, #18
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
	movls	r0, #19
	bls	.L29
	sub	r2, r3, #50
	cmp	r2, #9
	movls	r0, #20
	bls	.L29
	sub	r2, r3, #60
	cmp	r2, #9
	movls	r0, #21
	bls	.L29
	sub	r2, r3, #70
	cmp	r2, #9
	movls	r0, #22
	bls	.L29
	sub	r3, r3, #80
	cmp	r3, #10
	movcc	r0, #23
	movcs	r0, #24
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
	bls	.L43
	sub	r3, r3, #50
	cmp	r3, #24
	popls	{r4, lr}
	bls	randomArmor
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
	movls	r0, #25
	bls	.L46
	sub	r2, r3, #25
	cmp	r2, #24
	movls	r0, #26
	bls	.L46
	sub	r2, r3, #50
	cmp	r2, #9
	movls	r0, #27
	bls	.L46
	sub	r2, r3, #60
	cmp	r2, #9
	movls	r0, #28
	bls	.L46
	sub	r2, r3, #70
	cmp	r2, #9
	movls	r0, #29
	bls	.L46
	sub	r3, r3, #80
	cmp	r3, #10
	movcc	r0, #30
	movcs	r0, #31
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
	bls	.L62
	sub	r2, r3, #50
	cmp	r2, #19
	bls	.L63
	sub	r3, r3, #70
	cmp	r3, #19
	popls	{r4, lr}
	bls	randomWeapon
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
