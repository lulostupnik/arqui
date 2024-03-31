section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   mov ebp, esp
   mov eax, 0            
.ciclo:
   mov ebx, message
   call print
   mov ebx, placeholder
   call num_to_s
   call print
   mov ebx, message2
   call print
   mov ebx, [ebp+eax]   ; lo que hay en el stack
   
   add eax, -1000
   jmp .ciclo

;Se recorrieron -8384000bytes
; Para arriba entre 4 mil a 12 mil
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
