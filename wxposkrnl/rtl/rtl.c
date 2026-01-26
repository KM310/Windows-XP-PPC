#include "rtl.h"

int RtlStrcmp(const char* a, const char* b) {
    while(*a && *b) {
        if(*a != *b) return -1;
        a++; b++;
    }
    return (*a == *b) ? 0 : -1;
}
