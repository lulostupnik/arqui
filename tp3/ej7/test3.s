	.file	"test3.c"
	.intel_syntax noprefix
	.text
	.globl	foo
	.type	foo, @function
foo:
	endbr32
	push	ebp
	mov	ebp, esp
	push	edi
	sub	esp, 100
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	lea	edx, -92[ebp]
	mov	eax, 0
	mov	ecx, 20
	mov	edi, edx
	rep stosd
	mov	DWORD PTR -92[ebp], 1
	mov	DWORD PTR -88[ebp], 2
	mov	DWORD PTR -84[ebp], 3
	mov	DWORD PTR -80[ebp], 4
	mov	DWORD PTR -76[ebp], 5
	mov	DWORD PTR -72[ebp], 6
	nop
	mov	eax, DWORD PTR -12[ebp]
	xor	eax, DWORD PTR gs:20
	je	.L2
	call	__stack_chk_fail_local
.L2:
	add	esp, 100
	pop	edi
	pop	ebp
	ret
	.size	foo, .-foo
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
