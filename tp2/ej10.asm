section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   mov ebp, esp                 
   call print_cant_arg
   call print_args

   mov esp, ebp         ;desarmado de stack

   mov ebx,0
   call exit


print_cant_arg:               ; modifica EAX y EBX
   mov eax, [ebp]
   dec eax
   mov ebx, message
   call print
   mov ebx, placeholder
   call num_to_s
   call print
   mov ebx, carr_ret
   call print
   ret

;Obs --> por la simplicidad del programa, no backapeo los registros ni armo el stack
print_args:         ; Recibe en EBP el puntero a ESP al inicializar el programa
    mov esi, [ebp]  ; cant args
    dec esi         ; (no imprimimos el path al programa)
    mov eax, 0      ; contador
    mov edi, 8      ; offset
.start_cicle:    
    cmp eax, esi
    jge .end_cicle
    mov ebx, argumento_numero
    call print
    mov ebx, placeholder
    call num_to_s
    call print
    mov ebx, corchete_derecho
    call print
    mov ebx, [ebp+edi]
    call print
    mov ebx, carr_ret
    call print
    
    inc eax
    add edi, 4
    jmp .start_cicle
.end_cicle:
    ret    



section .bss
placeholder resb 16

section .data
array dd 3, 1, 10, -100, 8238, 10, 22,0,100     ;
bytes_offset equ $-array


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
tab_coma_ret db ' ', ',',0
message db "Cantidad de argumentos: ",0
argumento_numero db "Argumento numero [",0
corchete_derecho db ']',':',' ',0