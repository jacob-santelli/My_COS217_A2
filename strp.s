	.arch armv8-a
	.file	"strp.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"strp.c"
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
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L2
	adrp	x0, __PRETTY_FUNCTION__.3299
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3299
	mov	w2, 11
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L2:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L3
.L4:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L3:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
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
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.3308
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3308
	mov	w2, 21
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L8
	adrp	x0, __PRETTY_FUNCTION__.3308
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3308
	mov	w2, 22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L8:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L9
.L10:
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L9:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	x0, [sp, 40]
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
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.3317
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3317
	mov	w2, 36
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.3317
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3317
	mov	w2, 37
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L15
.L16:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L15:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L16
	b	.L17
.L18:
	ldr	x0, [sp, 16]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L17:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L18
	ldr	x0, [sp, 40]
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
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.3328
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3328
	mov	w2, 57
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.3328
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3328
	mov	w2, 58
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L27:
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L24
	mov	w0, 1
	b	.L25
.L24:
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L26
	mov	w0, -1
	b	.L25
.L26:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L23
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	b	.L25
.L23:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L27
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L28
	mov	w0, 0
	b	.L25
.L28:
	mov	w0, -1
.L25:
	ldp	x29, x30, [sp], 32
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
	str	wzr, [sp, 36]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L30
	adrp	x0, __PRETTY_FUNCTION__.3340
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3340
	mov	w2, 87
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L30:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.3340
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3340
	mov	w2, 88
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L34
	ldr	x0, [sp, 56]
	b	.L33
.L40:
	ldr	x0, [sp, 24]
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L35
	b	.L36
.L39:
	ldr	x0, [sp, 48]
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L37
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L38
.L37:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L36:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L39
.L38:
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L35
	ldr	x0, [sp, 56]
	b	.L33
.L35:
	str	wzr, [sp, 36]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
.L34:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L40
	mov	x0, 0
.L33:
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
	.type	__PRETTY_FUNCTION__.3299, %object
	.size	__PRETTY_FUNCTION__.3299, 14
__PRETTY_FUNCTION__.3299:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.3308, %object
	.size	__PRETTY_FUNCTION__.3308, 9
__PRETTY_FUNCTION__.3308:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.3317, %object
	.size	__PRETTY_FUNCTION__.3317, 11
__PRETTY_FUNCTION__.3317:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.3328, %object
	.size	__PRETTY_FUNCTION__.3328, 12
__PRETTY_FUNCTION__.3328:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.3340, %object
	.size	__PRETTY_FUNCTION__.3340, 11
__PRETTY_FUNCTION__.3340:
	.string	"Str_search"
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-10)"
	.section	.note.GNU-stack,"",@progbits
