;Consigna alterada: buscar los numeros, y transformarlos en la letra
section .text

global _start
extern print  ;recibe en ebx la cadena
extern exit    ; recibe en ebx el valor a retornar al sistema operativo

_start:
    mov ecx,0
ciclo:
 mov al, [cadena+ecx]
    cmp al, '4'
    jne compZero
    mov byte[cadena+ecx], 'a'
    jmp siguiente
compZero:
    cmp al, '0'
    jne compOne
    mov byte[cadena+ecx],'o'
    jmp siguiente
compOne:
    cmp al,'1'
    jne compNull
    mov byte[cadena+ecx],'i'
    jmp siguiente
compNull:
    cmp al, 0
    jne siguiente
    mov ebx, cadena
    call print
    mov ebx,0
    call exit
siguiente:
    inc ecx
    jmp ciclo

section .data
cadena db "h4ppy c0d1ng",10,0