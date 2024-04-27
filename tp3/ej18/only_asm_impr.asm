global _start:
extern print:

;int imprime_pantalla(char *encabezado, int tam_enc, char *pie, int tam_pie)
section .text
_start:
    push ebp
    mov ebp, esp
    
;;Impresion de pie:  
    mov eax, 5
    push dword eax                    ; numero de fila
    push dword pie                     ; char * pie    
    push dword [tam_pie]               ; int tam_pie
    call impr_fil
    mov esp, 4*3

    lea eax, [screen + 6*80-2]        
    mov byte [eax], 10
    inc eax
    mov byte [eax], 0
;syscall: -----------------------------------------------------------------
    lea ecx, [screen+5*80]
	mov edx, 100
	mov ebx, 1	; FileDescriptor (STDOUT)
	mov eax, 4	; ID del Syscall WRITE
	int 80h
;--------------------------------------------------------------------
    
    mov eax,1
    int 80h
    ret

;Params:
;   Fila para imprmir (valor de 0 a 5, no verifica)
;   Dir mem mensaje     
;   Tamano mensaje
;   Retorno EN EAX: 0 si pudo imprmir todo, 1 si no (Tamano mayor a 80) 

;(No verifico que sean valores ASCII) (No verifico que el tamano sea correcto)
impr_fil:   
    push ebp
    mov ebp, esp
   
    mov ecx, [ebp+16]                    ;; fila (no se queda en ecx, reemplo dspues)  
    ;;;cambiar a ecx*80
  
    lea eax, [screen + 5*80]              ;; inicio de la fila
    mov ecx, [ebp+8]                     ;; tamano de la cadena
    mov edx, [ebp+12]                    ;; dir mensaje

;;VALIDACION DEL TAMANO DE LA CADENA:
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
    mov ecx, [edx]
    mov [eax], ecx                    ;; pongo en la pos actual de la fila 
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





section .bss
screen resb 80*6


section .data

encabezado db  "Este es el titulo",0
tam_enc db  14
pie db "Fin de mensaje",0
tam_pie db  14