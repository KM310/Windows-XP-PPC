volatile unsigned long KeTickCount = 0;

void HalTimerTick(void) {
    KeTickCount++;
}
