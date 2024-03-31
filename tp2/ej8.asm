section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   push ebp
   mov ebp, esp                 
   
   push array
   push dword bytes_offset
   call order_array
   call print_array
   
   mov esp, ebp         ;desarmado de stack
   pop ebp

   mov ebx,0
   call exit

;------------------------------------------------------------------------------------------------------
;order_array
;------------------------------------------------------------------------------------------------------
;Argumentos: 
; 1) Direccion del array de double words en el stack              (4 bytes)
; 2) Cantidad de bytes del array en el stack                      (4 bytes)      (El array debe contener al menos 4 bytes)
;(Obs: Pushear 1 y despues 2)
;------------------------------------------------------------------------------------------------------
;Retorno:
; 
;------------------------------------------------------------------------------------------------------

;OBS --> No checkea que la longitud sea mayor a 0


;;Algoritmo: Por cada posicion busco el numero mas chico a la derecha, y si es mas chico que la posicion, los intercambio de lugar
;; Complejidad --> O(N^2) (creo)

;;Explicacion de registros usados
; --> ecx: OFFSET del ELEMENTO en el que estoy parado
; En ciclo1: --> EAX: OFFSET del MINIMO elemento a la derecha de ECX ||| EDX: offset iterador a la derecha de CURRENT ELEMENT 
; ESI --> Direccion del array inicial
; EDI y EBX --> utilizados para operaciones de memoria a memoria
; [EBP+8] --> CANTIDAD DE BYTES DE OFFSET
order_array:
    push ebp
    mov ebp, esp
    pushad
    mov ecx, 0                  ; current offset from array
    mov esi, [ebp+12]           ; Direccion de inicio del array
    
.check_min:
    cmp ecx, [ebp+8]            ; Me fijo que el offset siga en el rango
    jae .fin
    mov eax, ecx                ; inicializo eax con el current offset
    mov edx, ecx                ; inicializo el offset edx, en el current offset
.ciclo1:
    add edx, 4                  ; me muevo al siguiente elemento
    cmp edx, [ebp+8]            ; me fijo estar en el array
    jae .fin_ciclo1             ; Si el siguiente elemento no esta dentro del array, termino iteracion
    mov ebx, [esi+eax]          ; auxiliar
    cmp ebx, [esi+edx]          ; Comparo a current MIN a la derecha con el indice actual del loop a la derecha de ECX      
    jl  .ciclo1                 ; si [eax+esi] (min) no es menor a [edx+esi] (current), continuo en el ciclo
    ;aca [eax+esi] es mas grande a que [esi+edx]
    mov eax, edx                ; eax tiene el offset del min
    jmp .ciclo1
.fin_ciclo1:
    mov ebx, [esi+eax]
    cmp ebx, [esi+ecx]          ; veo si el minimo a la derecha del current pos es mas chico que el current pos
    jl  .less_ciclo1
.continue_fin_ciclo1:
    add ecx, 4
    jmp .check_min
.less_ciclo1:
    mov ebx, [esi+eax]          ; Intercambio valores dentro del array 
    mov edi, [esi+ecx]
    mov [esi+ecx], ebx
    mov [esi+eax], edi
    jmp .continue_fin_ciclo1
.fin:
    popad
    mov esp, ebp
    pop ebp
    ret

;------------------------------------------------------------------------------------------------------
;print_array    --> Imprime un array de numeros separados por un tabulador
;------------------------------------------------------------------------------------------------------
;Argumentos: 
; 1) Direccion del array de double words en el stack              (4 bytes)
; 2) Cantidad de bytes del array en el stack                      (4 bytes)      (El array debe contener al menos 4 bytes)
;(Obs: Pushear 1 y despues 2)
;------------------------------------------------------------------------------------------------------
;Retorno:
; --> void
;------------------------------------------------------------------------------------------------------
print_array:
    push ebp
    mov ebp, esp
    pushad
    mov ecx, 0              ;offset array
    mov esi, [ebp+12]       ; Direccion de inicio del array
.ciclo:
    cmp ecx, [ebp+8]        ; Me fijo que el offset siga en el rango
    jae .fin
    mov ebx, placeholder    ; para imprimir numeros
    mov eax, [esi+ecx]
    call num_to_s
    call print
    mov ebx, tab_ret
    call print
    add ecx, 4
    jmp .ciclo 
.fin:
    mov ebx, carr_ret
    call print
    popad
    mov esp, ebp
    pop ebp
    ret





section .bss
placeholder resb 16

section .data
array dd 3, 1, 10, -100, 8238, 10, 22,0,100     ; dw --> define double
bytes_offset equ $-array


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
tab_coma_ret db ' ', ',',0