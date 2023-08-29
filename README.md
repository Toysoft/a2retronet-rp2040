# A2retroNET RP2040

_Directly connecting the [Raspberry Pi RP2040](https://www.raspberrypi.com/products/rp2040/) to the Apple II slot bus_

[Demo Program](demo/README.md)

This is a HW implementation of Oliver Schmidt's design.

Version 1.4 is the innitial design with 3x 74LVC245 and 1x 74HC08 to prove the concept. However it is obsolete as it does not switch off the Expansion ROM ($C800-$CFFF), which is always available and could cause data bus conlisions if used with other cards that use this memory.

Version 1.5 switches off the Expansion ROM ($C800-$CFFF) when $CFFF is accessed or when reset is issued, and switches it back on again when the slot memory is accessed (IOSelect).
