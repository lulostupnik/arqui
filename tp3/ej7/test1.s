	.file	"test1.c"
	.intel_syntax noprefix
	.text
	.comm	global_no_init,10,4
	.globl	global_init
	.data
	.align 4
	.type	global_init, @object
	.size	global_init, 15
global_init:
	.string	"mensaje global"
	.text
	.globl	foo
	.type	foo, @function
foo:
	endbr32
	push	ebp
	mov	ebp, esp
	push	edi
	sub	esp, 196
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	mov	DWORD PTR -188[ebp], 1
	lea	edx, -108[ebp]
	mov	eax, 0
	mov	ecx, 20
	mov	edi, edx
	rep stosd
	mov	DWORD PTR -108[ebp], 1
	mov	DWORD PTR -28[ebp], 1936614765
	mov	DWORD PTR -24[ebp], 6646369
	mov	DWORD PTR -20[ebp], 2054055277
	mov	DWORD PTR -16[ebp], 6646369
	mov	BYTE PTR -17[ebp], 115
	nop
	mov	eax, DWORD PTR -12[ebp]
	xor	eax, DWORD PTR gs:20
	je	.L2
	call	__stack_chk_fail_local
.L2:
	add	esp, 196
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
