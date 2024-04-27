	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	fillScreen
	.type	fillScreen, @function
fillScreen:
	endbr32
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 16
	call	__x86.get_pc_thunk.cx
	add	ecx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	DWORD PTR -12[ebp], 0
	jmp	.L2
.L5:
	mov	DWORD PTR -8[ebp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR screen_ptr@GOT[ecx]
	mov	ebx, DWORD PTR [eax]
	mov	edx, DWORD PTR -12[ebp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR -8[ebp]
	add	eax, edx
	add	eax, ebx
	mov	BYTE PTR [eax], 45
	add	DWORD PTR -8[ebp], 1
.L3:
	cmp	DWORD PTR -8[ebp], 79
	jle	.L4
	add	DWORD PTR -12[ebp], 1
.L2:
	cmp	DWORD PTR -12[ebp], 5
	jle	.L5
	nop
	nop
	add	esp, 16
	pop	ebx
	pop	ebp
	ret
	.size	fillScreen, .-fillScreen
	.globl	printScreen
	.type	printScreen, @function
printScreen:
	endbr32
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 20
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	DWORD PTR -16[ebp], 0
	jmp	.L7
.L10:
	mov	DWORD PTR -12[ebp], 0
	jmp	.L8
.L9:
	mov	eax, DWORD PTR screen_ptr@GOT[ebx]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR -16[ebp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 4
	mov	edx, eax
	mov	eax, DWORD PTR -12[ebp]
	add	eax, edx
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	sub	esp, 12
	push	eax
	call	putchar@PLT
	add	esp, 16
	add	DWORD PTR -12[ebp], 1
.L8:
	cmp	DWORD PTR -12[ebp], 79
	jle	.L9
	sub	esp, 12
	push	10
	call	putchar@PLT
	add	esp, 16
	add	DWORD PTR -16[ebp], 1
.L7:
	cmp	DWORD PTR -16[ebp], 5
	jle	.L10
	nop
	nop
	mov	ebx, DWORD PTR -4[ebp]
	leave
	ret
	.size	printScreen, .-printScreen
	.section	.rodata
.LC0:
	.string	"123456"
.LC1:
	.string	"Este es el fin"
.LC2:
	.string	"Ans %d\n"
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
	sub	esp, 32
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	lea	eax, .LC0@GOTOFF[ebx]
	mov	DWORD PTR -28[ebp], eax
	sub	esp, 12
	push	DWORD PTR -28[ebp]
	call	strlen@PLT
	add	esp, 16
	mov	DWORD PTR -24[ebp], eax
	lea	eax, .LC1@GOTOFF[ebx]
	mov	DWORD PTR -20[ebp], eax
	sub	esp, 12
	push	DWORD PTR -20[ebp]
	call	strlen@PLT
	add	esp, 16
	mov	DWORD PTR -16[ebp], eax
	call	fillScreen
	push	DWORD PTR -16[ebp]
	push	DWORD PTR -20[ebp]
	push	DWORD PTR -24[ebp]
	push	DWORD PTR -28[ebp]
	call	imprimir@PLT
	add	esp, 16
	mov	DWORD PTR -12[ebp], eax
	sub	esp, 8
	push	DWORD PTR -12[ebp]
	lea	eax, .LC2@GOTOFF[ebx]
	push	eax
	call	printf@PLT
	add	esp, 16
	call	printScreen
	mov	eax, 0
	lea	esp, -8[ebp]
	pop	ecx
	pop	ebx
	pop	ebp
	lea	esp, -4[ecx]
	ret
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
	mov	ecx, DWORD PTR [esp]
	ret
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	mov	ebx, DWORD PTR [esp]
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
