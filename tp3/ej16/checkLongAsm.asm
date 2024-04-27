global checkLong
global msg
global len
global msg_address

;extern int checkLong(char * str, unsigned int cant);

section .text

checkLong:
	push ebp
	mov ebp, esp

	mov eax, 0 		    ; counter
	mov ecx, [ebp+8]	; dir de memoria del str

.loop:
	cmp byte [ecx], 0
	je .fin
	inc eax
	inc ecx
	jmp .loop
.fin:
	sub eax, [ebp+12]
	
	mov esp, ebp
	pop ebp
	ret



section .data

msg: db "Hola Mundo", 0
len: db 10
