#!/bin/bash

#El primer argumento es el que es el main

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm>"
    exit 1
fi
lib="/home/lulo/arqui/libasm.asm"
lib_base="libasm"
filename1=$(realpath "$1")
basename1=$(basename "$filename1" .asm)  # Extract the basename without extension

mkdir -p outputs   # -p flag ensures it doesn't error if directory already exists

# Loop through each argument
objects_string=""

for arg in "$@"
do
    filename=$(realpath "$arg")  
    basename=$(basename "$arg" .asm)  
    # echo $filename
    # echo $basename
    nasm -f elf "$filename" -o "$basename.o"
    if [ $? -ne 0 ]; then
        echo "Error: Compilation failed in $filename."
        exit 1
    fi
    mv "$basename.o" outputs
    objects_string+="$basename.o "
done
    
    nasm -f elf "$lib" -o "$lib_base.o"
    if [ $? -ne 0 ]; then
        echo "Error: Compilation failed in library."
        exit 1
    fi
    mv "$lib_base.o" outputs
    objects_string+="$lib_base.o "


cd outputs
ld -m elf_i386 $objects_string -o $basename1
./$basename1
