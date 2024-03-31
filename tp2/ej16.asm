section .text

global _start
extern print
extern exit
extern num_to_s


_start:
   call wait_read
   mov ebx, buff
   call string_to_mayusc
   call print2
   
  

   mov ebx,0
   call exit

wait_read:              ; Cambia los registros eax, ecx, edx, ebx
    push ebp
    mov ebp, esp
    mov eax, 0x03       ;syscall read  --> EN EAX queda la longitud del read. (Retorno)
    mov ecx, buff
    mov edx, 15         ; tamano del buff-1 (El ultimo byte queda en 0 para hacerlo NULL TERMINATED)
    mov ebx, 0          ;file descriptor
    int 80h
    mov esp, ebp
    pop ebp
    ret

print2:             ; Recibe en EAX el count, EBX el buff  --> cambia los registros 
    push ebp
    mov ebp, esp
    mov edx,eax 
    mov ecx, ebx
    mov ebx, 1
    mov eax, 0x04
    int 80h
    mov esp, ebp
    pop ebp
    ret



;; PARAMETROS --> EBX: Dirreccion de memoria de la cadena. (Null terminated). La pasa a mayusc
string_to_mayusc:       ;; NO cambia ningun registro        
    push ebp
    mov ebp, esp
    push eax
    push ecx
    mov ecx, 0
.ciclo:	
	mov al, [ebx+ecx]
	cmp al,'a'		
	jl .next_byte		
	cmp al,'z'
	jg .next_byte		
	add al, 'A'-'a'
	mov byte[ebx+ecx], al
.next_byte:
	inc ecx
	cmp byte[ebx+ecx], 0
	jne .ciclo
    pop ecx
    pop eax
	mov esp, ebp
    pop ebp
    ret


   


section .bss
buff resb 16
placeholder resb 16

section .data


section .rodata
carr_ret	db 10, 0
tab_ret     db ' ', 0   
