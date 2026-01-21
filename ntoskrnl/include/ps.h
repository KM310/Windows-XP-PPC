#pragma once
#include "ntdef.h"

typedef struct _ETHREAD ETHREAD;

typedef struct _EPROCESS {
    ULONG UniqueProcessId;
    ULONG ActiveThreads;
    ETHREAD* ThreadList;
    char ImageFileName[16];
} EPROCESS;

void PsInitialize(void);
