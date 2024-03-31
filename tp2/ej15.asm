section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   call wait_print
   mov ebx,0
   call exit

wait_print:
    push ebp
    mov ebp, esp
    pushad

    mov eax, 0xa2   ;syscall nanosleep
    mov ebx, timespec1
    mov ecx, timespec2
    int 80h

    mov ebx, message
    call print

    mov ebx, placeholder
    mov eax, [timespec1]
    call num_to_s
    call print

    mov ebx, message2
    call print

    mov ebx, message4
    call print

    mov ebx, placeholder
    mov eax, [timespec1+4]
    call num_to_s
    call print

    mov ebx, message3
    call print

    popad
    mov esp, ebp
    pop ebp
    ret




section .bss
placeholder resb 16

section .data
timespec1 dd 5,2       ; 10 segundos, 0 nanosegundos
timespec2 dd 0,0        ; Cambia el valor si hubo algun erro al tiempo que falto ejecutar


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
message     db "Se pauso el programa por ", 0
message2    db " segundos",0
message3    db " nanosegundos", 10,0
message4    db " y "
