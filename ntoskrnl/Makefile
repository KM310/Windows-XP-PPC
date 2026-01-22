CC=powerpc-linux-gnu-gcc
CFLAGS=-ffreestanding -nostdlib -O2 -Wall -Iinclude

# Source Dateien (C + ASM)
SRC=$(shell find . -type f -name ".c") $(shell find . -type f -name ".s")
OBJ=$(SRC:.c=.o)
OBJ=$(OBJ:.s=.o)

# Output
TARGET=ntoskrnl.exe

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
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
	rm -f $(OBJ) $(TARGET)
