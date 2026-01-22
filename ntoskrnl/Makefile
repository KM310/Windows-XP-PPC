# ----------------------------------------
# NTOSKRNL PPC Build Makefile
# Funktioniert unter Ubuntu + gcc-powerpc-linux-gnu
# ----------------------------------------

# Compiler & Flags
CC=powerpc-linux-gnu-gcc
CFLAGS=-ffreestanding -nostdlib -O2 -Wall -Iinclude

# Source Dateien
CSRC=$(shell find . -type f -name "*.c")
ASRC=$(shell find . -type f -name "*.s")

# Objekt-Dateien
COBJ=$(CSRC:.c=.o)
AOBJ=$(ASRC:.s=.o)
OBJ=$(COBJ) $(AOBJ)

# Output
TARGET=ntoskrnl.exe

# Standard Build
all: $(TARGET)

# Linken
$(TARGET): $(OBJ)
<TAB>$(CC) $(CFLAGS) -T linker.ld $(OBJ) -o $(TARGET)

# C-Dateien kompilieren
%.o: %.c
<TAB>$(CC) $(CFLAGS) -c $< -o $@

# ASM-Dateien kompilieren
%.o: %.s
<TAB>$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
<TAB>rm -f $(OBJ) $(TARGET)
