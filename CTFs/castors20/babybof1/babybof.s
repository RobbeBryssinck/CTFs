
babybof:     file format elf64-x86-64


Disassembly of section .init:

0000000000400550 <_init>:
  400550:	48 83 ec 08          	sub    $0x8,%rsp
  400554:	48 8b 05 9d 0a 20 00 	mov    0x200a9d(%rip),%rax        # 600ff8 <__gmon_start__>
  40055b:	48 85 c0             	test   %rax,%rax
  40055e:	74 02                	je     400562 <_init+0x12>
  400560:	ff d0                	callq  *%rax
  400562:	48 83 c4 08          	add    $0x8,%rsp
  400566:	c3                   	retq   

Disassembly of section .plt:

0000000000400570 <.plt>:
  400570:	ff 35 92 0a 20 00    	pushq  0x200a92(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400576:	ff 25 94 0a 20 00    	jmpq   *0x200a94(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40057c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400580 <putchar@plt>:
  400580:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601018 <putchar@GLIBC_2.2.5>
  400586:	68 00 00 00 00       	pushq  $0x0
  40058b:	e9 e0 ff ff ff       	jmpq   400570 <.plt>

0000000000400590 <puts@plt>:
  400590:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400596:	68 01 00 00 00       	pushq  $0x1
  40059b:	e9 d0 ff ff ff       	jmpq   400570 <.plt>

00000000004005a0 <fclose@plt>:
  4005a0:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 601028 <fclose@GLIBC_2.2.5>
  4005a6:	68 02 00 00 00       	pushq  $0x2
  4005ab:	e9 c0 ff ff ff       	jmpq   400570 <.plt>

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 7a 0a 20 00    	jmpq   *0x200a7a(%rip)        # 601030 <printf@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

00000000004005c0 <fgetc@plt>:
  4005c0:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 601038 <fgetc@GLIBC_2.2.5>
  4005c6:	68 04 00 00 00       	pushq  $0x4
  4005cb:	e9 a0 ff ff ff       	jmpq   400570 <.plt>

00000000004005d0 <gets@plt>:
  4005d0:	ff 25 6a 0a 20 00    	jmpq   *0x200a6a(%rip)        # 601040 <gets@GLIBC_2.2.5>
  4005d6:	68 05 00 00 00       	pushq  $0x5
  4005db:	e9 90 ff ff ff       	jmpq   400570 <.plt>

00000000004005e0 <fopen@plt>:
  4005e0:	ff 25 62 0a 20 00    	jmpq   *0x200a62(%rip)        # 601048 <fopen@GLIBC_2.2.5>
  4005e6:	68 06 00 00 00       	pushq  $0x6
  4005eb:	e9 80 ff ff ff       	jmpq   400570 <.plt>

00000000004005f0 <exit@plt>:
  4005f0:	ff 25 5a 0a 20 00    	jmpq   *0x200a5a(%rip)        # 601050 <exit@GLIBC_2.2.5>
  4005f6:	68 07 00 00 00       	pushq  $0x7
  4005fb:	e9 70 ff ff ff       	jmpq   400570 <.plt>

Disassembly of section .text:

0000000000400600 <_start>:
  400600:	31 ed                	xor    %ebp,%ebp
  400602:	49 89 d1             	mov    %rdx,%r9
  400605:	5e                   	pop    %rsi
  400606:	48 89 e2             	mov    %rsp,%rdx
  400609:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40060d:	50                   	push   %rax
  40060e:	54                   	push   %rsp
  40060f:	49 c7 c0 00 08 40 00 	mov    $0x400800,%r8
  400616:	48 c7 c1 90 07 40 00 	mov    $0x400790,%rcx
  40061d:	48 c7 c7 4d 07 40 00 	mov    $0x40074d,%rdi
  400624:	ff 15 c6 09 20 00    	callq  *0x2009c6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40062a:	f4                   	hlt    
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400630 <_dl_relocate_static_pie>:
  400630:	f3 c3                	repz retq 
  400632:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400639:	00 00 00 
  40063c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400640 <deregister_tm_clones>:
  400640:	55                   	push   %rbp
  400641:	b8 68 10 60 00       	mov    $0x601068,%eax
  400646:	48 3d 68 10 60 00    	cmp    $0x601068,%rax
  40064c:	48 89 e5             	mov    %rsp,%rbp
  40064f:	74 17                	je     400668 <deregister_tm_clones+0x28>
  400651:	b8 00 00 00 00       	mov    $0x0,%eax
  400656:	48 85 c0             	test   %rax,%rax
  400659:	74 0d                	je     400668 <deregister_tm_clones+0x28>
  40065b:	5d                   	pop    %rbp
  40065c:	bf 68 10 60 00       	mov    $0x601068,%edi
  400661:	ff e0                	jmpq   *%rax
  400663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400668:	5d                   	pop    %rbp
  400669:	c3                   	retq   
  40066a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400670 <register_tm_clones>:
  400670:	be 68 10 60 00       	mov    $0x601068,%esi
  400675:	55                   	push   %rbp
  400676:	48 81 ee 68 10 60 00 	sub    $0x601068,%rsi
  40067d:	48 89 e5             	mov    %rsp,%rbp
  400680:	48 c1 fe 03          	sar    $0x3,%rsi
  400684:	48 89 f0             	mov    %rsi,%rax
  400687:	48 c1 e8 3f          	shr    $0x3f,%rax
  40068b:	48 01 c6             	add    %rax,%rsi
  40068e:	48 d1 fe             	sar    %rsi
  400691:	74 15                	je     4006a8 <register_tm_clones+0x38>
  400693:	b8 00 00 00 00       	mov    $0x0,%eax
  400698:	48 85 c0             	test   %rax,%rax
  40069b:	74 0b                	je     4006a8 <register_tm_clones+0x38>
  40069d:	5d                   	pop    %rbp
  40069e:	bf 68 10 60 00       	mov    $0x601068,%edi
  4006a3:	ff e0                	jmpq   *%rax
  4006a5:	0f 1f 00             	nopl   (%rax)
  4006a8:	5d                   	pop    %rbp
  4006a9:	c3                   	retq   
  4006aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006b0 <__do_global_dtors_aux>:
  4006b0:	80 3d b1 09 20 00 00 	cmpb   $0x0,0x2009b1(%rip)        # 601068 <__TMC_END__>
  4006b7:	75 17                	jne    4006d0 <__do_global_dtors_aux+0x20>
  4006b9:	55                   	push   %rbp
  4006ba:	48 89 e5             	mov    %rsp,%rbp
  4006bd:	e8 7e ff ff ff       	callq  400640 <deregister_tm_clones>
  4006c2:	c6 05 9f 09 20 00 01 	movb   $0x1,0x20099f(%rip)        # 601068 <__TMC_END__>
  4006c9:	5d                   	pop    %rbp
  4006ca:	c3                   	retq   
  4006cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006d0:	f3 c3                	repz retq 
  4006d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 

00000000004006e0 <frame_dummy>:
  4006e0:	55                   	push   %rbp
  4006e1:	48 89 e5             	mov    %rsp,%rbp
  4006e4:	5d                   	pop    %rbp
  4006e5:	eb 89                	jmp    400670 <register_tm_clones>

00000000004006e7 <get_flag>:
  4006e7:	55                   	push   %rbp
  4006e8:	48 89 e5             	mov    %rsp,%rbp
  4006eb:	48 83 ec 10          	sub    $0x10,%rsp
  4006ef:	48 8d 35 22 01 00 00 	lea    0x122(%rip),%rsi        # 400818 <_IO_stdin_used+0x8>
  4006f6:	48 8d 3d 1d 01 00 00 	lea    0x11d(%rip),%rdi        # 40081a <_IO_stdin_used+0xa>
  4006fd:	e8 de fe ff ff       	callq  4005e0 <fopen@plt>
  400702:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400706:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40070b:	75 15                	jne    400722 <get_flag+0x3b>
  40070d:	bf 01 00 00 00       	mov    $0x1,%edi
  400712:	e8 d9 fe ff ff       	callq  4005f0 <exit@plt>
  400717:	0f be 45 f7          	movsbl -0x9(%rbp),%eax
  40071b:	89 c7                	mov    %eax,%edi
  40071d:	e8 5e fe ff ff       	callq  400580 <putchar@plt>
  400722:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400726:	48 89 c7             	mov    %rax,%rdi
  400729:	e8 92 fe ff ff       	callq  4005c0 <fgetc@plt>
  40072e:	88 45 f7             	mov    %al,-0x9(%rbp)
  400731:	80 7d f7 ff          	cmpb   $0xff,-0x9(%rbp)
  400735:	75 e0                	jne    400717 <get_flag+0x30>
  400737:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40073b:	48 89 c7             	mov    %rax,%rdi
  40073e:	e8 5d fe ff ff       	callq  4005a0 <fclose@plt>
  400743:	bf 00 00 00 00       	mov    $0x0,%edi
  400748:	e8 a3 fe ff ff       	callq  4005f0 <exit@plt>

000000000040074d <main>:
  40074d:	55                   	push   %rbp
  40074e:	48 89 e5             	mov    %rsp,%rbp
  400751:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  400758:	48 8d 3d c9 00 00 00 	lea    0xc9(%rip),%rdi        # 400828 <_IO_stdin_used+0x18>
  40075f:	e8 2c fe ff ff       	callq  400590 <puts@plt>
  400764:	48 8d 3d e1 00 00 00 	lea    0xe1(%rip),%rdi        # 40084c <_IO_stdin_used+0x3c>
  40076b:	b8 00 00 00 00       	mov    $0x0,%eax
  400770:	e8 3b fe ff ff       	callq  4005b0 <printf@plt>
  400775:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  40077c:	48 89 c7             	mov    %rax,%rdi
  40077f:	b8 00 00 00 00       	mov    $0x0,%eax
  400784:	e8 47 fe ff ff       	callq  4005d0 <gets@plt>
  400789:	90                   	nop
  40078a:	c9                   	leaveq 
  40078b:	c3                   	retq   
  40078c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400790 <__libc_csu_init>:
  400790:	41 57                	push   %r15
  400792:	41 56                	push   %r14
  400794:	49 89 d7             	mov    %rdx,%r15
  400797:	41 55                	push   %r13
  400799:	41 54                	push   %r12
  40079b:	4c 8d 25 6e 06 20 00 	lea    0x20066e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4007a2:	55                   	push   %rbp
  4007a3:	48 8d 2d 6e 06 20 00 	lea    0x20066e(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  4007aa:	53                   	push   %rbx
  4007ab:	41 89 fd             	mov    %edi,%r13d
  4007ae:	49 89 f6             	mov    %rsi,%r14
  4007b1:	4c 29 e5             	sub    %r12,%rbp
  4007b4:	48 83 ec 08          	sub    $0x8,%rsp
  4007b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4007bc:	e8 8f fd ff ff       	callq  400550 <_init>
  4007c1:	48 85 ed             	test   %rbp,%rbp
  4007c4:	74 20                	je     4007e6 <__libc_csu_init+0x56>
  4007c6:	31 db                	xor    %ebx,%ebx
  4007c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007cf:	00 
  4007d0:	4c 89 fa             	mov    %r15,%rdx
  4007d3:	4c 89 f6             	mov    %r14,%rsi
  4007d6:	44 89 ef             	mov    %r13d,%edi
  4007d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4007dd:	48 83 c3 01          	add    $0x1,%rbx
  4007e1:	48 39 dd             	cmp    %rbx,%rbp
  4007e4:	75 ea                	jne    4007d0 <__libc_csu_init+0x40>
  4007e6:	48 83 c4 08          	add    $0x8,%rsp
  4007ea:	5b                   	pop    %rbx
  4007eb:	5d                   	pop    %rbp
  4007ec:	41 5c                	pop    %r12
  4007ee:	41 5d                	pop    %r13
  4007f0:	41 5e                	pop    %r14
  4007f2:	41 5f                	pop    %r15
  4007f4:	c3                   	retq   
  4007f5:	90                   	nop
  4007f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007fd:	00 00 00 

0000000000400800 <__libc_csu_fini>:
  400800:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400804 <_fini>:
  400804:	48 83 ec 08          	sub    $0x8,%rsp
  400808:	48 83 c4 08          	add    $0x8,%rsp
  40080c:	c3                   	retq   
