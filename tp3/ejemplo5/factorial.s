	.file	"factorial.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.globl	factorial
	.type	factorial, @function
factorial:
.LASANPC0:
.LFB0:
	.file 1 "./ejemplo5/factorial.c"
	.loc 1 2 22
	endbr32
	push	ebp
.LCFI0:
	mov	ebp, esp
.LCFI1:
	sub	esp, 24
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 3 7
	cmp	DWORD PTR 8[ebp], 0
	jne	.L2
	.loc 1 4 16
	mov	eax, 1
	jmp	.L3
.L2:
	.loc 1 5 25
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 1
	sub	esp, 12
	push	eax
	call	factorial
	add	esp, 16
	mov	DWORD PTR -12[ebp], eax
	.loc 1 6 13
	mov	eax, DWORD PTR 8[ebp]
	imul	eax, DWORD PTR -12[ebp]
.L3:
	.loc 1 7 1
	leave
.LCFI2:
	ret
.LFE0:
	.size	factorial, .-factorial
	.type	_sub_I_00099_0, @function
_sub_I_00099_0:
.LFB1:
	endbr32
	push	ebp
.LCFI3:
	mov	ebp, esp
.LCFI4:
	push	ebx
	sub	esp, 4
.LCFI5:
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	add	esp, 4
	pop	ebx
.LCFI6:
	pop	ebp
.LCFI7:
	ret
.LFE1:
	.size	_sub_I_00099_0, .-_sub_I_00099_0
	.section	.init_array.00099,"aw"
	.align 4
	.long	_sub_I_00099_0
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LASANPC2:
.LFB2:
	mov	eax, DWORD PTR [esp]
	ret
.LFE2:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LASANPC3:
.LFB3:
	mov	ebx, DWORD PTR [esp]
	ret
.LFE3:
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc5
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
	.long	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc3
	.byte	0x4
	.long	.LCFI7-.LCFI6
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
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.align 4
.LEFDE6:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x60
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF0
	.byte	0xc
	.long	.LASF1
	.long	.LASF2
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.long	0x5c
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x2
	.byte	0x13
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.long	.LASF4
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
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
.LASF4:
	.string	"factorial_n_1"
.LASF2:
	.string	"/home/lulo/arqui/tp3"
.LASF3:
	.string	"factorial"
.LASF1:
	.string	"./ejemplo5/factorial.c"
.LASF0:
	.string	"GNU C99 9.4.0 -m32 -masm=intel -mtune=generic -march=i686 -g -std=c99 -fsanitize=address -fno-dwarf2-cfi-asm -fno-exceptions -fno-asynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
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
