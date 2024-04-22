#!/bin/bash

# El primer argumento es el que es el main
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename.asm> <filename.c>  (first file is the output file)"
    exit 1
fi

# Extracting the directory path and filename without extension
filename1=$(realpath "$1")
dirname1=$(dirname "$filename1")
basename1=${filename1##*/}  # Extract the basename without extension
basename1=${basename1%.*}


# Creating the outputs directory
mkdir -p "${dirname1}/outputs"

# Loop through each argument
objects_string=""

for arg in "$@"
do
    filename=$(realpath "$arg")  
    basename=${filename##*/} 
    basename=${basename%.*}
    
    if [[ "$filename" == *.c ]]; then
        \gcc -c -m32 "$filename" -o "${dirname1}/outputs/$basename.o"
    elif [[ "$filename" == *.asm ]]; then
        nasm -f elf32 "$filename" -o "${dirname1}/outputs/$basename.o"
    else
        echo "Error: Unsupported file format in $filename."
        exit 1
    fi
    
    if [ $? -ne 0 ]; then
        echo "Error: Compilation failed in $filename."
        exit 1
    fi
    
    objects_string+="${dirname1}/outputs/$basename.o "
done

# Linking the object files
\gcc -m32 -o "${dirname1}/outputs/${basename1}" ${objects_string}
if [ $? -ne 0 ]; then
    echo "Error: Linking failed."
    exit 1
fi


#RUN:
/${dirname1}/outputs/${basename1}