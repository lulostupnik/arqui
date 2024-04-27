	.file	"test2.c"
	.intel_syntax noprefix
	.text
	.globl	foo
	.type	foo, @function
foo:
	endbr32
	push	ebp
	mov	ebp, esp
	sub	esp, 104
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	mov	DWORD PTR -92[ebp], 1
	nop
	mov	eax, DWORD PTR -12[ebp]
	xor	eax, DWORD PTR gs:20
	je	.L2
	call	__stack_chk_fail_local
.L2:
	leave
	ret
	.size	foo, .-foo
	.globl	bar
	.type	bar, @function
bar:
	endbr32
	push	ebp
	mov	ebp, esp
	sub	esp, 104
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	nop
	mov	eax, DWORD PTR -12[ebp]
	xor	eax, DWORD PTR gs:20
	je	.L4
	call	__stack_chk_fail_local
.L4:
	leave
	ret
	.size	bar, .-bar
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
	mov	eax, DWORD PTR [esp]
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
