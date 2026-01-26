//Copyright (c) Julius (KM310)
//written by Julius
#include "hal.h"

void HalInitializeProcessor(void) {
    /* CPU + Interrupt Controller */
}

void HalEnableInterrupts(void) {
    asm volatile("mfmsr 3; ori 3,3,0x8000; mtmsr 3");
}

void HalDisableInterrupts(void) {
    asm volatile("mfmsr 3; rlwinm 3,3,0,17,15; mtmsr 3");
}

void HalHaltSystem(void) {
    for(;;) asm volatile("wait");
}
