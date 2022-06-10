;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module funcopy
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __nprintf
	.globl _FUN_SIZE
	.globl _funcopy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_FUN_SIZE::
	.ds 1
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
	.area CODE
;	src/funcopy.c: 16: void funcopy(unsigned char *dest)
;	-----------------------------------------
;	 function funcopy
;	-----------------------------------------
_funcopy:
	push	a
;	src/funcopy.c: 19: const unsigned char *p_src = (const unsigned char*)_nprintf;
	ldw	y, #(__nprintf+0)
;	src/funcopy.c: 9: __asm__("mov _FUN_SIZE, #l_FUN_SEG");
	mov	_FUN_SIZE, #l_FUN_SEG
;	src/funcopy.c: 22: for (i = 0; i < FUN_SIZE; i++)
	clr	(0x01, sp)
00104$:
	ld	a, (0x01, sp)
	cp	a, _FUN_SIZE+0
	jrnc	00106$
;	src/funcopy.c: 24: *p_dest++ = *p_src++;
	ld	a, (y)
	incw	y
	ld	(x), a
	incw	x
;	src/funcopy.c: 22: for (i = 0; i < FUN_SIZE; i++)
	inc	(0x01, sp)
	jra	00104$
00106$:
;	src/funcopy.c: 26: }
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
