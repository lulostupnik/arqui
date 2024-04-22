	.file	"main.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.globl	__asan_stack_malloc_2
	.section	.rodata
.LC0:
	.string	"1 48 80 8 numero:2"
	.text
	.globl	main
	.type	main, @function
main:
.LASANPC0:
.LFB0:
	.file 1 "main.c"
	.loc 1 1 12
	endbr32
	lea	ecx, 4[esp]
.LCFI0:
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
.LCFI1:
	push	edi
	push	esi
	push	ebx
	push	ecx
.LCFI2:
	sub	esp, 200
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	lea	esi, -216[ebp]
	mov	edi, esi
	mov	eax, DWORD PTR __asan_option_detect_stack_use_after_return@GOT[ebx]
	cmp	DWORD PTR [eax], 0
	je	.L1
	sub	esp, 12
	push	160
	call	__asan_stack_malloc_2@PLT
.LVL0:
	add	esp, 16
	test	eax, eax
	je	.L1
	mov	esi, eax
.L1:
	lea	eax, 192[esi]
	mov	edx, eax
	mov	DWORD PTR [esi], 1102416563
	lea	eax, .LC0@GOTOFF[ebx]
	mov	DWORD PTR 4[esi], eax
	lea	eax, .LASANPC0@GOTOFF[ebx]
	mov	DWORD PTR 8[esi], eax
	mov	eax, esi
	shr	eax, 3
	mov	DWORD PTR 536870912[eax], -235802127
	mov	DWORD PTR 536870916[eax], 61937
	mov	DWORD PTR 536870928[eax], -202116109
	.loc 1 1 12
	mov	ecx, DWORD PTR gs:20
	mov	DWORD PTR -28[ebp], ecx
	xor	ecx, ecx
	.loc 1 3 16
	mov	DWORD PTR -104[edx], 17
	mov	edx, 0
	.loc 1 1 12
	cmp	edi, esi
	je	.L2
	mov	DWORD PTR [esi], 1172321806
	mov	DWORD PTR 536870912[eax], -168430091
	mov	DWORD PTR 536870916[eax], -168430091
	mov	DWORD PTR 536870920[eax], -168430091
	mov	DWORD PTR 536870924[eax], -168430091
	mov	DWORD PTR 536870928[eax], -168430091
	mov	eax, DWORD PTR 252[esi]
	mov	BYTE PTR [eax], 0
	jmp	.L3
.L2:
	mov	DWORD PTR 536870912[eax], 0
	mov	DWORD PTR 536870916[eax], 0
	mov	DWORD PTR 536870928[eax], 0
.L3:
	.loc 1 4 1
	mov	eax, DWORD PTR -28[ebp]
	xor	eax, DWORD PTR gs:20
	je	.L6
	call	__stack_chk_fail_local
.L6:
	mov	eax, edx
	lea	esp, -16[ebp]
	pop	ecx
.LCFI3:
	pop	ebx
.LCFI4:
	pop	esi
.LCFI5:
	pop	edi
.LCFI6:
	pop	ebp
.LCFI7:
	lea	esp, -4[ecx]
.LCFI8:
	ret
.LFE0:
	.size	main, .-main
	.type	_sub_I_00099_0, @function
_sub_I_00099_0:
.LFB1:
	endbr32
	push	ebp
.LCFI9:
	mov	ebp, esp
.LCFI10:
	push	ebx
	sub	esp, 4
.LCFI11:
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	add	esp, 4
	pop	ebx
.LCFI12:
	pop	ebp
.LCFI13:
	ret
.LFE1:
	.size	_sub_I_00099_0, .-_sub_I_00099_0
	.section	.init_array.00099,"aw"
	.align 4
	.long	_sub_I_00099_0
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LASANPC2:
.LFB2:
	mov	ebx, DWORD PTR [esp]
	ret
.LFE2:
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0x10
	.byte	0x5
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xf
	.uleb128 0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x6
	.byte	0x10
	.byte	0x7
	.uleb128 0x2
	.byte	0x75
	.sleb128 -4
	.byte	0x10
	.byte	0x6
	.uleb128 0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x10
	.byte	0x3
	.uleb128 0x2
	.byte	0x75
	.sleb128 -12
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xc1
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xc3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc6
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc7
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xc5
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.byte	0x4
	.long	.LCFI9-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xc3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xc5
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.align 4
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1
	.byte	0xc
	.long	.LASF2
	.long	.LASF3
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.long	0x50
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x50
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x2
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x72
	.sleb128 -144
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x50
	.long	0x67
	.uleb128 0x6
	.long	0x67
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"numero"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"/home/lulo/arqui/tp3/ej7"
.LASF2:
	.string	"main.c"
.LASF1:
	.string	"GNU C99 9.4.0 -m32 -masm=intel -mtune=generic -march=i686 -g -std=c99 -fsanitize=address -fno-dwarf2-cfi-asm -fno-exceptions -fno-asynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"main"
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
