This is a HW implementation with support for a MicroSD card and **no** ExtROM capability.

The pinout of the "n" versions is as follows:

| GPIO    | Usage     |
|:--------|:----------|
| 0       |  SPI RX   |
| 1       |  SPI CSn  |
| 2       |  SPI SCK  |
| 3       |  SPI TX   |
| 4       |  NMI      |
| 5 - 12  | A0 - A7   |
| 13      | DEVSEL    |
| 14      | R/W       |
| 15 - 22 | D0 - D7   |
| 26      | ENBL      |
| 27      |  IRQ      |
| 28      |  RES      |

There is a suggested driver for a ProDOS block device in the file Firmware files .BIN and .ASM.
The Read/Write buffer is the 16-byte DevSel memory C0NX (N=slot+6). The volume, 512-byte Pro-DOS block selecttion and the 16-byte offsett within the block are done by the following writes (S=slot):

CS00 - volume $00(D1) or $80(D2)

CS01 - low byte block

CS02 - high byte block

CS03 - 16-byte offset within block 

However, there is a current need for development of a firmware for this "n" version for the RPI Pico to drive the IO with the A2 and the MicroSD card.
