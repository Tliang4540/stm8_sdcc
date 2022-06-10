;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module delay
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _delay_us
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
	.area CODE
;	src/delay.c: 3: void delay_ms(uint16_t ms)  
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	sub	sp, #4
;	src/delay.c: 6: if(ms > 64) 
	ldw	(0x03, sp), x
	ldw	y, x
	ldw	(0x01, sp), y
	ldw	x, y
	cpw	x, #0x0040
	jrule	00105$
;	src/delay.c: 8: i = (uint8_t)(ms / 64);
	ldw	x, (0x01, sp)
	ld	a, #0x40
	div	x, a
	ld	a, xl
;	src/delay.c: 9: do{
00101$:
;	src/delay.c: 10: delay_us(64000);
	push	a
	ldw	x, #0xfa00
	call	_delay_us
	pop	a
;	src/delay.c: 11: } while (--i);
	dec	a
	tnz	a
	jrne	00101$
;	src/delay.c: 13: ms = ms % 64;
	clrw	x
	ld	a, (0x02, sp)
	and	a, #0x3f
	ld	xl, a
	ldw	(0x03, sp), x
00105$:
;	src/delay.c: 15: delay_us(ms * 1000);
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, #0x03e8
	call	__mulint
	addw	sp, #4
;	src/delay.c: 16: }
	jp	_delay_us
;	src/delay.c: 18: void delay_us(uint16_t us)  
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
;	src/delay.c: 21: do{//ldw	x, (0x03, sp)
;	src/delay.c: 23: do{
00109$:
	ld	a, #0x02
00101$:
;	src/delay.c: 24: __asm__("nop");
	nop
;	src/delay.c: 25: }while(--i);//dec	a\n tnz	a\n jrne	00101$
	dec	a
	tnz	a
	jrne	00101$
;	src/delay.c: 26: }while(--us);//decw	x\n tnzw	x\n jrne	00109$
	decw	x
	tnzw	x
	jrne	00109$
;	src/delay.c: 27: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
