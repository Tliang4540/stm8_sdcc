;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module funseg
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __nprintf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area FUN_SEG
;	src/funseg.c: 6: void _nprintf(uint8_t *buf)
;	-----------------------------------------
;	 function _nprintf
;	-----------------------------------------
__nprintf:
;	src/funseg.c: 8: while (*buf != 0x00)
00104$:
	ld	a, (x)
	jrne	00125$
	ret
00125$:
;	src/funseg.c: 10: while((USART1->SR & (uint8_t)USART_FLAG_TXE) == (uint8_t)0x00);
00101$:
	ld	a, 0x5230
	jrpl	00101$
;	src/funseg.c: 11: USART1->DR = *buf++;
	ld	a, (x)
	incw	x
	ld	0x5231, a
	jra	00104$
;	src/funseg.c: 13: }
	ret
	.area FUN_SEG
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
