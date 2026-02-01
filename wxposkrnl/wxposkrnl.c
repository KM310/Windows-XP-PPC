#include "hal.h"
#include "mm.h"
#include "ob.h"
#include "ps.h"
#include "ke.h"
#include "uart.h"

void NtKernelEntry(void) {

    HalInitializeProcessor();
    MmInitialize();
    ObInitialize();
    PsInitialize();
    KeInitializeScheduler();

    uart_print("Test\n");

    HalEnableInterrupts();

    for(;;) {
        KeSchedule();
    }
}
