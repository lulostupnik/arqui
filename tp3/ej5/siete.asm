global siete

section .text

siete:
    push ebp
    mov ebp, esp
    mov eax, 7          ; lo que retorna
    leave
    ret