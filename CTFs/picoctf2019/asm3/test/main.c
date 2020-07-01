#include <stdio.h>

int asm3(int, int, int);

int main(int argc, char* argv[])
{
    printf("0x%x\n", asm3(0xcdc485c1,0xd6bd5e88,0xe4c1548d));
    return 0;
}
