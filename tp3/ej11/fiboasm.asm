global fiboasm
section .text


;int fiboasm(int n);
fiboasm:
	push ebp
    mov ebp, esp

    mov edx, [ebp+8]        ; n va a edx
    cmp edx, 1
    je .one_cero 
    cmp edx, 0
    je .one_cero 
    cmp edx, -1
    jle .negative_num

;llamadas recursivas:
    dec edx
    push edx
    call fiboasm

    pop edx
    dec edx         ; edx tiene n-2
    
    push eax        ; guardo la rta de fiboasm(n-1)
    push edx        ; cargo parametro de fiboasm
    call fiboasm    ; fiboasm(n-2)
    pop edx         ; n-2 en edx (ya no me sirve)
    pop ecx         ; rta de fiboasm(n-1)
    add eax, ecx    ; EAX -> eax+ecx (fiboasm(n-2) +fiboasm(n-1) )

.fin:
	leave
	ret

;CASOS BASE:
.one_cero:
    mov eax, 1
    jmp .fin

.negative_num:
    mov eax,-1
    jmp .fin