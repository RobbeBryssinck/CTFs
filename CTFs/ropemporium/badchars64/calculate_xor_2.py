#!/bin/python

# b i c / <space> f n s
badchars = ["\x62", "\x69", "\x63", "\x2f", "\x20", "\x66", "\x6e", "\x73"]
binsh = "/bin/sh\x00"
xornum = 2
xored_buffer = ""

for character in binsh:
    xored_char = chr(ord(character) ^ xornum)
    xored_buffer += xored_char

print(xored_buffer)
