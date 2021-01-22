;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1 Thu Jan 21 16:42:25 2021

;--------------------------------------------------------
	.module isdigit
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isdigit
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area _ISEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area _BSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area _XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;	isdigit.c 3
;	genLabel
;	genFunction
;	---------------------------------
; Function isdigit
; ---------------------------------
___isdigit_start:
_isdigit:
	
;	isdigit.c 5
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	xor	a,#0x80
	cp	#0x30^0x80
	jp	c,00102$
;	genCmpGt
;	AOP_STK for 
	ld	e,#0xB9
	ld	a,(hl)
	xor	a,#0x80
	ld	d,a
	ld	a,e
	sub	a,d
	jp	c,00102$
;	isdigit.c 6
;	genRet
	ld	e,#0x01
	jp	00105$
;	genLabel
00102$:
;	isdigit.c 8
;	genRet
	ld	e,#0x00
;	genLabel
00105$:
;	genEndFunction
	
	ret
___isdigit_end:
	.area _CODE
