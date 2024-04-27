	.file	"structs.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.globl	my_func1
	.type	my_func1, @function
my_func1:
.LFB0:
	.file 1 "structs.c"
	.loc 1 13 37
	endbr32
	push	ebp
.LCFI0:
	mov	ebp, esp
.LCFI1:
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 14 13
	mov	eax, DWORD PTR 12[ebp]
	.loc 1 14 15
	add	eax, 1
	mov	DWORD PTR 12[ebp], eax
	.loc 1 15 13
	mov	eax, DWORD PTR 16[ebp]
	.loc 1 15 15
	add	eax, 1
	mov	DWORD PTR 16[ebp], eax
	.loc 1 16 14
	mov	eax, DWORD PTR 20[ebp]
	.loc 1 16 23
	mov	DWORD PTR [eax], 2
	.loc 1 17 12
	mov	eax, DWORD PTR 8[ebp]
	mov	edx, DWORD PTR 12[ebp]
	mov	DWORD PTR [eax], edx
	mov	edx, DWORD PTR 16[ebp]
	mov	DWORD PTR 4[eax], edx
	mov	edx, DWORD PTR 20[ebp]
	mov	DWORD PTR 8[eax], edx
	.loc 1 18 1
	mov	eax, DWORD PTR 8[ebp]
	pop	ebp
.LCFI2:
	ret	4
.LFE0:
	.size	my_func1, .-my_func1
	.globl	my_func2
	.type	my_func2, @function
my_func2:
.LFB1:
	.loc 1 20 35
	endbr32
	push	ebp
.LCFI3:
	mov	ebp, esp
.LCFI4:
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 21 13
	mov	eax, DWORD PTR 8[ebp]
	mov	eax, DWORD PTR [eax]
	.loc 1 21 16
	lea	edx, 1[eax]
	mov	eax, DWORD PTR 8[ebp]
	mov	DWORD PTR [eax], edx
	.loc 1 22 13
	mov	eax, DWORD PTR 8[ebp]
	mov	eax, DWORD PTR 4[eax]
	.loc 1 22 16
	lea	edx, 1[eax]
	mov	eax, DWORD PTR 8[ebp]
	mov	DWORD PTR 4[eax], edx
	.loc 1 23 14
	mov	eax, DWORD PTR 8[ebp]
	mov	eax, DWORD PTR 8[eax]
	.loc 1 23 24
	mov	DWORD PTR [eax], 2
	.loc 1 24 1
	nop
	pop	ebp
.LCFI5:
	ret
.LFE1:
	.size	my_func2, .-my_func2
	.globl	main
	.type	main, @function
main:
.LFB2:
	.loc 1 26 11
	endbr32
	lea	ecx, 4[esp]
.LCFI6:
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	mov	ebp, esp
.LCFI7:
	push	ecx
.LCFI8:
	sub	esp, 36
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	.loc 1 26 11
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR -12[ebp], eax
	xor	eax, eax
	.loc 1 27 9
	mov	DWORD PTR -40[ebp], 10
	.loc 1 28 6
	mov	eax, DWORD PTR -40[ebp]
	add	eax, 1
	mov	DWORD PTR -40[ebp], eax
	.loc 1 29 14
	mov	DWORD PTR -36[ebp], 1
	mov	DWORD PTR -32[ebp], 2
	lea	eax, -40[ebp]
	mov	DWORD PTR -28[ebp], eax
	.loc 1 34 11
	lea	eax, -24[ebp]
	push	DWORD PTR -28[ebp]
	push	DWORD PTR -32[ebp]
	push	DWORD PTR -36[ebp]
	push	eax
	call	my_func1
	add	esp, 12
	.loc 1 35 11
	mov	DWORD PTR -24[ebp], 5
	.loc 1 38 5
	lea	eax, -36[ebp]
	push	eax
	call	my_func2
	add	esp, 4
	mov	eax, 0
	.loc 1 41 1
	mov	edx, DWORD PTR -12[ebp]
	xor	edx, DWORD PTR gs:20
	je	.L6
	call	__stack_chk_fail_local
.L6:
	mov	ecx, DWORD PTR -4[ebp]
.LCFI9:
	leave
.LCFI10:
	lea	esp, -4[ecx]
