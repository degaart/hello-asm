.PHONY: all clean
.SUFFIXES:

AS := nasm
LD := ld
ASFLAGS := -f macho64
LDFLAGS := -L$(shell xcode-select -p)/SDKs/MacOSX.sdk/usr/lib -lSystem -macosx_version_min 10.9 -segalign 1000

all: hello

hello: main.o
	$(LD) -o $@ $< $(LDFLAGS)

main.o: main.asm
	$(AS) -o $@ $^ $(ASFLAGS)

clean:
	rm -f hello *.o


