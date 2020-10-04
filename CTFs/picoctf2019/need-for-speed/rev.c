#include <stdio.h>

void decrypt_flag(int);

void main()
{
    decrypt_flag(0xE13392F9);
}

void decrypt_flag(int key)
{
    char flag[57] = "\xa9\xdb\xba\xdd\xb9\xc6\xbd\xe9\xbc\xfd\x93\xf6\xdd\xf8\x92\xf0\xde\xf9\x9a\xf7\x8f\xfa\x6e\xf4\x21\xf1\x74\xe0\x22\xb0\x33\xf7\x32\xa2\x60\xa3\x3c\xf6\x25\xe0\x76\xf6\x62\xf7\x6e\xfd\x6f\xb3\x68\xff\x66\xfd\x6d\xb2\x76\x00";
    int intarray1[4];
    int i;

    intarray1[0] = key;

    for (i = 0; i < 56; i++)
    {
        flag[i] = flag[i] ^
                  *(char *)((long)intarray1 +
                            (long)(int)((i - ((int)i >> 0x1f) & 1) +
                                        ((int)i >> 0x1f)));
        if (i % 3 == 2)
        {
            intarray1[0] = intarray1[0] + 1;
        }
    }

    printf(flag);

    return;
}
