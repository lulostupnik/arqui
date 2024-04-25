
global _start
extern main

section .text

_start:
; Antes de llamar al main quiero hacer un print
    mov ecx, txt
    mov edx, len
    mov eax, 4   ;write syscall
    mov ebx, 1   ;stdout
    int 80h      ;runs syscall

;  Ya puedo llamar al main
    mov eax, [esp]    ; Cantidad de argumentos
    lea ecx, [esp+4]  ; (equivalente a las dos lineas comentadas abajo)
;   mov ecx, esp      
;   add ecx, 4        ; Puntero al primer argumento
    push  dword ecx     
    push  dword eax
    call main
    
    add esp, 4*2      ; libero stack
    
    mov ebx,eax    ;exit code, comes from having run main
    mov eax,1    ;exit syscall
    int 80h      ;runs syscall

section .data
txt db "Starting in asm! ",10 ;10 is /n
len equ $-txt        ;$ is current memory address