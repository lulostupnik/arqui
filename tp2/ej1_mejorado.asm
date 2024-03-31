section .text

global _start
global _print
gloabl _exit

_start:
	mov ebx, cadena 		;puntero a la cadena
	call print

	mov ebx, 0			;valor de retorno
	call exit

section .data

cadena db "2Hola mundo!!", 10,0	;”Hola mundo!!\n”


;../compile_linkedit_run.sh ej1.asm fuentes/2_libasm.asm