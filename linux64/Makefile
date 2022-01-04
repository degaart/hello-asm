# vim: set noexpandtab
.PHONY: all clean

AS := nasm
LD := ld
ASFLAGS := -f elf64
LDFLAGS := -s

all: hello

hello: hello.o
	$(LD) -o $@ $< $(LDFLAGS)

hello.o: hello.asm
	$(AS) -o $@ $^ $(ASFLAGS)

clean:
	rm -f hello *.o


