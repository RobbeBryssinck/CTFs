section .text

global _start

_start:
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx

push 0x0068732f
push 0x6e69622f

mov ebx, esp

mov al, 0xb
int 0x80
