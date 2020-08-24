#!/bin/python

from pwn import *

payload = "AAAABBBBCCCCDDDDEEEEFFFFGGGGHHHHIIIIJJJJKKKKKKKKMMMMNNNNOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ"

p = process('./badchars')
p.recvuntil('> ')
p.sendline(payload)
p.recvrepeat(2)
