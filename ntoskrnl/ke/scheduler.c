//Copyright Julius (KM310)
//written by Julius
#include "ke.h"
void KeSchedule(void) {
    ETHREAD* next = KeSelectNextThread();
    if (!next)
        return; // no Thread ready

    ETHREAD* old = CurrentThread;
    CurrentThread = next;

    // reuse old Thread
    if (old)
        KeReadyThread(old);

    // Context-Switch
    KeContextSwitch(old, next);
}
