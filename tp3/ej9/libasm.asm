
GLOBAL sys_open2
GLOBAL sys_write2
GLOBAL sys_close2
ALIGN 4



section .text
;int open(const char *pathname, int flags, mode_t mode);
sys_open2:
    push ebp
    mov ebp, esp

    push ebx            ; no tiene que cambiar el registro EBX para que funcione ASM + C
    mov eax, 0x05       ; syscall id
    mov ebx, [ebp+8]
    mov ecx, [ebp+12]
    mov edx, [ebp+16]
    int 80h
    pop ebx             ; la rta ya esta en EAX
    
    mov esp, ebp
    pop ebp
    ret



sys_write2:
    push ebp
    mov ebp, esp
    push ebx ;preservar ebx
    mov eax, 0x4
    mov ebx, [ebp+8] ;fd
    mov ecx, [ebp+12] ;buffer
    mov edx, [ebp+16] ;length
    int 0x80
    pop ebx
    mov esp, ebp
    pop ebp
    ret

sys_close2:
    push ebp
    mov ebp, esp

    push ebx
    mov eax, 0x06
    mov ebx, [ebp+8]
    int 80h
    pop ebx

    mov esp, ebp
    pop ebp
    ret
