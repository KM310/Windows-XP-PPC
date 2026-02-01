ENTRY(_start)

SECTIONS
{
    /* QEMU 40p lädt Kernel bei 0x01000000 */
    . = 0x01000000;

    .text : {
        *(.text*)
    }

    .rodata : {
        *(.rodata*)
    }

    .data : {
        *(.data*)
    }

    .bss : {
        *(.bss*)
        *(COMMON)
    }

    /* Stack definieren */
    . = ALIGN(16);
    stack_top = . + 0x4000;   /* 16 KB Stack */
}
