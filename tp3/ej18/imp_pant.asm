
global _start
global imprimir
;int imprime_pantalla(char *encabezado, int tam_enc, char *pie, int tam_pie)

section .text
_start:
imprimir:
    push ebp
    mov ebp, esp

    
    ;mov eax, 0xB8000
    mov eax, 0xA0000000         ;; creo q esto siempre va a tirar seg fault xq no tenemos acceso. 
    mov byte[eax], 'a'


   
    mov eax,1    ;exit syscall
    int 80h      ;runs syscall
    

    leave
    ret