	.file	"test4.c"
	.intel_syntax noprefix
	.text
	.globl	foo
	.type	foo, @function
foo:
	endbr32
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR [ebp-12], eax
	xor	eax, eax
	mov	DWORD PTR [ebp-20], 1936614765
	mov	DWORD PTR [ebp-16], 6646369
	nop
	mov	edx, DWORD PTR [ebp-12]
	xor	edx, DWORD PTR gs:20
	je	.L2
	call	__stack_chk_fail
.L2:
	leave
	ret
	.size	foo, .-foo
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
