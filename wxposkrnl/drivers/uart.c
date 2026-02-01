#include <stdint.h>

#define UART_BASE 0x800003F8   // Right UART for QEMU 40p

void uart_print(const char* s) {
    volatile uint8_t* uart = (uint8_t*)UART_BASE;

    while (*s) {
        *uart = *s;
        s++;
    }
}
