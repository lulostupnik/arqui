	.file	"only_fibc.c"
	.intel_syntax noprefix
	.text
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
	endbr32
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 4
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	cmp	DWORD PTR 8[ebp], 0
	jns	.L2
	mov	eax, -1
	jmp	.L3
.L2:
	cmp	DWORD PTR 8[ebp], 0
	je	.L4
	cmp	DWORD PTR 8[ebp], 1
	jne	.L5
.L4:
	mov	eax, 1
	jmp	.L3
.L5:
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 2
	sub	esp, 12
	push	eax
	call	fibonacci
	add	esp, 16
	mov	ebx, eax
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 1
	sub	esp, 12
	push	eax
	call	fibonacci
	add	esp, 16
	add	eax, ebx
.L3:
	mov	ebx, DWORD PTR -4[ebp]
	leave
	ret
	.size	fibonacci, .-fibonacci
	.globl	main
	.type	main, @function
main:
	endbr32
	lea	ecx, 4[esp]
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
	push	ecx
	sub	esp, 4
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	sub	esp, 12
	push	3
	call	fibonacci
	add	esp, 16
	mov	eax, 0
	mov	ecx, DWORD PTR -4[ebp]
	leave
	lea	esp, -4[ecx]
	ret
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
	mov	eax, DWORD PTR [esp]
	ret
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
