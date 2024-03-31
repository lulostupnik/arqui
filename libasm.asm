GLOBAL print
GLOBAL exit
global num_to_s

section .text


;===============================================================================
; print - imprime una cadena en la salida estandar
;===============================================================================
; Argumentos:
;	ebx: cadena a imprimer en pantalla, terminada con 0
;===============================================================================
print:
	pushad		; hago backup de los registros

	call strlen
	mov ecx, ebx	; la cadena esta en ebx
	mov edx, eax	; en eax viene el largo de la cadena

	mov ebx, 1	; FileDescriptor (STDOUT)
	mov eax, 4	; ID del Syscall WRITE
	int 80h
	
	popad 		; restauro los registros
	ret	


;===============================================================================
; exit - termina el programa
;===============================================================================
; Argumentos:
;	ebx: valor de retorno al sistema operativo
;===============================================================================
exit:
	mov eax, 1		; ID del Syscall EXIT
	int 80h		; Ejecucion de la llamada


;===============================================================================
; exit - calcula la longitud de una cadena terminada con 0
;===============================================================================
; Argumentos:
;	ebx: puntero a la cadena
; Retorno:
;	eax: largo de la cadena
;===============================================================================
strlen:
	push ecx	; preservo ecx	
	push ebx	; preservo ebx
	pushf		; preservo los flags

	mov ecx, 0	; inicializo el contador en 0
.loop:			; etiqueta local a strlen
	mov al, [ebx] 	; traigo al registo AL el valor apuntado por ebx
	cmp al, 0	; lo comparo con 0 o NULL
	jz .fin 	; Si es cero, termino.
	inc ecx	; Incremento el contador
	inc ebx
	jmp .loop
.fin:			; etiqueta local a strlen
	mov eax, ecx	
	
	popf
	pop ebx	; restauro ebx	
	pop ecx	; restauro ecx
	ret
	


;;ECHO POR MI, PUEDE TENER ERRORES

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