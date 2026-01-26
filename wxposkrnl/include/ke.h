#pragma once
#include "ntdef.h"

typedef struct _ETHREAD {
    ULONG ThreadId;
    ULONG Priority;
    PVOID KernelStack;
    struct _ETHREAD* Next;
} ETHREAD;

void KeInitializeScheduler(void);
void KeSchedule(void);
