	.file	"fibonacci.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LASANPC0:
.LFB0:
	.file 1 "fibonacci.c"
	.loc 1 17 21
	endbr32
	push	ebp
.LCFI0:
	mov	ebp, esp
.LCFI1:
	push	ebx
	sub	esp, 4
.LCFI2:
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 18 7
	cmp	DWORD PTR 8[ebp], 0
	jns	.L2
	.loc 1 19 16
	mov	eax, -1
	jmp	.L3
.L2:
	.loc 1 21 7
	cmp	DWORD PTR 8[ebp], 0
	je	.L4
	.loc 1 21 13 discriminator 1
	cmp	DWORD PTR 8[ebp], 1
	jne	.L5
.L4:
	.loc 1 22 16
	mov	eax, 1
	jmp	.L3
.L5:
	.loc 1 24 12
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 2
	sub	esp, 12
	push	eax
	call	fibonacci
	add	esp, 16
	mov	ebx, eax
	.loc 1 24 27
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 1
	sub	esp, 12
	push	eax
	call	fibonacci
	add	esp, 16
	.loc 1 24 26
	add	eax, ebx
.L3:
	.loc 1 25 1
	mov	ebx, DWORD PTR -4[ebp]
	leave
.LCFI3:
	ret
.LFE0:
	.size	fibonacci, .-fibonacci
	.type	_sub_I_00099_0, @function
_sub_I_00099_0:
.LFB1:
	endbr32
	push	ebp
.LCFI4:
	mov	ebp, esp
.LCFI5:
	push	ebx
	sub	esp, 4
.LCFI6:
	call	__x86.get_pc_thunk.bx
	add	ebx, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	add	esp, 4
	pop	ebx
.LCFI7:
	pop	ebp
.LCFI8:
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
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xc5
	.byte	0xc3
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
	.long	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xc3
	.byte	0x4
	.long	.LCFI8-.LCFI7
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
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2dd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.LASF52
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x75
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x8f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x69
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x38
	.uleb128 0x7
	.long	.LASF53
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x231
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x4
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x14
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x24
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x24a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x250
	.byte	0x34
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x62
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x83
	.byte	0x40
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x46
	.byte	0x44
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x54
	.byte	0x46
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x256
	.byte	0x47
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x266
	.byte	0x48
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x96
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x271
	.byte	0x54
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x27c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x250
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0x60
	.uleb128 0x8
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x25
	.byte	0x64
	.uleb128 0x8
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x282
	.byte	0x6c
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xaa
	.uleb128 0x9
	.long	.LASF54
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF44
	.uleb128 0x6
	.byte	0x4
	.long	0x245
	.uleb128 0x6
	.byte	0x4
	.long	0xaa
	.uleb128 0xb
	.long	0x38
	.long	0x266
	.uleb128 0xc
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x23d
	.uleb128 0xa
	.long	.LASF45
	.uleb128 0x6
	.byte	0x4
	.long	0x26c
	.uleb128 0xa
	.long	.LASF46
	.uleb128 0x6
	.byte	0x4
	.long	0x277
	.uleb128 0xb
	.long	0x38
	.long	0x292
	.uleb128 0xc
	.long	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x29e
	.uleb128 0x6
	.byte	0x4
	.long	0x231
	.uleb128 0xd
	.long	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x29e
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x29e
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0x11
	.byte	0x5
	.long	0x62
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x11
	.byte	0x13
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
.LASF22:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_old_offset"
.LASF52:
	.string	"/home/lulo/arqui/tp3/ej12"
.LASF51:
	.string	"fibonacci.c"
.LASF55:
	.string	"fibonacci"
.LASF25:
	.string	"_IO_save_end"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF35:
	.string	"_offset"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF39:
	.string	"_freeres_buf"
.LASF49:
	.string	"stderr"
.LASF9:
	.string	"long long int"
.LASF34:
	.string	"_lock"
.LASF12:
	.string	"long int"
.LASF8:
	.string	"__int64_t"
.LASF31:
	.string	"_cur_column"
.LASF53:
	.string	"_IO_FILE"
.LASF2:
	.string	"unsigned char"
.LASF50:
	.string	"GNU C99 9.4.0 -m32 -masm=intel -mtune=generic -march=i686 -g -std=c99 -fsanitize=address -fno-dwarf2-cfi-asm -fno-exceptions -fno-asynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF5:
	.string	"signed char"
.LASF36:
	.string	"_codecvt"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"char"
.LASF37:
	.string	"_wide_data"
.LASF38:
	.string	"_freeres_list"
.LASF40:
	.string	"__pad5"
.LASF45:
	.string	"_IO_codecvt"
.LASF4:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_end"
.LASF13:
	.string	"__off64_t"
.LASF11:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF46:
	.string	"_IO_wide_data"
.LASF24:
	.string	"_IO_backup_base"
.LASF47:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF43:
	.string	"FILE"
.LASF48:
	.string	"stdout"
.LASF54:
	.string	"_IO_lock_t"
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
