nasm -f elf32 fiboasm.asm -o ./outputs/fiboasm.o
\gcc -g -c -m32 -fno-builtin fibonacci.c -o ./outputs/fibonacci.o
\gcc -m32 -o ./outputs/out2 ./outputs/fibonacci.o ./outputs/fiboasm.o
./outputs/out2 
