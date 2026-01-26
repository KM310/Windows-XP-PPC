#include "hal.h"
#include "mm.h"
#include "ob.h"
#include "ps.h"
#include "ke.h"

void NtKernelEntry(void) {
    HalInitializeProcessor();
    MmInitialize();
    ObInitialize();
    PsInitialize();
    KeInitializeScheduler();

    HalEnableInterrupts();

    for(;;) {
        KeSchedule();
    }
}
