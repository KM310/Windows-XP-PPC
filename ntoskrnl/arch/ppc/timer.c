//Copyright (c) KM310
//written by JUlius (KM310)
volatile unsigned long KeTickCount = 0;

void HalTimerTick(void) {
    KeTickCount++;
}
