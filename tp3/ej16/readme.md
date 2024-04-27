1) extern int checkLong(char * str, unsigned int cant);. Primero se va a pushear al stack el parametro cant (4 bytes), y luego el parametro str (4 bytes).  
4) Las consideraciones a tener son que el archivo de ASM respete las convenciones de C. En el caso contrario, se podria llamar una funcion desde C a assembler, y que en assembler se modifiquen datos importantes para el correcto funcionamiento del resto de la ejecucion en C. 

## Preguntas campus:



Perdon, haciendo el 16 no entendi porque esta bien char msg[] y mal char * msg. A que se debe?

Se debe a los datos que tenes en memoria.

Un arreglo es una sucesion de N datos de un tamano X.

El puntero es solo 1 dato con el tamano necesario para contener 1 dir de memoria.


 **Ejemplo practico para comparar uno vs el otro**

Vos tenias en tu archivo .asm pero yo te voy a agregar una variable mas

section .data
msg db "Hola Mundo", 0
pointer2msg dd msg


pointer2msg esta inicializado con la direccion de memoria de msg.. o sea, es un puntero a msg

y msg es un arreglo de chars, 10 chars exactamente, sin incluir el cero.


por lo tanto, cuando lo declare en C, voy a decir que msg es un arreglo de chars, y que pointer2msg es un puntero..

en c declaro:


extern char msg[];

extern char *pointer2msg;


el simbolo msg es la direccion de memoria de la H

por eso puedo pasarselo a una funcion que reciba char* al igual que puedo asignarlo a un puntero a char..

CheckLong(msg) esta oka

CheckLong(pointer2msg) esta oka


lo que no puedo hacer es lo siguiente:

extern char *msg;

CheckLong(msg) esta mal , porque que necesita agarrar de la direccion msg para levantar un puntero?

4 bytes.. entonces va a buscar los 1eros 4 que encuentra: Hola , lo cual no es una dir de memoria. Usa eso, y da segmentarion fault