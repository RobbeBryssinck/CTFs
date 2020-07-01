#!/bin/python3

alphabet = "abcdefghijklmnopqrstuvwxyz"
flagnumbers = [20, 8, 5, 14, 21, 13, 2, 5, 18, 19, 13, 1, 19, 15, 14]
flag = ""

for flagnumber in flagnumbers:
    flagposition = flagnumber-1
    flag += alphabet[flagposition]

flag = "picoCTF{" + flag + "}"
flag = flag.upper()

print(flag)
