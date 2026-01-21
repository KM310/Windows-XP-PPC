# =====================================================
#  context_switch.s – PPC context switch (own implementation)
#  Copyright (c) 2026 Julius
#  Independent reimplementation – no Microsoft code
# =====================================================

.global KeContextSwitch

KeContextSwitch:
    #
    # r3 = pointer to old context
    # r4 = pointer to new context
    #

    # -----------------------------------------
    # Save GPRs r0–r31 into old context
    # -----------------------------------------
    stw     r0,   0(r3)
    stw     r1,   4(r3)
    stw     r2,   8(r3)
    stw     r3,  12(r3)
    stw     r4,  16(r3)
    stw     r5,  20(r3)
    stw     r6,  24(r3)
    stw     r7,  28(r3)
    stw     r8,  32(r3)
    stw     r9,  36(r3)
    stw     r10, 40(r3)
    stw     r11, 44(r3)
    stw     r12, 48(r3)
    stw     r13, 52(r3)
    stw     r14, 56(r3)
    stw     r15, 60(r3)
    stw     r16, 64(r3)
    stw     r17, 68(r3)
    stw     r18, 72(r3)
    stw     r19, 76(r3)
    stw     r20, 80(r3)
    stw     r21, 84(r3)
    stw     r22, 88(r3)
    stw     r23, 92(r3)
    stw     r24, 96(r3)
    stw     r25, 100(r3)
    stw     r26, 104(r3)
    stw     r27, 108(r3)
    stw     r28, 112(r3)
    stw     r29, 116(r3)
    stw     r30, 120(r3)
    stw     r31, 124(r3)

    # -----------------------------------------
    # Save LR, CTR, CR
    # -----------------------------------------
    mflr    r0
    stw     r0, 128(r3)

    mfctr   r0
    stw     r0, 132(r3)

    mfcr    r0
    stw     r0, 136(r3)

    # -----------------------------------------
    # Save SRR0/SRR1 (return-from-exception state)
    # -----------------------------------------
    mfsrr0  r0
    stw     r0, 140(r3)

    mfsrr1  r0
    stw     r0, 144(r3)

    # -----------------------------------------
    # Load new context
    # -----------------------------------------
    lwz     r0,   0(r4)
    lwz     r1,   4(r4)
    lwz     r2,   8(r4)
    lwz     r3,  12(r4)
    lwz     r4,  16(r4)
    lwz     r5,  20(r4)
    lwz     r6,  24(r4)
    lwz     r7,  28(r4)
    lwz     r8,  32(r4)
    lwz     r9,  36(r4)
    lwz     r10, 40(r4)
    lwz     r11, 44(r4)
    lwz     r12, 48(r4)
    lwz     r13, 52(r4)
    lwz     r14, 56(r4)
    lwz     r15, 60(r4)
    lwz     r16, 64(r4)
    lwz     r17, 68(r4)
    lwz     r18, 72(r4)
    lwz     r19, 76(r4)
    lwz     r20, 80(r4)
    lwz     r21, 84(r4)
    lwz     r22, 88(r4)
    lwz     r23, 92(r4)
    lwz     r24, 96(r4)
    lwz     r25, 100(r4)
    lwz     r26, 104(r4)
    lwz     r27, 108(r4)
    lwz     r28, 112(r4)
    lwz     r29, 116(r4)
    lwz     r30, 120(r4)
    lwz     r31, 124(r4)

    # -----------------------------------------
    # Restore LR, CTR, CR
    # -----------------------------------------
    lwz     r0, 128(r4)
    mtlr    r0

    lwz     r0, 132(r4)
    mtctr   r0

    lwz     r0, 136(r4)
    mtcr    r0

    # -----------------------------------------
    # Restore SRR0/SRR1
    # -----------------------------------------
    lwz     r0, 140(r4)
    mtsrr0  r0

    lwz     r0, 144(r4)
    mtsrr1  r0

    # -----------------------------------------
    # Return into new context
    # -----------------------------------------
    rfi
