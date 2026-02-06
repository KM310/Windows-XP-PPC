# =====================================================
#  ntoskrnl entry point
#  Copyright (c) 2026 K_M310
#  Independent reimplementation – no Microsoft code
# =====================================================

.globl _start
.type _start, @function

_start:
    la      r1, stack_top      # better r1

    bl      NtKernelEntry

1:  b       1b
