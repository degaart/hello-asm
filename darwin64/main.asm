default rel
global _main
extern _exit
extern _puts

section .rodata
text: db "Hello, world!", 0

section .text
_main:
    ; align rsp to 16 bytes
    sub rsp, 8

    ; call puts(text)
    lea rdi, [text]
    call _puts

    ; call exit(0)
    mov rdi, 0
    call _exit

