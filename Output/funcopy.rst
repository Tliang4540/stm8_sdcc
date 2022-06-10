                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module funcopy
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl __nprintf
                                     12 	.globl _FUN_SIZE
                                     13 	.globl _funcopy
                                     14 ;--------------------------------------------------------
                                     15 ; ram data
                                     16 ;--------------------------------------------------------
                                     17 	.area DATA
      000001                         18 _FUN_SIZE::
      000001                         19 	.ds 1
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	src/funcopy.c: 16: void funcopy(unsigned char *dest)
                                     54 ;	-----------------------------------------
                                     55 ;	 function funcopy
                                     56 ;	-----------------------------------------
      00830D                         57 _funcopy:
      00830D 88               [ 1]   58 	push	a
                                     59 ;	src/funcopy.c: 19: const unsigned char *p_src = (const unsigned char*)_nprintf;
      00830E 90 AE 94 8A      [ 2]   60 	ldw	y, #(__nprintf+0)
                                     61 ;	src/funcopy.c: 9: __asm__("mov _FUN_SIZE, #l_FUN_SEG");
      008312 35 11 00 01      [ 1]   62 	mov	_FUN_SIZE, #l_FUN_SEG
                                     63 ;	src/funcopy.c: 22: for (i = 0; i < FUN_SIZE; i++)
      008316 0F 01            [ 1]   64 	clr	(0x01, sp)
      008318                         65 00104$:
      008318 7B 01            [ 1]   66 	ld	a, (0x01, sp)
      00831A C1 00 01         [ 1]   67 	cp	a, _FUN_SIZE+0
      00831D 24 0A            [ 1]   68 	jrnc	00106$
                                     69 ;	src/funcopy.c: 24: *p_dest++ = *p_src++;
      00831F 90 F6            [ 1]   70 	ld	a, (y)
      008321 90 5C            [ 1]   71 	incw	y
      008323 F7               [ 1]   72 	ld	(x), a
      008324 5C               [ 1]   73 	incw	x
                                     74 ;	src/funcopy.c: 22: for (i = 0; i < FUN_SIZE; i++)
      008325 0C 01            [ 1]   75 	inc	(0x01, sp)
      008327 20 EF            [ 2]   76 	jra	00104$
      008329                         77 00106$:
                                     78 ;	src/funcopy.c: 26: }
      008329 84               [ 1]   79 	pop	a
      00832A 81               [ 4]   80 	ret
                                     81 	.area CODE
                                     82 	.area CONST
                                     83 	.area INITIALIZER
                                     84 	.area CABS (ABS)
