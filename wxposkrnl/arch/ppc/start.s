# =====================================================
#  ntoskrnl entry point
#  Copyright (c) 2026 K_M310
#  Independent reimplementation – no Microsoft code
# =====================================================

    .globl _start
    .type _start, @function

_start:
    lis     r1, stack_top@ha
    addi    r1, r1, stack_top@l

    bl      NtKernelEntry

1:  b       1b
