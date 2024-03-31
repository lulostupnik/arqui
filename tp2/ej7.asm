section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   push array
   push dword bytes_offset
   call min_from_array
   pop  ebx ;libero stack
   pop  ebx
   mov ebx, placeholder
   call num_to_s
   call print
   mov ebx,0
   call exit

;------------------------------------------------------------------------------------------------------
;min_from_array
;------------------------------------------------------------------------------------------------------
;Argumentos: 
; 1) Direccion del array de double words en el stack              (4 bytes)
; 2) Cantidad de bytes del array en el stack                      (4 bytes)      (El array debe contener al menos 4 bytes)
;(Obs: Pushear 1 y despues 2)
;------------------------------------------------------------------------------------------------------
;Retorno:
; --> Minimo numero del array en eax
;------------------------------------------------------------------------------------------------------

;OBS --> No checkea que la longitud sea mayor a 0
min_from_array:
    push ebp
    mov ebp, esp
    push ecx            ;backup
    push esi
    mov ecx, 0              ;offset array
    mov esi, [ebp+12]       ; Direccion de inicio del array
    mov eax, [esi]    ; --> Inicializo min en array[0]
.ciclo:
    cmp ecx, dword[ebp+8]
    jae .fin                ;Si ecx >= a la long --> me voy
    cmp eax, dword[esi+ecx]
    jg  .cambiar_min          ; si
.continue:
    add ecx,4
    jmp .ciclo
.cambiar_min:
    mov eax, dword[esi+ecx]
    jmp .continue
.fin:
    pop esi
    pop ecx
    mov esp, ebp
    pop ebp
    ret

section .bss
placeholder resb 16


section .data
array dd 3, 5,  2, 2, 2,10,1,3,3,31,0,2,9,-1,9,-100000,4389347,-76237623,8      ; dw --> define double
bytes_offset equ $-array
longitud equ ($-array)/4            ; no lo uso, pero se podia hacer esto alternativamente (guarda que $ cambia por la definicion de bytes_offset)

section .rodata
carr_ret	db 10, 0   ; "\n\0"