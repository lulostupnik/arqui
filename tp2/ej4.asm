section .text

global _start
extern print
extern exit
extern numtostr
extern num_to_s

;;COMPILAR con 2_libasm
_start:
    mov eax, 10000
    call sum_n_nums
    mov ebx, placeholder
    call num_to_s                       ; ESTA TENIENDO SEG FAULT CON NUMEROS GRANDES. PROBAR CON FUNCION de 4_libasm. 
    call print
    mov ebx, 0
	call exit



sum_n_nums:     ; recibe en EAX el numero, deja ahi la suma de los numeros. 
    push ebp    ;armado de stack
    mov ebp, esp
    push edx    ; backup
    mov edx, eax
.ciclo:   
    dec edx
    cmp edx, 0
    jle fin
    add eax, edx
    jmp .ciclo
    
fin:  
    pop edx         ;recupero backup
    mov esp, ebp    ;desarmado de stack
    pop ebp
    ret




section .bss
placeholder resb 16