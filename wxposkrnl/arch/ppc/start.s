# =====================================================
#  ntoskrnl entry point
#  Copyright (c) 2026 K_M310
#  Independent reimplementation – no Microsoft code
# =====================================================

.section .text
.globl _start

_start:
    bl NtKernelEntry

hang:
    b hang
