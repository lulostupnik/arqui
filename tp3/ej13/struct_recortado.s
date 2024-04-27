;Llamada de main a my_func1:
;t_struct my_func1(t_struct myStruct){
	lea	eax, -64[esi]
	push	DWORD PTR -88[esi]
	push	DWORD PTR -92[esi]
	push	DWORD PTR -96[esi]
	push	eax
	call	my_func1
	add	esp, 12

;void my_func2(t_struct * myStruct)
;Llamada de main a my_func2:
	push	eax
	call	my_func2
	add	esp, 16