
global _start
_start:
    push ebp
    mov ebp, esp
    and esp, -16
    mov ah, 0x11
    movzx eax, BYTE [var+1]

    mov esp, ebp
    pop ebp
    mov ebx, 0  ; return
	mov eax, 1	; ID del Syscall EXIT
	int 80h	    ; Ejecucion de la llamada

section .data

var db 10,12