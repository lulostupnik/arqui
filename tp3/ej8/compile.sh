nasm -f elf32 start.asm -o ./outputs/start.o
\gcc -g -c -m32 -nostartfiles -fno-builtin main.c -o ./outputs/main.o
\gcc -m32 -nostartfiles -o ./outputs/out ./outputs/main.o ./outputs/start.o
./outputs/out 