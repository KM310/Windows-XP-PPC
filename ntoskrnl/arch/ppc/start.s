# =====================================================
#  ntoskrnl entry point
#  Copyright (c) 2026 K_M310
#  Independent reimplementation – no Microsoft code
# =====================================================

.section .text
.global _start

_start:
    lis r1, kernel_stack_top@h
    ori r1, r1, kernel_stack_top@l
    bl NtKernelEntry
1:  b 1b

.section .bss
.space 8192
kernel_stack_top:
