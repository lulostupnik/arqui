section .text

global _start
extern print
extern exit

_start:
    mov eax, -1002
    mov ebx, placeholder
    call num_to_s
    call print
    mov ebx, 0
	call exit

num_to_s:       ; recibe en eax el numero, en ebx la zona de memoria
    push ebp    ;armado de stack
    mov ebp, esp;armado de stack
    pushad       ;para guardar los registros de 32 bits


    push 0      ; hago el string null terminated
    mov ecx, 10 ; voy a usar ecx para dividir
    mov esi, 1  ; si ESI es 1 --> es POS. Si es 0 --> es neg
    cmp eax, 0
    js  .negativo

   
.ciclo: 
    mov edx, 0  ; la division usa 64 bits formados por EDX seguidos de EAX. Necesito que EDX sea cero, porque sino cambia el nuemro
    div ecx     ; EAX tiene el quotient, EDX el resto
    add edx, '0';convierto edx en ascii
    push edx
    cmp eax, 0  ; si el quotient es 0, termine 
    jne .ciclo

    ;Aca es si el quotient fue 0:
    mov ecx, 0  ; ecx es el indice de la zona de memoria    
    cmp esi, 0  ; flag para ver signo del numero
    je .put_minus
.ciclo2:         ; tengo que sacar los bytes del stack y ponerlos en la zona de memoria
    pop eax
    mov byte[ebx+ecx], al
    cmp eax, 0
    je .fin;
    inc ecx
    jmp .ciclo2
.fin:
    popad                   ;recupero los registros 
    mov esp, ebp            ;desarmado de stack
    pop ebp
    ret
.negativo:
    mov esi, 0              
    neg eax                 ; mult por -1 es lo mismo?
    jmp .ciclo
.put_minus:
    mov byte[ebx], '-'
    inc ecx
    jmp .ciclo2

section .bss
placeholder resb 16