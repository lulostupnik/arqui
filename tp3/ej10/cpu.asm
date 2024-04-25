global get_cpu

section .text

;int getcpu(unsigned int *_Nullable cpu, unsigned int *_Nullable node);

get_cpu:
    push ebp
    mov ebp, esp

    push ebx            ; backup

    mov eax, 0x13e      ; get_cpu syscall
   ; mov edx, 0          ; por las (no se si es necesario)
    mov ebx, [ebp+8]    ; uint * cpu
    mov ecx, [ebp+12]   ; uint * node
    int 80h

    pop ebx
    

    leave
    ret

