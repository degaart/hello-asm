bits 16
org 0x100

; dos function 0x9: print text
; text to print in ds:dx
mov dx, text
mov ah, 0x9
int 0x21

; dos function 0x4c: terminate program
mov ah, 0x4c
xor al, al
int 0x21

text: db `Hello, world!\r\n$`

