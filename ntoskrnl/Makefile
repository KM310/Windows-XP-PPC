CC=powerpc-eabi-gcc
AS=powerpc-eabi-as
LD=powerpc-eabi-ld

CFLAGS=-ffreestanding -nostdlib -O2 -Wall

SRC=$(shell find . -name "*.c")
OBJ=$(SRC:.c=.o)

all: ntoskrnl.exe

ntoskrnl.exe: arch/ppc/start.o $(OBJ)
	$(LD) -T linker.ld $^ -o ntoskrnl.exe

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

arch/ppc/start.o: arch/ppc/start.s
	$(AS) $< -o $@

clean:
	rm -f $(OBJ) ntoskrnl.exe
