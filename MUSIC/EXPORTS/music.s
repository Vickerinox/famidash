; This file is for the FamiStudio Sound Engine and was generated by FamiStudio

.if FAMISTUDIO_CFG_C_BINDINGS
.export _music_data_=music_data_
.endif

music_data_:
	.byte 2
	.word @instruments
	.word @samples-4
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,327,273 ; 00 : Stereo Madness (ForeverBound)
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,264,220 ; 01 : Geometry Dash Menu Theme

.export music_data_
.global FAMISTUDIO_DPCM_PTR

@instruments:
	.word @env19,@env20,@env16,@env0 ; 00 : 0 12
	.word @env5,@env6,@env14,@env0 ; 01 : hat
	.word @env15,@env10,@env18,@env0 ; 02 : Instrument 1
	.word @env4,@env10,@env14,@env0 ; 03 : Instrument 2
	.word @env17,@env12,@env14,@env0 ; 04 : kick
	.word @env13,@env6,@env14,@env0 ; 05 : long hat
	.word @env3,@env10,@env16,@env0 ; 06 : piano
	.word @env8,@env10,@env14,@env0 ; 07 : Pick Bass
	.word @env19,@env10,@env2,@env0 ; 08 : quiet bass
	.word @env9,@env11,@env14,@env0 ; 09 : snare
	.word @env1,@env10,@env14,@env7 ; 0a : triangle drums
	.word @env21,@env10,@env14,@env0 ; 0b : triangle pluck 2

@env0:
	.byte $00,$c0,$7f,$00,$02
@env1:
	.byte $00,$c9,$c8,$c7,$c6,$c6,$c5,$c5,$c4,$00,$08
@env2:
	.byte $c3,$7f,$00,$00
@env3:
	.byte $00,$c9,$c7,$c5,$c3,$c2,$c1,$c1,$c0,$c4,$c3,$c3,$c2,$02,$c1,$04,$c0,$00,$10
@env4:
	.byte $00,$c7,$c6,$c5,$c5,$c4,$c4,$c3,$02,$c2,$02,$c1,$02,$c0,$00,$0d
@env5:
	.byte $00,$c8,$c4,$c2,$c0,$00,$04
@env6:
	.byte $be,$c0,$00,$01
@env7:
	.byte $80,$c0,$ff,$00,$02
@env8:
	.byte $00,$cf,$7f,$00,$02
@env9:
	.byte $00,$cd,$c9,$c7,$c5,$c4,$c3,$c2,$c2,$c1,$c1,$c0,$00,$0b
@env10:
	.byte $c0,$7f,$00,$01
@env11:
	.byte $c6,$c9,$00,$01
@env12:
	.byte $c6,$cf,$00,$01
@env13:
	.byte $00,$c9,$c7,$c5,$c4,$c3,$c3,$c2,$c2,$c1,$c1,$c0,$00,$0b
@env14:
	.byte $7f,$00,$00
@env15:
	.byte $00,$c3,$c6,$c5,$c5,$c4,$c4,$c3,$c3,$c2,$02,$c1,$03,$c0,$00,$0d
@env16:
	.byte $c2,$7f,$00,$00
@env17:
	.byte $00,$ca,$c7,$c4,$c2,$c1,$c0,$00,$06
@env18:
	.byte $c1,$7f,$00,$00
@env19:
	.byte $00,$c9,$c7,$c5,$00,$03
@env20:
	.byte $c0,$c0,$cc,$cc,$00,$00
@env21:
	.byte $00,$c7,$03,$c0,$00,$03

@samples:
	.byte $1d+.lobyte(FAMISTUDIO_DPCM_PTR),$27,$0f,$40 ; 00 Gimmick Snare.dmc (Pitch:15)
	.byte $18+.lobyte(FAMISTUDIO_DPCM_PTR),$13,$0e,$40 ; 01 pacman kick.dmc (Pitch:14)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$2f,$09,$40 ; 02 ripped00.dmc (Pitch:9)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$2f,$0a,$40 ; 03 ripped00.dmc (Pitch:10)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$2f,$0c,$40 ; 04 ripped00.dmc (Pitch:12)
	.byte $0c+.lobyte(FAMISTUDIO_DPCM_PTR),$2f,$0a,$40 ; 05 ripped04.dmc (Pitch:10)

@song0ch0:
	.byte $45, $06, $8c
@song0ref4:
	.byte $25, $81, $2c, $81, $25, $81, $2c, $81, $25, $81, $2c, $81, $25, $81, $2c, $81, $20, $81, $27, $81, $20, $81, $27, $81
	.byte $20, $81, $27, $81, $20, $81, $27, $81, $22, $81, $29, $81, $22, $81, $29, $81, $22, $81, $29, $81, $22, $81, $29, $81
	.byte $1e, $81, $25, $81, $1e, $81, $25, $81, $1e, $81, $25, $81, $1e, $81, $25, $81
	.byte $41, $40
	.word @song0ref4
	.byte $41, $40
	.word @song0ref4
	.byte $41, $40
	.word @song0ref4
	.byte $9f
	.byte $41, $40
	.word @song0ref4
	.byte $41, $40
	.word @song0ref4
	.byte $41, $40
	.word @song0ref4
	.byte $41, $40
	.word @song0ref4
	.byte $00, $fd, $00, $fd, $00, $fd, $00, $fd, $84
@song0ref99:
	.byte $31, $81, $00, $31, $81, $00, $31, $81, $00, $31, $81, $00, $31, $81, $00, $31, $81, $00, $30, $81, $00, $30, $81, $00
	.byte $30, $81, $00, $30, $81, $00, $30, $81, $31, $81, $00, $31, $81, $00, $31, $81, $00, $31, $81, $00, $31, $81, $00, $31
	.byte $81, $00, $33, $81, $00, $33, $81, $00, $33, $81, $00, $33, $81, $00, $33, $81
	.byte $41, $3b
	.word @song0ref99
	.byte $35, $81, $00, $35, $81
@song0ch0loop:
	.byte $00, $42
	.word @song0ch0loop
@song0ch1:
	.byte $00, $fd, $00, $fd, $90, $0d, $9d, $08, $9d, $0a, $9d, $06, $9d, $0d, $9d, $08, $9d, $0a, $9d, $06, $9d, $00, $9d, $0d
	.byte $9d, $08, $9d, $0a, $9d, $06, $9d, $0d, $9d, $08, $9d, $0a, $9d, $06, $9d, $0d, $9d, $08, $9d, $0a, $9d, $06, $9d, $0d
	.byte $9d, $08, $9d, $0a, $9d, $06, $9d, $00, $fd, $00, $fd, $00, $fd, $00, $fd, $86
@song0ref240:
	.byte $25, $81, $00, $25, $81, $00, $25, $81, $00, $25, $81, $00, $25, $81, $00, $25, $81, $00, $24, $81, $00, $24, $81, $00
	.byte $24, $81, $00, $24, $81, $00, $24, $81, $25, $81, $00, $25, $81, $00, $25, $81, $00, $25, $81, $00, $25, $81, $00, $25
	.byte $81, $00, $27, $81, $00, $27, $81, $00, $27, $81, $00, $27, $81, $00, $27, $81
	.byte $41, $3b
	.word @song0ref240
	.byte $29, $81, $00, $29, $81
@song0ch1loop:
	.byte $00, $42
	.word @song0ch1loop
@song0ch2:
	.byte $ff, $ff, $94
@song0ref320:
	.byte $1b, $00, $83, $22, $81, $00, $81, $1b, $00, $83, $22, $81, $00, $81, $1b, $00, $83, $22, $81, $00, $81, $1b, $00, $83
	.byte $22, $81, $00, $81
	.byte $41, $1c
	.word @song0ref320
	.byte $41, $1c
	.word @song0ref320
	.byte $41, $1c
	.word @song0ref320
	.byte $9f, $96
@song0ref359:
	.byte $31, $81, $31, $81, $31, $81, $31, $31, $81, $31, $31, $81, $31, $81, $31, $31, $31, $81, $30, $81, $30, $81, $30, $30
	.byte $81, $30, $30, $81, $30, $81, $30, $30, $31, $81, $31, $81, $31, $81, $31, $31, $81, $31, $31, $81, $31, $81, $31, $31
	.byte $31, $81, $33, $81, $33, $81, $33, $33, $81, $33, $33, $81, $33, $81, $33, $33
	.byte $41, $3a
	.word @song0ref359
	.byte $35, $81, $35, $81, $35, $35
	.byte $41, $40
	.word @song0ref359
	.byte $41, $3a
	.word @song0ref359
	.byte $35, $81, $35, $81, $35, $35
	.byte $41, $40
	.word @song0ref359
	.byte $41, $3a
	.word @song0ref359
	.byte $35, $81, $35, $81, $35, $35
	.byte $41, $40
	.word @song0ref359
	.byte $41, $3a
	.word @song0ref359
	.byte $35, $81, $35, $81, $35, $35, $ff, $ff
@song0ch2loop:
	.byte $00, $42
	.word @song0ch2loop
@song0ch3:
	.byte $ff, $ff
