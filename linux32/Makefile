# vim: set noexpandtab
.PHONY: all clean

AS := nasm
LD := i686-gnu-ld
ASFLAGS := -f elf32
LDFLAGS :=

all: hello

hello: hello.o
	$(LD) -o $@ $< $(LDFLAGS)

hello.o: hello.asm
	$(AS) -o $@ $^ $(ASFLAGS)

clean:
	rm -f hello *.o


