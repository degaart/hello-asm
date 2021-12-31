global _main
extern _puts
extern _exit

section .rodata
text: db "Hello, world!", 0

section .text
_main:
	; esp must be aligned to 16-bytes on C function call
	; save it to ebx before alignment
	mov ebx, esp
	and esp, 0xfffffff0

	; call puts(text)
	sub esp, 16 - 4
	push text
	call _puts
	add esp, 16

	; call exit(0)
	sub esp, 16 - 4
	push dword 0
	call _exit



