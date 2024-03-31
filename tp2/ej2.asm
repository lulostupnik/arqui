section .text

global _start
extern print
extern exit

_start:
	mov ecx, 0

ciclo:
	mov al, [cadena+ecx]

string_mayusc:			
	cmp al,'a'			
	jl next_byte		
	cmp al,'z'
	jg next_byte		
	add al, 'A'-'a'
	mov byte[cadena+ecx], al
next_byte:
	inc ecx
	cmp byte[cadena+ecx], 0
	jne ciclo
	mov ebx, cadena
	call print
	mov ebx, 0
	call exit

section .data

cadena db "h4ppy c0ding",0