@song0ref477:
	.byte $88, $14, $81, $82, $21, $81, $92, $14, $81, $82, $21, $23, $88, $14, $82, $23, $21, $81, $92, $14, $81, $82, $21, $23
	.byte $88, $14, $81, $82, $21, $81, $92, $14, $81, $82, $21, $23, $88, $14, $82, $23, $21, $81, $92, $14, $81, $82, $21, $23
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $8f, $71, $8e, $1f, $72, $81, $73, $81, $75, $81, $77, $81, $7a, $81, $7c, $81, $7f, $81
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $41, $20
	.word @song0ref477
	.byte $ff, $ff
@song0ch3loop:
	.byte $00, $42
	.word @song0ch3loop
@song0ch4:
	.byte $ff, $ff, $ff, $ff, $9f
@song0ref612:
	.byte $02, $81, $05, $81, $01, $81, $05, $81, $02, $81, $05, $81, $01, $81, $05, $81, $02, $81, $04, $81, $01, $81, $04, $81
	.byte $02, $81, $04, $81, $01, $81, $04, $81, $02, $81, $06, $81, $01, $81, $06, $81, $02, $81, $06, $81, $01, $81, $06, $81
	.byte $02, $81, $03, $81, $01, $81, $03, $81, $02, $81, $03, $81, $01, $81, $03, $81
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
	.byte $41, $40
	.word @song0ref612
@song0ref697:
	.byte $05, $81, $05, $81, $05, $81, $05, $81, $05, $81, $05, $81, $05, $81, $05, $81, $05, $81, $04, $81, $04, $81, $04, $81
	.byte $04, $81, $04, $81, $04, $81, $04, $81, $06, $81, $06, $81, $06, $81, $06, $81, $06, $81, $06, $81, $06, $81, $06, $81
	.byte $06, $81, $03, $81, $03, $81, $03, $81, $03, $81, $03, $81, $03, $81, $03, $81
	.byte $41, $40
	.word @song0ref697
@song0ch4loop:
	.byte $00, $42
	.word @song0ch4loop
@song1ch0:
	.byte $45, $06
@song1ch0loop:
	.byte $8c
@song1ref5:
	.byte $19, $81, $19, $81, $19, $81, $19, $25, $8f, $20, $81, $20, $81, $20, $81, $20, $2c, $8f, $1e, $81, $1e, $81, $1e, $81
	.byte $1e, $2a, $8f
@song1ref32:
	.byte $1c, $81, $1c, $81, $1c, $81, $1c, $28, $83, $1b, $81, $1b, $81, $1b, $81
	.byte $41, $2a
	.word @song1ref5
	.byte $41, $2a
	.word @song1ref5
	.byte $41, $12
	.word @song1ref5
	.byte $41, $08
	.word @song1ref32
	.byte $af, $42
	.word @song1ch0loop
@song1ch1:
@song1ch1loop:
	.byte $80
@song1ref65:
	.byte $01, $9d, $08, $9d, $06, $9d, $04, $8b, $03, $8f
	.byte $41, $0a
	.word @song1ref65
	.byte $41, $0a
	.word @song1ref65
	.byte $01, $9d, $08, $9d, $04, $9d, $03, $9d, $42
	.word @song1ch1loop
@song1ch2:
@song1ch2loop:
	.byte $ff, $ff, $ff, $ff, $42
	.word @song1ch2loop
@song1ch3:
@song1ch3loop:
@song1ref101:
	.byte $88, $14, $82, $23, $21, $23, $92, $14, $82, $23, $21, $88, $14, $82, $1f, $88, $14, $14, $82, $23, $92, $14, $82, $23
	.byte $21, $23, $88, $14, $82, $23, $88, $14, $82, $23, $92, $14, $82, $23, $88, $14, $92, $14, $82, $1f, $88, $14, $14, $82
	.byte $23, $92, $14, $16, $16, $16
	.byte $41, $20
	.word @song1ref101
	.byte $41, $20
	.word @song1ref101
	.byte $41, $20
	.word @song1ref101
	.byte $41, $20
	.word @song1ref101
	.byte $41, $20
	.word @song1ref101
	.byte $41, $20
	.word @song1ref101
	.byte $41, $11
	.word @song1ref101
	.byte $81, $14, $85, $14, $81, $14, $85, $8a, $20, $81, $20, $81, $42
	.word @song1ch3loop
@song1ch4:
@song1ch4loop:
@song1ref192:
	.byte $02, $85, $01, $83, $02, $81, $02, $02, $81, $01, $85, $02, $81, $02, $81, $01, $81, $02, $01, $81, $02, $02, $81, $01
	.byte $01, $01, $01
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $1b
	.word @song1ref192
	.byte $41, $0e
	.word @song1ref192
	.byte $85, $02, $81, $02, $85, $02, $81, $02, $81, $42
	.word @song1ch4loop