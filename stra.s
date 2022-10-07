	.arch armv8-a
	.file	"stra.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"stra.c"
	.align	3
.LC1:
	.string	"pcSrc != NULL"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L3
	adrp	x0, __PRETTY_FUNCTION__.3376
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3376
	mov	w2, 12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L4:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L3:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"pcDest != NULL"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.3385
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3385
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.3385
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3385
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L10:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L9:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	str	xzr, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.3395
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3395
	mov	w2, 36
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.3395
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3395
	mov	w2, 37
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L15:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L16
	b	.L17
.L18:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L17:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC3:
	.string	"pcS1 != NULL"
	.align	3
.LC4:
	.string	"pcS2 != NULL"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.3407
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3407
	mov	w2, 54
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.3407
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3407
	mov	w2, 55
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L28:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L24
	mov	w0, 1
	b	.L25
.L24:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L26
	mov	w0, -1
	b	.L25
.L26:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L27
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L27
	mov	w0, 0
	b	.L25
.L27:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L23:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L28
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L29
	mov	w0, 0
	b	.L25
.L29:
	mov	w0, -1
.L25:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.section	.rodata
	.align	3
.LC5:
	.string	"pcHaystack != NULL"
	.align	3
.LC6:
	.string	"pcNeedle != NULL"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 56]
	str	xzr, [sp, 48]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.3419
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3419
	mov	w2, 83
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L32
	adrp	x0, __PRETTY_FUNCTION__.3419
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3419
	mov	w2, 84
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L32:
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L35
	ldr	x0, [sp, 32]
	b	.L34
.L41:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L36
	b	.L37
.L40:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 48]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L38
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L39
.L38:
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L37:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L40
.L39:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L36
	ldr	x0, [sp, 32]
	b	.L34
.L36:
	str	wzr, [sp, 44]
	str	xzr, [sp, 48]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L35:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L41
	mov	x0, 0
.L34:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.3376, %object
	.size	__PRETTY_FUNCTION__.3376, 14
__PRETTY_FUNCTION__.3376:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3385, %object
	.size	__PRETTY_FUNCTION__.3385, 9
__PRETTY_FUNCTION__.3385:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.3395, %object
	.size	__PRETTY_FUNCTION__.3395, 11
__PRETTY_FUNCTION__.3395:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.3407, %object
	.size	__PRETTY_FUNCTION__.3407, 12
__PRETTY_FUNCTION__.3407:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.3419, %object
	.size	__PRETTY_FUNCTION__.3419, 11
__PRETTY_FUNCTION__.3419:
	.string	"Str_search"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
