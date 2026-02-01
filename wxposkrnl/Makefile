# ----------------------------------------
# WXPOSKRNL PPC Build Makefile
# Funktioniert unter Ubuntu + gcc-powerpc-linux-gnu
# ----------------------------------------

# Compiler & Flags
CC=powerpc-linux-gnu-gcc
CFLAGS=-ffreestanding -nostdlib -O2 -Wall -Iinclude -Ihal -Ike -Imm -Irtl

# Source Dateien
CSRC=$(shell find . -type f -name "*.c")
ASRC=$(shell find . -type f -name "*.s")

# Objekt-Dateien
COBJ=$(CSRC:.c=.o)
AOBJ=$(ASRC:.s=.o)
OBJ=$(COBJ) $(AOBJ)

# Output
TARGET=wxposkrnl.exe

# Standard Build
all: $(TARGET)

# Linken
$(TARGET): $(OBJ)
    $(CC) $(CFLAGS) -T linker.ld $(OBJ) -o $(TARGET)

# C-Dateien kompilieren
%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

# ASM-Dateien kompilieren
%.o: %.s
    $(CC) -x assembler-with-cpp $(CFLAGS) -c $< -o $@

# Clean
clean:
    rm -f $(OBJ) $(TARGET)
