section .text

global _start

_start:
	mov ecx, cadena 		;puntero a la cadena
	mov edx, longitud		;largo de cadena
	mov ebx, 1			; file descriptor(STDOUD)
	mov eax, 4			;ID de la SYSCALL write
	int 80h				;ejecucion de la llamada

	mov eax, 1			;ID syscall EXIT
	mov ebx, 0			;valor de retorno
	int 80h

section .data

cadena db "2Hola mundo!!", 10	;”Hola mundo!!\n”
longitud equ $-cadena
long2 db $-cadena

section .bss

placeholder resb 10
