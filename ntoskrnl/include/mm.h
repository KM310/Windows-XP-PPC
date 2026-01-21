#pragma once
#include "ntdef.h"

void MmInitialize(void);
PVOID MmAllocateKernelMemory(ULONG Size);
