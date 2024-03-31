section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   mov eax, 0x14
   int 80h
   mov ebx, placeholder
   call num_to_s
   call print

   mov ebx,0
   call exit






section .bss
placeholder resb 16

section .data

section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
message     db "Se recorrieron ",0
message2    db "bytes", 10, 0
