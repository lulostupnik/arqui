#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm>"
    exit 1
fi

filename=$(realpath "$1")  # Get the absolute path of the provided file
basename=$(basename "$filename" .asm)  # Extract the basename without extension

mkdir -p outputs   # -p flag ensures it doesn't error if directory already exists
cd outputs || exit 1  # Change to outputs directory or exit if unsuccessful

nasm -f elf "$filename" -o "$basename.o"
if [ $? -ne 0 ]; then
    echo "Error: Compilation failed."
    exit 1
fi

ld -m elf_i386 "$basename.o" -o "$basename"
if [ $? -ne 0 ]; then
    echo "Error: Linking failed."
    exit 1
fi


./$basename
