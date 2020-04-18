#!/bin/bash

if [ "$1" != "" ]; then
	echo "Building 32 bit with nasm..."
	nasm -f elf32 $1.asm
	echo "Assembly code built!"
	echo "Linking..."
	ld -m elf_i386 $1.o -o $1
	echo "Linking completed!"
	echo "Deleting object file..."
	rm $1.o
else
	echo "Usage: build32bit.sh [asm file without .asm]"
fi
