# =====================================================
#  ntoskrnl entry point
#  Copyright (c) 2026 K_M310
#  Independent reimplementation – no Microsoft code
# =====================================================

    .globl _start
_start:
    lis r1, stack_top@h
    ori r1, r1, stack_top@l

    bl NtKernelEntry

hang:
    b hang
