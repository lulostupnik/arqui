#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm>"
    exit 1
fi

filename1=$(realpath "$1")  # Get the absolute path of the provided file
basename1=$(basename "$filename" .asm)  # Extract the basename without extension

mkdir -p outputs   # -p flag ensures it doesn't error if directory already exists

# Loop through each argument
for arg in "$@"
do
    filename=$(realpath "$arg")  
    basename=$(basename "$arg" .asm)  
    # echo $filename
    # echo $basename
    nasm -f elf "$filename" -o "$basename.o"
    mv "$basename.o" outputs
done
