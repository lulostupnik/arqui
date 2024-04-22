;main.asm
GLOBAL main
EXTERN printf

section .text

main:
    push ebp ;Armado de stack frame
    mov ebp, esp ;
    
    push dword [ebp+8]
    push fmt
    call printf
    add esp, 2*4            ; popea [ebp+8] y fmt (desarma stack)

    push esi
    push ebx
    push edi      
    
    mov esi, [ebp+8]        ;; cantidad de argumentos en esi
    mov ebx, [ebp+12]       ;; direccion del string del argumento 1
    mov edi, 0              ;; cantidad de argumentos recorridos
    
;;OBSERVACION: --> uso los registros ESI, EBX, EDI porque al llamar a printf no se cambian !
.continue:
    cmp esi, edi
    je .fin

    push dword [ebx+4*edi]
    push fmt2
    call printf
    add esp, 2*4
   
    inc edi
    jmp .continue
.fin:
    
    pop edi
    pop ebx
    pop esi


    mov eax, 0
    mov esp, ebp ;Desarmado de stack frame
    pop ebp ;
    ret



section .rodata
    fmt db "Cantidad de argumentos: %d",10, 0
    fmt2 db "%s",10,0
section .bss
    placeholder resb 40