#!/bin/bash

#El primer argumento es el que es el main

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm>"
    exit 1
fi

filename1=$(realpath "$1")
basename1=$(basename "$filename1" .asm)  # Extract the basename without extension
#echo "${filename1%/*}"/outputs

#mkdir -p outputs   # -p flag ensures it doesn't error if directory already exists
mkdir -p "${filename1%/*}"/outputs


# Loop through each argument
objects_string=""

for arg in "$@"
do
    filename=$(realpath "$arg")  
    basename=$(basename "$arg" .asm)  
    # echo $filename
    # echo $basename
    nasm -f elf32 "$filename"
    if [ $? -ne 0 ]; then
        echo "Error: Compilation failed in $filename."
        exit 1
    fi
    mv "${filename%/*}/$basename.o" "${filename1%/*}/outputs"
    objects_string+="$basename.o "
done