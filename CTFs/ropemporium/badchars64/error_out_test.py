#!/bin/python

from pwn import *

io = process('./badchars')
io.recvuntil('> ')
io.sendline("A"*1000)
print(io.recvrepeat(2))
