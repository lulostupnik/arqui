section .text

global _start
extern print
extern exit
extern num_to_s

_start:
    mov eax, 1102    ;;; N = 1102
    mov ecx, 900     ;;; K = 900
    call print_loop

    mov ebx, 0
	call exit

print_loop:           ;; N en EAX, K en ECX
    push ebp        
    mov ebp, esp

    push edx        ;; Backup --> [ebp-4]
    push ebx        ;; backup --> [ebp-8]
    push eax        ;; me guardo N en el stack para ser usado  --> Esta en la pos [ebp-12]
    push ecx        ;; me guardo K en el stack para ser usado --> pos [ebp-16]
    
    mov edx, 0
.ciclo:
    cmp edx, [ebp-16]    ;; veo si ya llegue a K
    jg .fin
    ;;LLAMADO DE IS_DIVISOR
    mov eax, [ebp-12]    ;pongo el valor de N en eax
    mov ecx, edx        ;me pongo el valor del current iter en ecx
    call is_divisor
    cmp eax, 0
    je .divide
.next:
    inc edx
    jmp .ciclo

.divide:
    mov eax, edx            ; quiero imprimir M porque divide a N
    mov ebx, placeholder    ; memoria para poner el string
    call num_to_s           
    call print              ; ebx tiene placeholder
    mov ebx, carr_ret       ; impresion de "\n\0"
    call print
    jmp .next               


.fin:
    pop ecx
    pop eax
    pop ebx
    pop edx

    mov esp, ebp    ;desarmado de stack
    pop ebp
    ret

;;agregar caso que M sea 0
is_divisor:         ; Argumentos. 1) M en ECX, 2) N en EAX. Deja en EAX 0 si M divide a N, otro numero si no. 
    push ebp        ;armado de stack
    mov ebp, esp
   
    cmp ecx, 0
    jne .not_zero
    mov eax, 0
    jmp .fin

.not_zero:
    push edx        ; backup para ser usado. 
    mov edx, 0
    div ecx
    mov eax, edx    ; le cargo el resto a eax
    pop edx         ; guardo back
.fin:
    mov esp, ebp    ;desarmado de stack
    pop ebp
    ret


section .bss
placeholder resb 16

section .rodata

carr_ret	db 10, 0   ; "\n\0"