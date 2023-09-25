                            * = $0000
0000   A9 20                LDA #$20
0002   A0 00                LDY #$00
0004   24 03                BIT $03
0006   24 3C                BIT $3C
0008   84 44                STY $44
000A   84 46                STY $46
000C   84 47                STY $47
000E   20 58 FF             JSR $FF58
0011   BA                   TSX
0012   BD 00 01             LDA $0100,X
0015   85 45                STA $45
0017   0A                   ASL A
0018   0A                   ASL A
0019   0A                   ASL A
001A   0A                   ASL A
001B   85 43                STA $43
001D   A0 F3                LDY #$F3
001F   B1 44      L001F     LDA ($44),Y
0021   99 FC 06             STA $06FC,Y
0024   C8                   INY
0025   D0 F8                BNE L001F
0027   A9 08                LDA #$08
0029   48                   PHA
002A   85 45                STA $45
002C   98                   TYA
002D   48                   PHA
002E   C8                   INY
002F   84 42                STY $42
0031   08                   PHP
0032   78                   SEI
0033   A2 0A                LDX #$0A
0035   A0 00                LDY #$00
0037   B5 02      L0037     LDA $02,X
0039   48                   PHA
003A   94 02                STY $02,X
003C   CA                   DEX
003D   D0 F8                BNE L0037
003F   AD F7 07             LDA $07F7
0042   48                   PHA
0043   A9 C0                LDA #$C0
0045   85 07                STA $07
0047   A5 43                LDA $43
0049   4A                   LSR A
004A   4A                   LSR A
004B   4A                   LSR A
004C   4A                   LSR A
004D   29 07                AND #$07
004F   09 C0                ORA #$C0
0051   8D F8 07             STA $07F8
0054   85 04                STA $04
0056   85 0C                STA $0C
0058   A5 43                LDA $43
005A   91 03                STA ($03),Y
005C   C8                   INY
005D   A5 46                LDA $46
005F   91 03                STA ($03),Y
0061   C8                   INY
0062   A5 47                LDA $47
0064   91 03                STA ($03),Y
0066   84 0A                STY $0A
0068   A0 00                LDY #$00
006A   A5 42                LDA $42
006C   C9 01                CMP #$01
006E   F0 06                BEQ L0076
0070   C9 02                CMP #$02
0072   F0 0A                BEQ L007E
0074   D0 3A                BNE L00B0
0076   A9 CA      L0076     LDA #$CA
0078   85 0B                STA L000B
007A   A9 12                LDA #$12
007C   D0 06                BNE L0084
007E   A9 D5      L007E     LDA #$D5
0080   85 0B                STA L000B
0082   A9 17                LDA #$17
0084   8D F7 07   L0084     STA $07F7
0087   84 09      L0087     STY $09
0089   A0 03                LDY #$03
008B   A5 05                LDA $05
008D   91 03                STA ($03),Y
008F   A4 09                LDY $09
0091   A5 43                LDA $43
0093   09 80                ORA #$80
0095   85 06                STA $06
0097   6C 0B 00   L0097     JMP (L000B)
009A   A5 06                LDA $06
009C   29 0F                AND #$0F
009E   D0 F7                BNE L0097
00A0   E6 05                INC $05
00A2   C0 00                CPY #$00
00A4   D0 E1                BNE L0087
00A6   E6 45                INC $45
00A8   C6 0A                DEC $0A
00AA   D0 DB                BNE L0087
00AC   C6 45                DEC $45
00AE   C6 45                DEC $45
00B0   68         L00B0     PLA
00B1   8D F7 07             STA $07F7
00B4   A4 08                LDY $08
00B6   68         L00B6     PLA
00B7   95 03                STA $03,X
00B9   E8                   INX
00BA   E0 0A                CPX #$0A
00BC   D0 F8                BNE L00B6
00BE   28                   PLP
00BF   98                   TYA
00C0   F0 02      L00C0     BEQ L00C4
00C2   38                   SEC
00C3   60                   RTS
00C4   A2 FF      L00C4     LDX #$FF
00C6   A0 FF                LDY #$FF
00C8   18                   CLC
00C9   60                   RTS
00CA   84 09                STY $09
00CC   A0 00                LDY #$00
00CE   B1 06                LDA ($06),Y
00D0   A4 09                LDY $09
00D2   91 44                STA ($44),Y
00D4   18                   CLC
00D5   90 12                BCC L00E9
00D7   B1 44                LDA ($44),Y
00D9   84 09                STY $09
00DB   A0 00                LDY #$00
00DD   91 06                STA ($06),Y
00DF   D1 06                CMP ($06),Y
00E1   F0 04                BEQ L00E7
00E3   A9 27                LDA #$27
00E5   85 08                STA $08
00E7   A4 09      L00E7     LDY $09
00E9   C8         L00E9     INY
00EA   E6 06                INC $06
00EC   A5 0C                LDA $0C
00EE   48                   PHA
00EF   A9 99                LDA #$99
00F1   48                   PHA
00F2   60                   RTS
00F3   C1 B2                CMP ($B2,X)
00F5   D0 C9                BNE L00C0
00F7   C3                   ???                ;%11000011
00F8   CF                   ???                ;%11001111
00F9   A0 D6                LDY #$D6
00FB   B2                   ???                ;%10110010
00FC   00                   BRK
00FD   00                   BRK
00FE   07                   ???                ;%00000111
00FF   31 00                AND ($00),Y
                            .END
