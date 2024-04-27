global _start
extern printf

section .txt

_start:
    push ebp
    mov ebp, esp
    and esp, -16
    sub esp, 32

    mov DWORD  [esp+19], 1819043176
    mov DWORD  [esp+23], 1870078063
    mov DWORD  [esp+27], 174353522
    mov BYTE  [esp+31], 0

    lea eax, [esp+19]
    mov DWORD  [esp], eax
    call magia

    lea eax, [esp+19]
    mov DWORD  [esp], eax
    call printf
    mov eax, 0
    leave
    
  

magia:
    push ebp
    mov ebp, esp

    sub esp, 16
    jmp .L4

.L6:
    mov eax, DWORD  [ebp+8]
    movzx eax, BYTE  [eax]
    cmp al, 96
    jle .L5
    mov eax, DWORD  [ebp+8]
    movzx eax, BYTE  [eax]
    cmp al, 122
    jg .L5
    mov eax, DWORD  [ebp+8]
    movzx eax, BYTE  [eax]
    mov BYTE  [ebp-1], al
    movzx eax, BYTE  [ebp-1]
    sub eax, 32
    mov BYTE  [ebp-1], al
    mov eax, DWORD  [ebp+8]
    movzx edx, BYTE  [ebp-1]
    mov BYTE  [eax], dl
.L5:
    add DWORD  [ebp+8], 1
    
.L4:
    mov eax, DWORD  [ebp+8]
    movzx eax, BYTE  [eax]
    test al, al
    jne .L6
    leave
    ret
