CC=powerpc-eabi-gcc
AS=powerpc-eabi-as
LD=powerpc-eabi-ld

CFLAGS=-ffreestanding -nostdlib -O2 -Wall -Iinclude
ASFLAGS=
LDFLAGS=-T linker.ld

SRC=$(shell find . -type f -name "*.c")
OBJ=$(SRC:.c=.o)

all: ntoskrnl.exe

ntoskrnl.exe: arch/ppc/start.o $(OBJ)
	$(LD) $(LDFLAGS) $^ -o ntoskrnl.exe

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

arch/ppc/start.o: arch/ppc/start.s
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(OBJ) arch/ppc/start.o ntoskrnl.exe
