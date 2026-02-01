#include <stdint.h>

#define UART_BASE 0x10000000

void uart_print(const char* s) {
    volatile uint8_t* uart = (uint8_t*)UART_BASE;

    while (*s) {
        *uart = *s;
        s++;
    }
}
