# A2retroNET RP2040

_Directly connecting the [Raspberry Pi RP2040](https://www.raspberrypi.com/products/rp2040/) to the Apple II slot bus_

[Demo Program](demo/README.md)

This is a HW implementation of Oliver Schmidt's design.

Version 1.4 is the innitial design with 3x 74LVC245 and 1x 74HC08 to prove the concept. However it is obsolere as it does not switch off the C800-CFFF memory, whivh is always available and could cause data bus conflicts if used with other cards that uce this memory.

Version 1.5 is the current one - it switches off C800-CFFF every time it is accessed and switches if back on when the slot memory is used (IOSel).
