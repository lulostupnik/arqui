
global _start
extern main

section .text

_start:
; Antes de llamar al main quiero hacer un print
    
    mov rdi, 1   ; File descriptor 1 (stdout)
    mov rsi, txt ; Pointer to the string to print
    mov rdx, len ; Length of the string
    mov rax, 1   ; syscall number for sys_write
    syscall      ; Call kernel
   

;  Ya puedo llamar al main
    mov rdi, [rsp]    ; Cantidad de argumentos
    lea rsi, [rsp+8]  ; (equivalente a las dos lineas comentadas abajo)
    call main
    
 

    mov rdi, 0  ; Return 0 from the program
    mov rax, 60 ; syscall number for sys_exit
    syscall      ; Call kernel to exit

section .data
txt db "Starting in asm! ",10 ;10 is /n
len equ $-txt        ;$ is current memory address