default rel
global _start

section .rodata
text: db `Hello, world!\n`
.len: equ $ - text

section .text
_start:
    ; args order: rdi, rsi, rdx, rcx, r8, r9
    mov rax, 1                  ; sys_write
    mov rdi, 1                  ; stdout
    lea rsi, [rel text]         ; buf
    mov rdx, text.len           ; count
    syscall

    mov rax, 60                 ; sys_exit
    xor rdi, rdi                ; code
    syscall

    int 3


