.PHONY: all clean

AS := nasm
LD := gcc
ASFLAGS := -f macho
LDFLAGS := -arch i386

all: hello

hello: hello.o
	$(LD) -o $@ $< $(LDFLAGS)

hello.o: hello.asm
	$(AS) -o $@ $^ $(ASFLAGS)

clean:
	rm -f hello *.o

