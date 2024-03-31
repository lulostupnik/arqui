	.file	"ej14.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"signal"
.LC1:
	.string	"fork"
.LC2:
	.string	"Child exiting."
.LC3:
	.string	"Child is PID %jd\n"
.LC4:
	.string	"Parent exiting."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr32
	lea	ecx, 4[esp]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	push	ebx
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	sub	esp, 16
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	sub	esp, 8
	push	1
	push	17
	call	signal@PLT
	add	esp, 16
	cmp	eax, -1
	jne	.L2
	sub	esp, 12
	lea	eax, .LC0@GOTOFF[ebx]
	push	eax
	call	perror@PLT
	add	esp, 16
	sub	esp, 12
	push	1
	call	exit@PLT
.L2:
	call	fork@PLT
	mov	DWORD PTR -12[ebp], eax
	cmp	DWORD PTR -12[ebp], -1
	je	.L3
	cmp	DWORD PTR -12[ebp], 0
	je	.L4
	jmp	.L6
.L3:
	sub	esp, 12
	lea	eax, .LC1@GOTOFF[ebx]
	push	eax
	call	perror@PLT
	add	esp, 16
	sub	esp, 12
	push	1
	call	exit@PLT
.L4:
	sub	esp, 12
	lea	eax, .LC2@GOTOFF[ebx]
	push	eax
	call	puts@PLT
	add	esp, 16
	sub	esp, 12
	push	0
	call	exit@PLT
.L6:
	mov	eax, DWORD PTR -12[ebp]
	cdq
	sub	esp, 4
	push	edx
	push	eax
	lea	eax, .LC3@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	sub	esp, 12
	lea	eax, .LC4@GOTOFF[ebx]
	push	eax
	call	puts@PLT
	add	esp, 16
	sub	esp, 12
	push	0
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB7:
	.cfi_startproc
	mov	ebx, DWORD PTR [esp]
	ret
	.cfi_endproc
.LFE7:
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
