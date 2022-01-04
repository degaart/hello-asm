global _start

section .rodata
text: db `Hello, world!\r\n`
    .length:

section .text
_start:
    ; eax: syscall number
    ; ebx: arg0
    ; ecx: arg1
    ; edx: arg2
    ; esi: arg3
    ; edi: arg4
    ; ebp: arg5
    mov eax, 4                  ; sys_write
    mov ebx, 1                  ; stdout
    mov ecx, text               ; str
    mov edx, text.length - text ; length
    int 0x80

    mov eax, 1                  ; sys_exit
    int 0x80

    int 3


