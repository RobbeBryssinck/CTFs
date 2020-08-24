#!/bin/python

# b i c / <space> f n s
badchars = ["\x62", "\x69", "\x63", "\x2f", "\x20", "\x66", "\x6e", "\x73"]
binsh = "/bin/sh\x00"

i = 1
while i < 256:
    valid_attempt = True
    xored_buffer = ""

    for character in binsh:
        xored_char = chr(ord(character) ^ i)
        xored_buffer += xored_char

        if xored_char in badchars:
            valid_attempt = False
            break

    if valid_attempt:
        print(xored_buffer.encode('hex'))
        print('^' + str(i))

    i += 1

print("Done")
