.PHONY: all clean

AS := nasm
ASFLAGS := -f bin

all: hello.com

hello.com: hello.asm
	$(AS) -o $@ $< $(ASFLAGS)

