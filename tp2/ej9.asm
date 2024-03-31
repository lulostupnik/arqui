section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   mov ebp, esp                 
   mov eax, [ebp]
   dec eax
   mov ebx, message
   call print
   mov ebx, placeholder
   call num_to_s
   call print
   mov ebx, carr_ret
   call print
   
   mov esp, ebp         ;desarmado de stack

   mov ebx,0
   call exit




section .bss
placeholder resb 16

section .data
array dd 3, 1, 10, -100, 8238, 10, 22,0,100     ;
bytes_offset equ $-array


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
tab_coma_ret db ' ', ',',0
message db "Cantidad de argumentos en el programa (sin contar el path al mismo): "