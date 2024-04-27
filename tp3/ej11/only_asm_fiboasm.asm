
global fiboasm
global _start
extern num_to_s
extern print

section .rodata:
message db "Numero de fibonacci: ",10,0
carr_ret db 10,0

section .bss
placeholder resb  40

section .text:


;Para compilar sin GCC, utilizar:
_start:

    mov ebx, message
    call print

    push 2
    call fiboasm

    mov ebx, placeholder
    call num_to_s
    call print

    mov ebx, carr_ret
    call print

    mov ebx, eax
	mov eax, 1	; ID del Syscall EXIT
	int 80h	; Ejecucion de la llamada

;int fiboasm(int n);
fiboasm:
    push ebp
    mov ebp, esp

.checks:
    mov edx, [ebp+8]        ; n va a edx
    cmp edx, 1
    je .one_cero 
    cmp edx, 0
    je .one_cero 
    cmp edx, -1
    jle .negative_num

;;LLAMO A FIBOASM (N-1 y N-2)
    dec edx
    push edx
    call fiboasm

    pop edx
    dec edx         ; edx tiene n-2
    
    push eax        ; guardo la rta de fibo(n-1)
    push edx        ; cargo parametro de fiboasm
    call fiboasm    ; fiboasm(n-2)
    pop edx         ; n-2 en edx (ya no me sirve)
    pop ecx         ; rta de fiboasm(n-1)
    add eax, ecx    ; EAX -> eax+ecx (fiboasm(n-2) +fiboasm(n-1) )

.fin:

    leave
    ret
 

;;CASOS BASE:

.one_cero:
    mov eax, 1
    jmp .fin

.negative_num:
    mov eax,-1
    jmp .fin