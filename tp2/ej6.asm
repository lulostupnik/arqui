section .text

global _start
extern print
extern exit
extern num_to_s


;; CON ESTA IMPLEMENTACION YA TIENE OVERFLOW CON EL NUMERO 12! 
_start:
   
   mov eax, 13
   push eax
   call fact

   pop eax  ; numero factorial
   mov ebx, placeholder
   call num_to_s
   call print

   mov ebx, 0
   call exit

fact:           ; Parametros: el numero para el factorial en el stack
    push ebp    ; en [ebp+8] esta el parametro 
    mov ebp, esp 
    
    cmp dword [ebp+8], 0
    je .zero

    push eax    ; backup
    push edx    ; backup
    push ecx    ;
    
    mov ecx, [ebp+8]
.ciclo:
    dec ecx
    mul ecx     ; comparar con el OF/CF
    
    jo .overflow ; si hay overflow, termino. 
    ;cmp edx, 0  ; cuando se pasa de 32 bits, deja el resto en EDX
    ;jne .overflow
    
    cmp ecx, 1
    jg .ciclo
    mov [ebp+8], eax
    jmp .fin
.zero:
    mov dword [ebp+8],1
.fin:
    pop ecx
    pop edx
    pop eax

    mov esp, ebp
    pop ebp
    ret
.overflow:
    mov dword [ebp+8],-1         ; 0 si hay OF 
    jmp .fin

section .bss
placeholder resb 16

section .rodata

carr_ret	db 10, 0   ; "\n\0"