// Copyright Julius (KM310)
// written by Julius
#include "ke.h"
#include "hal.h"

// Simple IRQL model
static KIRQL CurrentIrql = PASSIVE_LEVEL;

KIRQL KeGetCurrentIrql(void) {
    return CurrentIrql;
}

KIRQL KeRaiseIrql(KIRQL NewIrql) {
    KIRQL old = CurrentIrql;
    if (NewIrql > CurrentIrql) {
        CurrentIrql = NewIrql;
    }
    return old;
}

void KeLowerIrql(KIRQL NewIrql) {
    CurrentIrql = NewIrql;
}

// Central dispatcher (called from timer or explicit)
void KeDispatch(void) {
    // TODO: APC delivery, wait completion, etc.
    KeSchedule();
}

// Voluntary yield
void KeYieldProcessor(void) {
    KIRQL oldIrql = KeRaiseIrql(DISPATCH_LEVEL);
    HalDisableInterrupts();

    KeSchedule();

    HalEnableInterrupts();
    KeLowerIrql(oldIrql);
}

// Timer tick entry (called from HAL timer interrupt)
void KeTimerTick(void) {
    // TODO: quantum handling, preemption, etc.
    KeDispatch();
}

// Simple wait stub (placeholder for future wait system)
NTSTATUS KeWaitForSingleObject(void* Object, KIRQL WaitIrql) {
    // TODO: insert thread into wait queue, change state, call KeDispatch
    (void)Object;
    (void)WaitIrql;
    return STATUS_NOT_IMPLEMENTED;
}
