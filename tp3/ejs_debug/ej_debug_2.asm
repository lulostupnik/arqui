; ej_debug_2.asm
;El programa ej_debug_2 debiera imprimir el número 1234567890 pero también falla.
;Diagnostique el problema y solucione el código.
;===============================================================================



;int sprintf(char *str, const char *format, ...)


GLOBAL main
EXTERN puts, sprintf

section .rodata

fmt db "%d",0
number dd 1234567890

section .text
main:
     push ebp
     mov ebp, esp

     push dword [number]
     push fmt
     push buffer
     call sprintf
     add esp, 3*4             ; aca decia and esp, 3*4
     push buffer
     call puts
     add esp,4
     
     leave
     ret
section .data


section .bss
buffer resb 40
