; Compile with: nasm -f elf test.nasm
; Link with (use elf_i386 for 64 bit systems): ld -m elf_i386 test.o -o test

section .data
msg db 'Hello, World!', 0xA
len equ $ - msg

section .bss
bytes_written resd 1

section .text
global _start

_start:

	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len

	int 80h

	mov [bytes_written], eax

	mov eax, 1
	xor ebx, ebx
	int 80h
