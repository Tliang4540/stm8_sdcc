                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _delay_us
                                     13 ;--------------------------------------------------------
                                     14 ; ram data
                                     15 ;--------------------------------------------------------
                                     16 	.area DATA
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area INITIALIZED
                                     21 ;--------------------------------------------------------
                                     22 ; absolute external ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DABS (ABS)
                                     25 
                                     26 ; default segment ordering for linker
                                     27 	.area HOME
                                     28 	.area GSINIT
                                     29 	.area GSFINAL
                                     30 	.area CONST
                                     31 	.area INITIALIZER
                                     32 	.area CODE
                                     33 
                                     34 ;--------------------------------------------------------
                                     35 ; global & static initialisations
                                     36 ;--------------------------------------------------------
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area GSINIT
                                     41 ;--------------------------------------------------------
                                     42 ; Home
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area HOME
                                     46 ;--------------------------------------------------------
                                     47 ; code
                                     48 ;--------------------------------------------------------
                                     49 	.area CODE
                                     50 ;	src/delay.c: 3: void delay_ms(uint16_t ms)  
                                     51 ;	-----------------------------------------
                                     52 ;	 function delay_ms
                                     53 ;	-----------------------------------------
      008241                         54 _delay_ms:
      008241 52 04            [ 2]   55 	sub	sp, #4
                                     56 ;	src/delay.c: 6: if(ms > 64) 
      008243 1F 03            [ 2]   57 	ldw	(0x03, sp), x
      008245 90 93            [ 1]   58 	ldw	y, x
      008247 17 01            [ 2]   59 	ldw	(0x01, sp), y
      008249 93               [ 1]   60 	ldw	x, y
      00824A A3 00 40         [ 2]   61 	cpw	x, #0x0040
      00824D 23 1A            [ 2]   62 	jrule	00105$
                                     63 ;	src/delay.c: 8: i = (uint8_t)(ms / 64);
      00824F 1E 01            [ 2]   64 	ldw	x, (0x01, sp)
      008251 A6 40            [ 1]   65 	ld	a, #0x40
      008253 62               [ 2]   66 	div	x, a
      008254 9F               [ 1]   67 	ld	a, xl
                                     68 ;	src/delay.c: 9: do{
      008255                         69 00101$:
                                     70 ;	src/delay.c: 10: delay_us(64000);
      008255 88               [ 1]   71 	push	a
      008256 AE FA 00         [ 2]   72 	ldw	x, #0xfa00
      008259 CD 82 77         [ 4]   73 	call	_delay_us
      00825C 84               [ 1]   74 	pop	a
                                     75 ;	src/delay.c: 11: } while (--i);
      00825D 4A               [ 1]   76 	dec	a
      00825E 4D               [ 1]   77 	tnz	a
      00825F 26 F4            [ 1]   78 	jrne	00101$
                                     79 ;	src/delay.c: 13: ms = ms % 64;
      008261 5F               [ 1]   80 	clrw	x
      008262 7B 02            [ 1]   81 	ld	a, (0x02, sp)
      008264 A4 3F            [ 1]   82 	and	a, #0x3f
      008266 97               [ 1]   83 	ld	xl, a
      008267 1F 03            [ 2]   84 	ldw	(0x03, sp), x
      008269                         85 00105$:
                                     86 ;	src/delay.c: 15: delay_us(ms * 1000);
      008269 1E 03            [ 2]   87 	ldw	x, (0x03, sp)
      00826B 89               [ 2]   88 	pushw	x
      00826C AE 03 E8         [ 2]   89 	ldw	x, #0x03e8
      00826F CD 94 13         [ 4]   90 	call	__mulint
      008272 5B 04            [ 2]   91 	addw	sp, #4
                                     92 ;	src/delay.c: 16: }
      008274 CC 82 77         [ 2]   93 	jp	_delay_us
                                     94 ;	src/delay.c: 18: void delay_us(uint16_t us)  
                                     95 ;	-----------------------------------------
                                     96 ;	 function delay_us
                                     97 ;	-----------------------------------------
      008277                         98 _delay_us:
                                     99 ;	src/delay.c: 21: do{//ldw	x, (0x03, sp)
                                    100 ;	src/delay.c: 23: do{
      008277                        101 00109$:
      008277 A6 02            [ 1]  102 	ld	a, #0x02
      008279                        103 00101$:
                                    104 ;	src/delay.c: 24: __asm__("nop");
      008279 9D               [ 1]  105 	nop
                                    106 ;	src/delay.c: 25: }while(--i);//dec	a\n tnz	a\n jrne	00101$
      00827A 4A               [ 1]  107 	dec	a
      00827B 4D               [ 1]  108 	tnz	a
      00827C 26 FB            [ 1]  109 	jrne	00101$
                                    110 ;	src/delay.c: 26: }while(--us);//decw	x\n tnzw	x\n jrne	00109$
      00827E 5A               [ 2]  111 	decw	x
      00827F 5D               [ 2]  112 	tnzw	x
      008280 26 F5            [ 1]  113 	jrne	00109$
                                    114 ;	src/delay.c: 27: }
      008282 81               [ 4]  115 	ret
                                    116 	.area CODE
                                    117 	.area CONST
                                    118 	.area INITIALIZER
                                    119 	.area CABS (ABS)
