ENTRY(_start)

SECTIONS
{
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

    /* IMPORTEND 2 */
    .stack :
    {
        . = ALIGN(16);
        stack_top = . + 0x4000;
    }
}
