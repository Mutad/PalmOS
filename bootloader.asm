org 0x7c00      ;offset from start to bootloader
bits 16         ;16 bit mode
Start:
    cli         ;clear and ingore interupts
    hlt         ;shit i dont understand is used for

times 510 - ($-$$) db 0         ;fill all bytes exept two last ones with 0
                                ;& - is this line
                                ;&& - is first line
                                ;this is the number of space used from start of program to this line

dw 0xAA55       ;bios knows that this is bootloader from two last bytes in sector AA 55
