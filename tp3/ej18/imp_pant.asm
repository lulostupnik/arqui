global imprimir
global get_screen
global get_screen_foot
global screen_ptr

;int imprime_pantalla(char *encabezado, int tam_enc, char *pie, int tam_pie)

section .text

get_screen:
    mov eax, screen
    ret
get_screen_foot:
    lea eax, [screen+5*80]
    ret


imprimir:
    push ebp
    mov ebp, esp
    
;;Impresion de pie:  
    mov eax, 5
    push dword eax                    ; numero de fila
    push dword [ebp+16]                ; char * encabezado
    push dword [ebp+20]               ; int tam_enc
    call impr_fil
    add esp, 4*3
    cmp eax, 1
    je .error

;;Impresion de encabezado
    mov eax, 0
    push dword eax                    ; numero de fila
    push dword [ebp+8]               ; char * pie    
    push dword [ebp+12]               ; int tam_pie
    call impr_fil
    add esp, 4*3
    
.error:
    leave
    ret

;Params:
;   Fila para imprmir (valor de 0 a 5, no verifica)
;   Dir mem mensaje     
;   Tamano mensaje
;   Retorno EN EAX: 0 si pudo imprmir todo, 1 si no (Tamano mayor a 80) 

;(No verifico que sean valores ASCII)
impr_fil:   
    push ebp
    mov ebp, esp
;------------------------------------------------------------------------------------------------------
    mov ecx, [ebp+16]                 ;                 ecx tiene el numero de fila                   ;
    shl ecx, 6  ;; ecx = ecx*64       ;                                                               ;
    mov edx, [ebp+16]                 ;                                                               ;
    shl edx, 4  ;; edx = edx* 16      ;                 (ecx + edx) tiene el numero de fila * 80      ;
;------------------------------------------------------------------------------------------------------

    lea eax, [screen + ecx+edx]           ;; inicio de la fila
    mov ecx, [ebp+8]                     ;; tamano de la cadena
    mov edx, [ebp+12]                    ;; dir mensaje


;VALIDACION DEL TAMANO DE LA CADENA:
    cmp ecx, 80
    jg .err
    cmp ecx, 1
    jl .err
    jmp .loop
.err:
    mov eax, 1
    jmp .returning

.loop:
    cmp ecx, 0
    jle .fin
    push ecx
    mov ecx, [edx]                      ;;mov ecx,  *msg_iter
    mov [eax], ecx                      ;; mov *screen_iter, *msg_iter
    pop ecx
    inc eax
    inc edx
    dec ecx
    jmp .loop

.fin:   
    mov eax, 0
.returning:
    leave
    ret


section .data
screen_ptr dd screen

section .bss
screen resb 80*6