.LCFI11:
	ret
.LFE2:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB3:
	mov	eax, DWORD PTR [esp]
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
	.byte	0x4
	.long	.LCFI6-.LFB2
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0x10
	.byte	0x5
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xf
	.uleb128 0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x6
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xc5
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
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
	.file 7 "/usr/include/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0xc
	.long	.LASF60
	.long	.LASF61
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
	.uleb128 0x4
	.long	0x38
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x7a
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
	.long	0x94
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6e
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.long	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x236
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x67
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa9
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa9
	.byte	0xc
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa9
	.byte	0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa9
	.byte	0x14
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa9
	.byte	0x18
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa9
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa9
	.byte	0x20
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa9
	.byte	0x24
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa9
	.byte	0x28
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa9
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x24f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x255
	.byte	0x34
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x67
	.byte	0x38
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x67
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x88
	.byte	0x40
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x4b
	.byte	0x44
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x59
	.byte	0x46
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x25b
	.byte	0x47
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x26b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x9b
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x276
	.byte	0x54
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x281
	.byte	0x58
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x255
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xa7
	.byte	0x60
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x67
	.byte	0x68
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x287
	.byte	0x6c
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xaf
	.uleb128 0xa
	.long	.LASF63
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x7
	.byte	0x4
	.long	0x24a
	.uleb128 0x7
	.byte	0x4
	.long	0xaf
	.uleb128 0xc
	.long	0x38
	.long	0x26b
	.uleb128 0xd
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x242
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x7
	.byte	0x4
	.long	0x271
	.uleb128 0xb
	.long	.LASF46
	.uleb128 0x7
	.byte	0x4
	.long	0x27c
	.uleb128 0xc
	.long	0x38
	.long	0x297
	.uleb128 0xd
	.long	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a3
	.uleb128 0x7
	.byte	0x4
	.long	0x236
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a3
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a3
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x67
	.uleb128 0xc
	.long	0x2e3
	.long	0x2d8
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.long	0x2cd
	.uleb128 0x7
	.byte	0x4
	.long	0x3f
	.uleb128 0x4
	.long	0x2dd
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2d8
	.uleb128 0x10
	.byte	0xc
	.byte	0x1
	.byte	0x2
	.byte	0x9
	.long	0x321
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.long	0x67
	.byte	0
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x4
	.byte	0x9
	.long	0x67
	.byte	0x4
	.uleb128 0x9
	.long	.LASF52
	.byte	0x1
	.byte	0x5
	.byte	0xb
	.long	0x321
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x67
	.uleb128 0x2
	.long	.LASF53
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.long	0x2f4
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.long	0x67
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x379
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.long	0x67
	.uleb128 0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.long	0x327
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x13
	.string	"ans"
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.long	0x327
	.uleb128 0x2
	.byte	0x75
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x39f
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x14
	.byte	0x1a
	.long	0x39f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x327
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.long	0x327
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0xd
	.byte	0x1c
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
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
.LASF59:
	.string	"GNU C17 9.4.0 -m32 -masm=intel -mtune=generic -march=i686 -g -fno-dwarf2-cfi-asm -fno-asynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF50:
	.string	"sys_nerr"
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
.LASF58:
	.string	"myStruct"
.LASF5:
	.string	"signed char"
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
.LASF62:
	.string	"_IO_FILE"
.LASF2:
	.string	"unsigned char"
.LASF61:
	.string	"/home/lulo/arqui/tp3/ej13"
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
.LASF57:
	.string	"my_func1"
.LASF56:
	.string	"my_func2"
.LASF1:
	.string	"char"
.LASF55:
	.string	"main"
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
.LASF60:
	.string	"structs.c"
.LASF24:
	.string	"_IO_backup_base"
.LASF47:
	.string	"stdin"
.LASF52:
	.string	"pointer"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF53:
	.string	"t_struct"
.LASF32:
	.string	"_vtable_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF51:
	.string	"sys_errlist"
.LASF28:
	.string	"_fileno"
.LASF43:
	.string	"FILE"
.LASF54:
	.string	"my_struct"
.LASF48:
	.string	"stdout"
.LASF63:
	.string	"_IO_lock_t"
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
