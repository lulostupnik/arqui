	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Value of Pi = %d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr32
	lea	ecx, 4[esp]
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
	push	ebx
	push	ecx
	sub	esp, 96
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	sub	esp, 4
	push	10
	lea	eax, .LC0@GOTOFF[ebx]
	push	eax
	lea	eax, -92[ebp]
	push	eax
	call	sprintf@PLT
	add	esp, 16
	sub	esp, 12
	lea	eax, -92[ebp]
	push	eax
	call	puts@PLT
	add	esp, 16
	mov	eax, 0
	mov	edx, DWORD PTR -12[ebp]
	xor	edx, DWORD PTR gs:20
	je	.L3
	call	__stack_chk_fail_local
.L3:
	lea	esp, -8[ebp]
	pop	ecx
	pop	ebx
	pop	ebp
	lea	esp, -4[ecx]
	ret
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	mov	ebx, DWORD PTR [esp]
	ret
	.hidden	__stack_chk_fail_local
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
