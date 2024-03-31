#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm>"
    exit 1
fi


filename=$(realpath "$1")
basename=$(basename "$filename" .asm)  # Extract the basename without extension

mkdir -p outputs   # -p flag ensures it doesn't error if directory already exists
cd outputs || exit 1  # Change to outputs directory or exit if unsuccessful

nasm -f elf64 "$filename" -o "$basename.o"
if [ $? -ne 0 ]; then
    echo "Error: Compilation failed."
    exit 1
fi

ld "$basename.o" -o "$basename"
if [ $? -ne 0 ]; then
    echo "Error: Linking failed."
    exit 1
fi

echo "Compilation successful. Executable created: $basename"

