section .text

global _start
extern print
extern exit

_start:
    mov eax, 0x02       ; syscall fork
    int 80h            
    cmp eax, 0          ; Si soy padre, en EAX tengo el PID del hijo. Si soy hijo, en eax tengo 0. Si hay error, -1 en eax del padre (hijo no se creo)
    je hijo
    mov ebx, msg_padre
    jmp fin
hijo:
    mov ebx, msg_hijo
fin:
    call print
    mov ebx,0
    call exit



section .bss
pt_regs resb 16

section .data


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
msg_padre     db "Soy el proceso padre",10, 0
msg_hijo    db "Soy el proceso hijo",10,0
