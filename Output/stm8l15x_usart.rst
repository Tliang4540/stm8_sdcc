                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_usart
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _USART_DeInit
                                     13 	.globl _USART_Init
                                     14 	.globl _USART_ClockInit
                                     15 	.globl _USART_Cmd
                                     16 	.globl _USART_SetPrescaler
                                     17 	.globl _USART_SendBreak
                                     18 	.globl _USART_ReceiveData8
                                     19 	.globl _USART_ReceiveData9
                                     20 	.globl _USART_SendData8
                                     21 	.globl _USART_SendData9
                                     22 	.globl _USART_ReceiverWakeUpCmd
                                     23 	.globl _USART_SetAddress
                                     24 	.globl _USART_WakeUpConfig
                                     25 	.globl _USART_HalfDuplexCmd
                                     26 	.globl _USART_SmartCardCmd
                                     27 	.globl _USART_SmartCardNACKCmd
                                     28 	.globl _USART_SetGuardTime
                                     29 	.globl _USART_IrDAConfig
                                     30 	.globl _USART_IrDACmd
                                     31 	.globl _USART_DMACmd
                                     32 	.globl _USART_ITConfig
                                     33 	.globl _USART_GetFlagStatus
                                     34 	.globl _USART_ClearFlag
                                     35 	.globl _USART_GetITStatus
                                     36 	.globl _USART_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	lib/src/stm8l15x_usart.c: 148: void USART_DeInit(USART_TypeDef* USARTx)
                                     75 ;	-----------------------------------------
                                     76 ;	 function USART_DeInit
                                     77 ;	-----------------------------------------
      00832B                         78 _USART_DeInit:
                                     79 ;	lib/src/stm8l15x_usart.c: 154: (void) USARTx->DR;
      00832B 90 93            [ 1]   80 	ldw	y, x
      00832D E6 01            [ 1]   81 	ld	a, (0x1, x)
                                     82 ;	lib/src/stm8l15x_usart.c: 156: USARTx->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
      00832F 93               [ 1]   83 	ldw	x, y
      008330 6F 03            [ 1]   84 	clr	(0x0003, x)
                                     85 ;	lib/src/stm8l15x_usart.c: 157: USARTx->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
      008332 93               [ 1]   86 	ldw	x, y
      008333 5C               [ 1]   87 	incw	x
      008334 5C               [ 1]   88 	incw	x
      008335 7F               [ 1]   89 	clr	(x)
                                     90 ;	lib/src/stm8l15x_usart.c: 159: USARTx->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
      008336 93               [ 1]   91 	ldw	x, y
      008337 6F 04            [ 1]   92 	clr	(0x0004, x)
                                     93 ;	lib/src/stm8l15x_usart.c: 160: USARTx->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
      008339 93               [ 1]   94 	ldw	x, y
      00833A 6F 05            [ 1]   95 	clr	(0x0005, x)
                                     96 ;	lib/src/stm8l15x_usart.c: 161: USARTx->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
      00833C 93               [ 1]   97 	ldw	x, y
      00833D 6F 06            [ 1]   98 	clr	(0x0006, x)
                                     99 ;	lib/src/stm8l15x_usart.c: 162: USARTx->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
      00833F 93               [ 1]  100 	ldw	x, y
      008340 6F 07            [ 1]  101 	clr	(0x0007, x)
                                    102 ;	lib/src/stm8l15x_usart.c: 163: }
      008342 81               [ 4]  103 	ret
                                    104 ;	lib/src/stm8l15x_usart.c: 192: void USART_Init(USART_TypeDef* USARTx, uint32_t BaudRate, USART_WordLength_TypeDef
                                    105 ;	-----------------------------------------
                                    106 ;	 function USART_Init
                                    107 ;	-----------------------------------------
      008343                        108 _USART_Init:
      008343 52 0B            [ 2]  109 	sub	sp, #11
                                    110 ;	lib/src/stm8l15x_usart.c: 210: USARTx->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
      008345 1F 0A            [ 2]  111 	ldw	(0x0a, sp), x
      008347 1C 00 04         [ 2]  112 	addw	x, #0x0004
      00834A F6               [ 1]  113 	ld	a, (x)
      00834B A4 E9            [ 1]  114 	and	a, #0xe9
      00834D 6B 09            [ 1]  115 	ld	(0x09, sp), a
      00834F F7               [ 1]  116 	ld	(x), a
                                    117 ;	lib/src/stm8l15x_usart.c: 213: USARTx->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
      008350 F6               [ 1]  118 	ld	a, (x)
      008351 7B 12            [ 1]  119 	ld	a, (0x12, sp)
      008353 1A 14            [ 1]  120 	or	a, (0x14, sp)
      008355 1A 09            [ 1]  121 	or	a, (0x09, sp)
      008357 F7               [ 1]  122 	ld	(x), a
                                    123 ;	lib/src/stm8l15x_usart.c: 216: USARTx->CR3 &= (uint8_t)(~USART_CR3_STOP);
      008358 1E 0A            [ 2]  124 	ldw	x, (0x0a, sp)
      00835A 1C 00 06         [ 2]  125 	addw	x, #0x0006
      00835D F6               [ 1]  126 	ld	a, (x)
      00835E A4 CF            [ 1]  127 	and	a, #0xcf
      008360 F7               [ 1]  128 	ld	(x), a
                                    129 ;	lib/src/stm8l15x_usart.c: 218: USARTx->CR3 |= (uint8_t)USART_StopBits;
      008361 88               [ 1]  130 	push	a
      008362 F6               [ 1]  131 	ld	a, (x)
      008363 84               [ 1]  132 	pop	a
      008364 1A 13            [ 1]  133 	or	a, (0x13, sp)
      008366 F7               [ 1]  134 	ld	(x), a
                                    135 ;	lib/src/stm8l15x_usart.c: 221: USARTx->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
      008367 1E 0A            [ 2]  136 	ldw	x, (0x0a, sp)
      008369 5C               [ 1]  137 	incw	x
      00836A 5C               [ 1]  138 	incw	x
      00836B 1F 01            [ 2]  139 	ldw	(0x01, sp), x
      00836D F6               [ 1]  140 	ld	a, (x)
      00836E 1E 01            [ 2]  141 	ldw	x, (0x01, sp)
      008370 7F               [ 1]  142 	clr	(x)
                                    143 ;	lib/src/stm8l15x_usart.c: 223: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
      008371 1E 0A            [ 2]  144 	ldw	x, (0x0a, sp)
      008373 1C 00 03         [ 2]  145 	addw	x, #0x0003
      008376 1F 03            [ 2]  146 	ldw	(0x03, sp), x
      008378 F6               [ 1]  147 	ld	a, (x)
      008379 A4 0F            [ 1]  148 	and	a, #0x0f
      00837B 1E 03            [ 2]  149 	ldw	x, (0x03, sp)
      00837D F7               [ 1]  150 	ld	(x), a
                                    151 ;	lib/src/stm8l15x_usart.c: 225: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
      00837E 1E 03            [ 2]  152 	ldw	x, (0x03, sp)
      008380 88               [ 1]  153 	push	a
      008381 F6               [ 1]  154 	ld	a, (x)
      008382 84               [ 1]  155 	pop	a
      008383 A4 F0            [ 1]  156 	and	a, #0xf0
      008385 1E 03            [ 2]  157 	ldw	x, (0x03, sp)
      008387 F7               [ 1]  158 	ld	(x), a
                                    159 ;	lib/src/stm8l15x_usart.c: 227: BaudRate_Mantissa  = (uint32_t)(CLK_GetClockFreq() / BaudRate );
      008388 CD 91 CC         [ 4]  160 	call	_CLK_GetClockFreq
      00838B 1F 08            [ 2]  161 	ldw	(0x08, sp), x
      00838D 1E 10            [ 2]  162 	ldw	x, (0x10, sp)
      00838F 89               [ 2]  163 	pushw	x
      008390 1E 10            [ 2]  164 	ldw	x, (0x10, sp)
      008392 89               [ 2]  165 	pushw	x
      008393 1E 0C            [ 2]  166 	ldw	x, (0x0c, sp)
      008395 89               [ 2]  167 	pushw	x
      008396 90 89            [ 2]  168 	pushw	y
      008398 CD 94 30         [ 4]  169 	call	__divulong
      00839B 5B 08            [ 2]  170 	addw	sp, #8
      00839D 17 05            [ 2]  171 	ldw	(0x05, sp), y
                                    172 ;	lib/src/stm8l15x_usart.c: 229: USARTx->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
      00839F 9E               [ 1]  173 	ld	a, xh
      0083A0 A4 F0            [ 1]  174 	and	a, #0xf0
      0083A2 6B 09            [ 1]  175 	ld	(0x09, sp), a
      0083A4 16 03            [ 2]  176 	ldw	y, (0x03, sp)
      0083A6 7B 09            [ 1]  177 	ld	a, (0x09, sp)
      0083A8 90 F7            [ 1]  178 	ld	(y), a
                                    179 ;	lib/src/stm8l15x_usart.c: 231: USARTx->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
      0083AA 16 03            [ 2]  180 	ldw	y, (0x03, sp)
      0083AC 90 F6            [ 1]  181 	ld	a, (y)
      0083AE 9F               [ 1]  182 	ld	a, xl
      0083AF A4 0F            [ 1]  183 	and	a, #0x0f
      0083B1 1A 09            [ 1]  184 	or	a, (0x09, sp)
      0083B3 16 03            [ 2]  185 	ldw	y, (0x03, sp)
      0083B5 90 F7            [ 1]  186 	ld	(y), a
                                    187 ;	lib/src/stm8l15x_usart.c: 233: USARTx->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
      0083B7 A6 10            [ 1]  188 	ld	a, #0x10
      0083B9 62               [ 2]  189 	div	x, a
      0083BA 9F               [ 1]  190 	ld	a, xl
      0083BB 1E 01            [ 2]  191 	ldw	x, (0x01, sp)
      0083BD F7               [ 1]  192 	ld	(x), a
                                    193 ;	lib/src/stm8l15x_usart.c: 236: USARTx->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
      0083BE 1E 0A            [ 2]  194 	ldw	x, (0x0a, sp)
      0083C0 1C 00 05         [ 2]  195 	addw	x, #0x0005
      0083C3 F6               [ 1]  196 	ld	a, (x)
      0083C4 A4 F3            [ 1]  197 	and	a, #0xf3
      0083C6 F7               [ 1]  198 	ld	(x), a
                                    199 ;	lib/src/stm8l15x_usart.c: 238: USARTx->CR2 |= (uint8_t)USART_Mode;
      0083C7 88               [ 1]  200 	push	a
      0083C8 F6               [ 1]  201 	ld	a, (x)
      0083C9 84               [ 1]  202 	pop	a
      0083CA 1A 15            [ 1]  203 	or	a, (0x15, sp)
      0083CC F7               [ 1]  204 	ld	(x), a
                                    205 ;	lib/src/stm8l15x_usart.c: 239: }
      0083CD 1E 0C            [ 2]  206 	ldw	x, (12, sp)
      0083CF 5B 15            [ 2]  207 	addw	sp, #21
      0083D1 FC               [ 2]  208 	jp	(x)
                                    209 ;	lib/src/stm8l15x_usart.c: 264: void USART_ClockInit(USART_TypeDef* USARTx, USART_Clock_TypeDef USART_Clock,
                                    210 ;	-----------------------------------------
                                    211 ;	 function USART_ClockInit
                                    212 ;	-----------------------------------------
      0083D2                        213 _USART_ClockInit:
      0083D2 52 04            [ 2]  214 	sub	sp, #4
      0083D4 6B 04            [ 1]  215 	ld	(0x04, sp), a
                                    216 ;	lib/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
      0083D6 1C 00 06         [ 2]  217 	addw	x, #0x0006
      0083D9 1F 01            [ 2]  218 	ldw	(0x01, sp), x
      0083DB F6               [ 1]  219 	ld	a, (x)
      0083DC A4 F8            [ 1]  220 	and	a, #0xf8
      0083DE 6B 03            [ 1]  221 	ld	(0x03, sp), a
      0083E0 1E 01            [ 2]  222 	ldw	x, (0x01, sp)
      0083E2 7B 03            [ 1]  223 	ld	a, (0x03, sp)
      0083E4 F7               [ 1]  224 	ld	(x), a
                                    225 ;	lib/src/stm8l15x_usart.c: 277: USARTx->CR3 |= (uint8_t)((uint8_t)((uint8_t)(USART_CPOL | (uint8_t)USART_CPHA ) | USART_LastBit));
      0083E5 1E 01            [ 2]  226 	ldw	x, (0x01, sp)
      0083E7 F6               [ 1]  227 	ld	a, (x)
      0083E8 7B 07            [ 1]  228 	ld	a, (0x07, sp)
      0083EA 1A 08            [ 1]  229 	or	a, (0x08, sp)
      0083EC 1A 09            [ 1]  230 	or	a, (0x09, sp)
      0083EE 1A 03            [ 1]  231 	or	a, (0x03, sp)
      0083F0 1E 01            [ 2]  232 	ldw	x, (0x01, sp)
      0083F2 F7               [ 1]  233 	ld	(x), a
                                    234 ;	lib/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
      0083F3 1E 01            [ 2]  235 	ldw	x, (0x01, sp)
      0083F5 F6               [ 1]  236 	ld	a, (x)
                                    237 ;	lib/src/stm8l15x_usart.c: 279: if (USART_Clock != USART_Clock_Disable)
      0083F6 0D 04            [ 1]  238 	tnz	(0x04, sp)
      0083F8 27 07            [ 1]  239 	jreq	00102$
                                    240 ;	lib/src/stm8l15x_usart.c: 281: USARTx->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
      0083FA AA 08            [ 1]  241 	or	a, #0x08
      0083FC 1E 01            [ 2]  242 	ldw	x, (0x01, sp)
      0083FE F7               [ 1]  243 	ld	(x), a
      0083FF 20 05            [ 2]  244 	jra	00104$
      008401                        245 00102$:
                                    246 ;	lib/src/stm8l15x_usart.c: 285: USARTx->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
      008401 A4 F7            [ 1]  247 	and	a, #0xf7
      008403 1E 01            [ 2]  248 	ldw	x, (0x01, sp)
      008405 F7               [ 1]  249 	ld	(x), a
      008406                        250 00104$:
                                    251 ;	lib/src/stm8l15x_usart.c: 287: }
      008406 1E 05            [ 2]  252 	ldw	x, (5, sp)
      008408 5B 09            [ 2]  253 	addw	sp, #9
      00840A FC               [ 2]  254 	jp	(x)
                                    255 ;	lib/src/stm8l15x_usart.c: 296: void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    256 ;	-----------------------------------------
                                    257 ;	 function USART_Cmd
                                    258 ;	-----------------------------------------
      00840B                        259 _USART_Cmd:
      00840B 88               [ 1]  260 	push	a
      00840C 6B 01            [ 1]  261 	ld	(0x01, sp), a
                                    262 ;	lib/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
      00840E 1C 00 04         [ 2]  263 	addw	x, #0x0004
      008411 F6               [ 1]  264 	ld	a, (x)
                                    265 ;	lib/src/stm8l15x_usart.c: 298: if (NewState != DISABLE)
      008412 0D 01            [ 1]  266 	tnz	(0x01, sp)
      008414 27 05            [ 1]  267 	jreq	00102$
                                    268 ;	lib/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
      008416 A4 DF            [ 1]  269 	and	a, #0xdf
      008418 F7               [ 1]  270 	ld	(x), a
      008419 20 03            [ 2]  271 	jra	00104$
      00841B                        272 00102$:
                                    273 ;	lib/src/stm8l15x_usart.c: 304: USARTx->CR1 |= USART_CR1_USARTD;  /**< USART Disable (for low power consumption) */
      00841B AA 20            [ 1]  274 	or	a, #0x20
      00841D F7               [ 1]  275 	ld	(x), a
      00841E                        276 00104$:
                                    277 ;	lib/src/stm8l15x_usart.c: 306: }
      00841E 84               [ 1]  278 	pop	a
      00841F 81               [ 4]  279 	ret
                                    280 ;	lib/src/stm8l15x_usart.c: 329: void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
                                    281 ;	-----------------------------------------
                                    282 ;	 function USART_SetPrescaler
                                    283 ;	-----------------------------------------
      008420                        284 _USART_SetPrescaler:
                                    285 ;	lib/src/stm8l15x_usart.c: 332: USARTx->PSCR = USART_Prescaler;
      008420 1C 00 0A         [ 2]  286 	addw	x, #0x000a
      008423 F7               [ 1]  287 	ld	(x), a
                                    288 ;	lib/src/stm8l15x_usart.c: 333: }
      008424 81               [ 4]  289 	ret
                                    290 ;	lib/src/stm8l15x_usart.c: 340: void USART_SendBreak(USART_TypeDef* USARTx)
                                    291 ;	-----------------------------------------
                                    292 ;	 function USART_SendBreak
                                    293 ;	-----------------------------------------
      008425                        294 _USART_SendBreak:
                                    295 ;	lib/src/stm8l15x_usart.c: 342: USARTx->CR2 |= USART_CR2_SBK;
      008425 1C 00 05         [ 2]  296 	addw	x, #0x0005
      008428 F6               [ 1]  297 	ld	a, (x)
      008429 AA 01            [ 1]  298 	or	a, #0x01
      00842B F7               [ 1]  299 	ld	(x), a
                                    300 ;	lib/src/stm8l15x_usart.c: 343: }
      00842C 81               [ 4]  301 	ret
                                    302 ;	lib/src/stm8l15x_usart.c: 382: uint8_t USART_ReceiveData8(USART_TypeDef* USARTx)
                                    303 ;	-----------------------------------------
                                    304 ;	 function USART_ReceiveData8
                                    305 ;	-----------------------------------------
      00842D                        306 _USART_ReceiveData8:
                                    307 ;	lib/src/stm8l15x_usart.c: 384: return USARTx->DR;
      00842D E6 01            [ 1]  308 	ld	a, (0x1, x)
                                    309 ;	lib/src/stm8l15x_usart.c: 385: }
      00842F 81               [ 4]  310 	ret
                                    311 ;	lib/src/stm8l15x_usart.c: 392: uint16_t USART_ReceiveData9(USART_TypeDef* USARTx)
                                    312 ;	-----------------------------------------
                                    313 ;	 function USART_ReceiveData9
                                    314 ;	-----------------------------------------
      008430                        315 _USART_ReceiveData9:
      008430 52 02            [ 2]  316 	sub	sp, #2
                                    317 ;	lib/src/stm8l15x_usart.c: 396: temp = ((uint16_t)(((uint16_t)((uint16_t)USARTx->CR1 & (uint16_t)USART_CR1_R8)) << 1));
      008432 90 93            [ 1]  318 	ldw	y, x
      008434 E6 04            [ 1]  319 	ld	a, (0x4, x)
      008436 A4 80            [ 1]  320 	and	a, #0x80
      008438 97               [ 1]  321 	ld	xl, a
      008439 4F               [ 1]  322 	clr	a
      00843A 95               [ 1]  323 	ld	xh, a
      00843B 58               [ 2]  324 	sllw	x
      00843C 1F 01            [ 2]  325 	ldw	(0x01, sp), x
                                    326 ;	lib/src/stm8l15x_usart.c: 397: return (uint16_t)( ((uint16_t)((uint16_t)USARTx->DR) | temp) & ((uint16_t)0x01FF));
      00843E 90 E6 01         [ 1]  327 	ld	a, (0x1, y)
      008441 5F               [ 1]  328 	clrw	x
      008442 1A 02            [ 1]  329 	or	a, (0x02, sp)
      008444 02               [ 1]  330 	rlwa	x
      008445 1A 01            [ 1]  331 	or	a, (0x01, sp)
      008447 A4 01            [ 1]  332 	and	a, #0x01
      008449 95               [ 1]  333 	ld	xh, a
                                    334 ;	lib/src/stm8l15x_usart.c: 398: }
      00844A 5B 02            [ 2]  335 	addw	sp, #2
      00844C 81               [ 4]  336 	ret
                                    337 ;	lib/src/stm8l15x_usart.c: 405: void USART_SendData8(USART_TypeDef* USARTx, uint8_t Data)
                                    338 ;	-----------------------------------------
                                    339 ;	 function USART_SendData8
                                    340 ;	-----------------------------------------
      00844D                        341 _USART_SendData8:
                                    342 ;	lib/src/stm8l15x_usart.c: 408: USARTx->DR = Data;
      00844D 5C               [ 1]  343 	incw	x
      00844E F7               [ 1]  344 	ld	(x), a
                                    345 ;	lib/src/stm8l15x_usart.c: 409: }
      00844F 81               [ 4]  346 	ret
                                    347 ;	lib/src/stm8l15x_usart.c: 418: void USART_SendData9(USART_TypeDef* USARTx, uint16_t Data)
                                    348 ;	-----------------------------------------
                                    349 ;	 function USART_SendData9
                                    350 ;	-----------------------------------------
      008450                        351 _USART_SendData9:
      008450 52 03            [ 2]  352 	sub	sp, #3
                                    353 ;	lib/src/stm8l15x_usart.c: 423: USARTx->CR1 &= ((uint8_t)~USART_CR1_T8);
      008452 1F 02            [ 2]  354 	ldw	(0x02, sp), x
      008454 1C 00 04         [ 2]  355 	addw	x, #0x0004
      008457 F6               [ 1]  356 	ld	a, (x)
      008458 A4 BF            [ 1]  357 	and	a, #0xbf
      00845A 6B 01            [ 1]  358 	ld	(0x01, sp), a
      00845C F7               [ 1]  359 	ld	(x), a
                                    360 ;	lib/src/stm8l15x_usart.c: 426: USARTx->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8);
      00845D F6               [ 1]  361 	ld	a, (x)
      00845E 16 06            [ 2]  362 	ldw	y, (0x06, sp)
      008460 90 54            [ 2]  363 	srlw	y
      008462 90 54            [ 2]  364 	srlw	y
      008464 90 9F            [ 1]  365 	ld	a, yl
      008466 A4 40            [ 1]  366 	and	a, #0x40
      008468 1A 01            [ 1]  367 	or	a, (0x01, sp)
      00846A F7               [ 1]  368 	ld	(x), a
                                    369 ;	lib/src/stm8l15x_usart.c: 429: USARTx->DR   = (uint8_t)(Data);
      00846B 1E 02            [ 2]  370 	ldw	x, (0x02, sp)
      00846D 5C               [ 1]  371 	incw	x
      00846E 7B 07            [ 1]  372 	ld	a, (0x07, sp)
      008470 F7               [ 1]  373 	ld	(x), a
                                    374 ;	lib/src/stm8l15x_usart.c: 430: }
      008471 1E 04            [ 2]  375 	ldw	x, (4, sp)
      008473 5B 07            [ 2]  376 	addw	sp, #7
      008475 FC               [ 2]  377 	jp	(x)
                                    378 ;	lib/src/stm8l15x_usart.c: 473: void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    379 ;	-----------------------------------------
                                    380 ;	 function USART_ReceiverWakeUpCmd
                                    381 ;	-----------------------------------------
      008476                        382 _USART_ReceiverWakeUpCmd:
      008476 88               [ 1]  383 	push	a
      008477 6B 01            [ 1]  384 	ld	(0x01, sp), a
                                    385 ;	lib/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
      008479 1C 00 05         [ 2]  386 	addw	x, #0x0005
      00847C F6               [ 1]  387 	ld	a, (x)
                                    388 ;	lib/src/stm8l15x_usart.c: 477: if (NewState != DISABLE)
      00847D 0D 01            [ 1]  389 	tnz	(0x01, sp)
      00847F 27 05            [ 1]  390 	jreq	00102$
                                    391 ;	lib/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
      008481 AA 02            [ 1]  392 	or	a, #0x02
      008483 F7               [ 1]  393 	ld	(x), a
      008484 20 03            [ 2]  394 	jra	00104$
      008486                        395 00102$:
                                    396 ;	lib/src/stm8l15x_usart.c: 485: USARTx->CR2 &= ((uint8_t)~USART_CR2_RWU);
      008486 A4 FD            [ 1]  397 	and	a, #0xfd
      008488 F7               [ 1]  398 	ld	(x), a
      008489                        399 00104$:
                                    400 ;	lib/src/stm8l15x_usart.c: 487: }
      008489 84               [ 1]  401 	pop	a
      00848A 81               [ 4]  402 	ret
                                    403 ;	lib/src/stm8l15x_usart.c: 496: void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
                                    404 ;	-----------------------------------------
                                    405 ;	 function USART_SetAddress
                                    406 ;	-----------------------------------------
      00848B                        407 _USART_SetAddress:
      00848B 88               [ 1]  408 	push	a
      00848C 6B 01            [ 1]  409 	ld	(0x01, sp), a
                                    410 ;	lib/src/stm8l15x_usart.c: 502: USARTx->CR4 &= ((uint8_t)~USART_CR4_ADD);
      00848E 1C 00 07         [ 2]  411 	addw	x, #0x0007
      008491 F6               [ 1]  412 	ld	a, (x)
      008492 A4 F0            [ 1]  413 	and	a, #0xf0
      008494 F7               [ 1]  414 	ld	(x), a
                                    415 ;	lib/src/stm8l15x_usart.c: 504: USARTx->CR4 |= USART_Address;
      008495 88               [ 1]  416 	push	a
      008496 F6               [ 1]  417 	ld	a, (x)
      008497 84               [ 1]  418 	pop	a
      008498 1A 01            [ 1]  419 	or	a, (0x01, sp)
      00849A F7               [ 1]  420 	ld	(x), a
                                    421 ;	lib/src/stm8l15x_usart.c: 505: }
      00849B 84               [ 1]  422 	pop	a
      00849C 81               [ 4]  423 	ret
                                    424 ;	lib/src/stm8l15x_usart.c: 515: void USART_WakeUpConfig(USART_TypeDef* USARTx, USART_WakeUp_TypeDef USART_WakeUp)
                                    425 ;	-----------------------------------------
                                    426 ;	 function USART_WakeUpConfig
                                    427 ;	-----------------------------------------
      00849D                        428 _USART_WakeUpConfig:
      00849D 88               [ 1]  429 	push	a
      00849E 6B 01            [ 1]  430 	ld	(0x01, sp), a
                                    431 ;	lib/src/stm8l15x_usart.c: 519: USARTx->CR1 &= ((uint8_t)~USART_CR1_WAKE);
      0084A0 1C 00 04         [ 2]  432 	addw	x, #0x0004
      0084A3 F6               [ 1]  433 	ld	a, (x)
      0084A4 A4 F7            [ 1]  434 	and	a, #0xf7
      0084A6 F7               [ 1]  435 	ld	(x), a
                                    436 ;	lib/src/stm8l15x_usart.c: 520: USARTx->CR1 |= (uint8_t)USART_WakeUp;
      0084A7 88               [ 1]  437 	push	a
      0084A8 F6               [ 1]  438 	ld	a, (x)
      0084A9 84               [ 1]  439 	pop	a
      0084AA 1A 01            [ 1]  440 	or	a, (0x01, sp)
      0084AC F7               [ 1]  441 	ld	(x), a
                                    442 ;	lib/src/stm8l15x_usart.c: 521: }
      0084AD 84               [ 1]  443 	pop	a
      0084AE 81               [ 4]  444 	ret
                                    445 ;	lib/src/stm8l15x_usart.c: 566: void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    446 ;	-----------------------------------------
                                    447 ;	 function USART_HalfDuplexCmd
                                    448 ;	-----------------------------------------
      0084AF                        449 _USART_HalfDuplexCmd:
      0084AF 88               [ 1]  450 	push	a
      0084B0 6B 01            [ 1]  451 	ld	(0x01, sp), a
                                    452 ;	lib/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
      0084B2 1C 00 08         [ 2]  453 	addw	x, #0x0008
      0084B5 F6               [ 1]  454 	ld	a, (x)
                                    455 ;	lib/src/stm8l15x_usart.c: 570: if (NewState != DISABLE)
      0084B6 0D 01            [ 1]  456 	tnz	(0x01, sp)
      0084B8 27 05            [ 1]  457 	jreq	00102$
                                    458 ;	lib/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
      0084BA AA 08            [ 1]  459 	or	a, #0x08
      0084BC F7               [ 1]  460 	ld	(x), a
      0084BD 20 03            [ 2]  461 	jra	00104$
      0084BF                        462 00102$:
                                    463 ;	lib/src/stm8l15x_usart.c: 576: USARTx->CR5 &= (uint8_t)~USART_CR5_HDSEL; /**< USART Half Duplex Disable */
      0084BF A4 F7            [ 1]  464 	and	a, #0xf7
      0084C1 F7               [ 1]  465 	ld	(x), a
      0084C2                        466 00104$:
                                    467 ;	lib/src/stm8l15x_usart.c: 578: }
      0084C2 84               [ 1]  468 	pop	a
      0084C3 81               [ 4]  469 	ret
                                    470 ;	lib/src/stm8l15x_usart.c: 644: void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    471 ;	-----------------------------------------
                                    472 ;	 function USART_SmartCardCmd
                                    473 ;	-----------------------------------------
      0084C4                        474 _USART_SmartCardCmd:
      0084C4 88               [ 1]  475 	push	a
      0084C5 6B 01            [ 1]  476 	ld	(0x01, sp), a
                                    477 ;	lib/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
      0084C7 1C 00 08         [ 2]  478 	addw	x, #0x0008
      0084CA F6               [ 1]  479 	ld	a, (x)
                                    480 ;	lib/src/stm8l15x_usart.c: 648: if (NewState != DISABLE)
      0084CB 0D 01            [ 1]  481 	tnz	(0x01, sp)
      0084CD 27 05            [ 1]  482 	jreq	00102$
                                    483 ;	lib/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
      0084CF AA 20            [ 1]  484 	or	a, #0x20
      0084D1 F7               [ 1]  485 	ld	(x), a
      0084D2 20 03            [ 2]  486 	jra	00104$
      0084D4                        487 00102$:
                                    488 ;	lib/src/stm8l15x_usart.c: 656: USARTx->CR5 &= ((uint8_t)(~USART_CR5_SCEN));
      0084D4 A4 DF            [ 1]  489 	and	a, #0xdf
      0084D6 F7               [ 1]  490 	ld	(x), a
      0084D7                        491 00104$:
                                    492 ;	lib/src/stm8l15x_usart.c: 658: }
      0084D7 84               [ 1]  493 	pop	a
      0084D8 81               [ 4]  494 	ret
                                    495 ;	lib/src/stm8l15x_usart.c: 667: void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    496 ;	-----------------------------------------
                                    497 ;	 function USART_SmartCardNACKCmd
                                    498 ;	-----------------------------------------
      0084D9                        499 _USART_SmartCardNACKCmd:
      0084D9 88               [ 1]  500 	push	a
      0084DA 6B 01            [ 1]  501 	ld	(0x01, sp), a
                                    502 ;	lib/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
      0084DC 1C 00 08         [ 2]  503 	addw	x, #0x0008
      0084DF F6               [ 1]  504 	ld	a, (x)
                                    505 ;	lib/src/stm8l15x_usart.c: 671: if (NewState != DISABLE)
      0084E0 0D 01            [ 1]  506 	tnz	(0x01, sp)
      0084E2 27 05            [ 1]  507 	jreq	00102$
                                    508 ;	lib/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
      0084E4 AA 10            [ 1]  509 	or	a, #0x10
      0084E6 F7               [ 1]  510 	ld	(x), a
      0084E7 20 03            [ 2]  511 	jra	00104$
      0084E9                        512 00102$:
                                    513 ;	lib/src/stm8l15x_usart.c: 679: USARTx->CR5 &= ((uint8_t)~(USART_CR5_NACK));
      0084E9 A4 EF            [ 1]  514 	and	a, #0xef
      0084EB F7               [ 1]  515 	ld	(x), a
      0084EC                        516 00104$:
                                    517 ;	lib/src/stm8l15x_usart.c: 681: }
      0084EC 84               [ 1]  518 	pop	a
      0084ED 81               [ 4]  519 	ret
                                    520 ;	lib/src/stm8l15x_usart.c: 690: void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
                                    521 ;	-----------------------------------------
                                    522 ;	 function USART_SetGuardTime
                                    523 ;	-----------------------------------------
      0084EE                        524 _USART_SetGuardTime:
                                    525 ;	lib/src/stm8l15x_usart.c: 693: USARTx->GTR = USART_GuardTime;
      0084EE 1C 00 09         [ 2]  526 	addw	x, #0x0009
      0084F1 F7               [ 1]  527 	ld	(x), a
                                    528 ;	lib/src/stm8l15x_usart.c: 694: }
      0084F2 81               [ 4]  529 	ret
                                    530 ;	lib/src/stm8l15x_usart.c: 751: void USART_IrDAConfig(USART_TypeDef* USARTx, USART_IrDAMode_TypeDef USART_IrDAMode)
                                    531 ;	-----------------------------------------
                                    532 ;	 function USART_IrDAConfig
                                    533 ;	-----------------------------------------
      0084F3                        534 _USART_IrDAConfig:
      0084F3 88               [ 1]  535 	push	a
      0084F4 6B 01            [ 1]  536 	ld	(0x01, sp), a
                                    537 ;	lib/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
      0084F6 1C 00 08         [ 2]  538 	addw	x, #0x0008
      0084F9 F6               [ 1]  539 	ld	a, (x)
                                    540 ;	lib/src/stm8l15x_usart.c: 755: if (USART_IrDAMode != USART_IrDAMode_Normal)
      0084FA 0D 01            [ 1]  541 	tnz	(0x01, sp)
      0084FC 27 05            [ 1]  542 	jreq	00102$
                                    543 ;	lib/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
      0084FE AA 04            [ 1]  544 	or	a, #0x04
      008500 F7               [ 1]  545 	ld	(x), a
      008501 20 03            [ 2]  546 	jra	00104$
      008503                        547 00102$:
                                    548 ;	lib/src/stm8l15x_usart.c: 761: USARTx->CR5 &= ((uint8_t)~USART_CR5_IRLP);
      008503 A4 FB            [ 1]  549 	and	a, #0xfb
      008505 F7               [ 1]  550 	ld	(x), a
      008506                        551 00104$:
                                    552 ;	lib/src/stm8l15x_usart.c: 763: }
      008506 84               [ 1]  553 	pop	a
      008507 81               [ 4]  554 	ret
                                    555 ;	lib/src/stm8l15x_usart.c: 772: void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
                                    556 ;	-----------------------------------------
                                    557 ;	 function USART_IrDACmd
                                    558 ;	-----------------------------------------
      008508                        559 _USART_IrDACmd:
      008508 88               [ 1]  560 	push	a
      008509 6B 01            [ 1]  561 	ld	(0x01, sp), a
                                    562 ;	lib/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
      00850B 1C 00 08         [ 2]  563 	addw	x, #0x0008
      00850E F6               [ 1]  564 	ld	a, (x)
                                    565 ;	lib/src/stm8l15x_usart.c: 778: if (NewState != DISABLE)
      00850F 0D 01            [ 1]  566 	tnz	(0x01, sp)
      008511 27 05            [ 1]  567 	jreq	00102$
                                    568 ;	lib/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
      008513 AA 02            [ 1]  569 	or	a, #0x02
      008515 F7               [ 1]  570 	ld	(x), a
      008516 20 03            [ 2]  571 	jra	00104$
      008518                        572 00102$:
                                    573 ;	lib/src/stm8l15x_usart.c: 786: USARTx->CR5 &= ((uint8_t)~USART_CR5_IREN);
      008518 A4 FD            [ 1]  574 	and	a, #0xfd
      00851A F7               [ 1]  575 	ld	(x), a
      00851B                        576 00104$:
                                    577 ;	lib/src/stm8l15x_usart.c: 788: }
      00851B 84               [ 1]  578 	pop	a
      00851C 81               [ 4]  579 	ret
                                    580 ;	lib/src/stm8l15x_usart.c: 818: void USART_DMACmd(USART_TypeDef* USARTx, USART_DMAReq_TypeDef USART_DMAReq,
                                    581 ;	-----------------------------------------
                                    582 ;	 function USART_DMACmd
                                    583 ;	-----------------------------------------
      00851D                        584 _USART_DMACmd:
      00851D 88               [ 1]  585 	push	a
                                    586 ;	lib/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
      00851E 1C 00 08         [ 2]  587 	addw	x, #0x0008
      008521 88               [ 1]  588 	push	a
      008522 F6               [ 1]  589 	ld	a, (x)
      008523 6B 02            [ 1]  590 	ld	(0x02, sp), a
      008525 84               [ 1]  591 	pop	a
                                    592 ;	lib/src/stm8l15x_usart.c: 825: if (NewState != DISABLE)
      008526 0D 04            [ 1]  593 	tnz	(0x04, sp)
      008528 27 05            [ 1]  594 	jreq	00102$
                                    595 ;	lib/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
      00852A 1A 01            [ 1]  596 	or	a, (0x01, sp)
      00852C F7               [ 1]  597 	ld	(x), a
      00852D 20 04            [ 2]  598 	jra	00104$
      00852F                        599 00102$:
                                    600 ;	lib/src/stm8l15x_usart.c: 835: USARTx->CR5 &= (uint8_t)~USART_DMAReq;
      00852F 43               [ 1]  601 	cpl	a
      008530 14 01            [ 1]  602 	and	a, (0x01, sp)
      008532 F7               [ 1]  603 	ld	(x), a
      008533                        604 00104$:
                                    605 ;	lib/src/stm8l15x_usart.c: 837: }
      008533 84               [ 1]  606 	pop	a
      008534 85               [ 2]  607 	popw	x
      008535 84               [ 1]  608 	pop	a
      008536 FC               [ 2]  609 	jp	(x)
                                    610 ;	lib/src/stm8l15x_usart.c: 939: void USART_ITConfig(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT, FunctionalState NewState)
                                    611 ;	-----------------------------------------
                                    612 ;	 function USART_ITConfig
                                    613 ;	-----------------------------------------
      008537                        614 _USART_ITConfig:
      008537 52 09            [ 2]  615 	sub	sp, #9
      008539 1F 08            [ 2]  616 	ldw	(0x08, sp), x
                                    617 ;	lib/src/stm8l15x_usart.c: 946: usartreg = (uint8_t)((uint16_t)USART_IT >> 0x08);
      00853B 1E 0C            [ 2]  618 	ldw	x, (0x0c, sp)
                                    619 ;	lib/src/stm8l15x_usart.c: 948: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
      00853D 7B 0D            [ 1]  620 	ld	a, (0x0d, sp)
      00853F A4 0F            [ 1]  621 	and	a, #0x0f
      008541 88               [ 1]  622 	push	a
      008542 A6 01            [ 1]  623 	ld	a, #0x01
      008544 6B 08            [ 1]  624 	ld	(0x08, sp), a
      008546 84               [ 1]  625 	pop	a
      008547 4D               [ 1]  626 	tnz	a
      008548 27 05            [ 1]  627 	jreq	00144$
      00854A                        628 00143$:
      00854A 08 07            [ 1]  629 	sll	(0x07, sp)
      00854C 4A               [ 1]  630 	dec	a
      00854D 26 FB            [ 1]  631 	jrne	00143$
      00854F                        632 00144$:
                                    633 ;	lib/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
      00854F 9E               [ 1]  634 	ld	a, xh
      008550 4A               [ 1]  635 	dec	a
      008551 26 05            [ 1]  636 	jrne	00146$
      008553 A6 01            [ 1]  637 	ld	a, #0x01
      008555 6B 01            [ 1]  638 	ld	(0x01, sp), a
      008557 C5                     639 	.byte 0xc5
      008558                        640 00146$:
      008558 0F 01            [ 1]  641 	clr	(0x01, sp)
      00855A                        642 00147$:
                                    643 ;	lib/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
      00855A 16 08            [ 2]  644 	ldw	y, (0x08, sp)
      00855C 72 A9 00 04      [ 2]  645 	addw	y, #0x0004
      008560 17 02            [ 2]  646 	ldw	(0x02, sp), y
                                    647 ;	lib/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
      008562 9E               [ 1]  648 	ld	a, xh
      008563 A0 05            [ 1]  649 	sub	a, #0x05
      008565 26 04            [ 1]  650 	jrne	00149$
      008567 4C               [ 1]  651 	inc	a
      008568 6B 04            [ 1]  652 	ld	(0x04, sp), a
      00856A C5                     653 	.byte 0xc5
      00856B                        654 00149$:
      00856B 0F 04            [ 1]  655 	clr	(0x04, sp)
      00856D                        656 00150$:
                                    657 ;	lib/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
      00856D 1E 08            [ 2]  658 	ldw	x, (0x08, sp)
      00856F 1C 00 08         [ 2]  659 	addw	x, #0x0008
      008572 1F 05            [ 2]  660 	ldw	(0x05, sp), x
                                    661 ;	lib/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
      008574 1E 08            [ 2]  662 	ldw	x, (0x08, sp)
      008576 1C 00 05         [ 2]  663 	addw	x, #0x0005
                                    664 ;	lib/src/stm8l15x_usart.c: 950: if (NewState != DISABLE)
      008579 0D 0E            [ 1]  665 	tnz	(0x0e, sp)
      00857B 27 22            [ 1]  666 	jreq	00114$
                                    667 ;	lib/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
      00857D 0D 01            [ 1]  668 	tnz	(0x01, sp)
      00857F 27 0A            [ 1]  669 	jreq	00105$
                                    670 ;	lib/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
      008581 1E 02            [ 2]  671 	ldw	x, (0x02, sp)
      008583 F6               [ 1]  672 	ld	a, (x)
      008584 1A 07            [ 1]  673 	or	a, (0x07, sp)
      008586 1E 02            [ 2]  674 	ldw	x, (0x02, sp)
      008588 F7               [ 1]  675 	ld	(x), a
      008589 20 36            [ 2]  676 	jra	00116$
      00858B                        677 00105$:
                                    678 ;	lib/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
      00858B 0D 04            [ 1]  679 	tnz	(0x04, sp)
      00858D 27 0A            [ 1]  680 	jreq	00102$
                                    681 ;	lib/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
      00858F 1E 05            [ 2]  682 	ldw	x, (0x05, sp)
      008591 F6               [ 1]  683 	ld	a, (x)
      008592 1A 07            [ 1]  684 	or	a, (0x07, sp)
      008594 1E 05            [ 2]  685 	ldw	x, (0x05, sp)
      008596 F7               [ 1]  686 	ld	(x), a
      008597 20 28            [ 2]  687 	jra	00116$
      008599                        688 00102$:
                                    689 ;	lib/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
      008599 F6               [ 1]  690 	ld	a, (x)
      00859A 1A 07            [ 1]  691 	or	a, (0x07, sp)
      00859C F7               [ 1]  692 	ld	(x), a
      00859D 20 22            [ 2]  693 	jra	00116$
      00859F                        694 00114$:
                                    695 ;	lib/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
      00859F 03 07            [ 1]  696 	cpl	(0x07, sp)
                                    697 ;	lib/src/stm8l15x_usart.c: 970: if (usartreg == 0x01)
      0085A1 0D 01            [ 1]  698 	tnz	(0x01, sp)
      0085A3 27 0A            [ 1]  699 	jreq	00111$
                                    700 ;	lib/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
      0085A5 1E 02            [ 2]  701 	ldw	x, (0x02, sp)
      0085A7 F6               [ 1]  702 	ld	a, (x)
      0085A8 14 07            [ 1]  703 	and	a, (0x07, sp)
      0085AA 1E 02            [ 2]  704 	ldw	x, (0x02, sp)
      0085AC F7               [ 1]  705 	ld	(x), a
      0085AD 20 12            [ 2]  706 	jra	00116$
      0085AF                        707 00111$:
                                    708 ;	lib/src/stm8l15x_usart.c: 974: else if (usartreg == 0x05)
      0085AF 0D 04            [ 1]  709 	tnz	(0x04, sp)
      0085B1 27 0A            [ 1]  710 	jreq	00108$
                                    711 ;	lib/src/stm8l15x_usart.c: 976: USARTx->CR5 &= (uint8_t)(~itpos);
      0085B3 1E 05            [ 2]  712 	ldw	x, (0x05, sp)
      0085B5 F6               [ 1]  713 	ld	a, (x)
      0085B6 14 07            [ 1]  714 	and	a, (0x07, sp)
      0085B8 1E 05            [ 2]  715 	ldw	x, (0x05, sp)
      0085BA F7               [ 1]  716 	ld	(x), a
      0085BB 20 04            [ 2]  717 	jra	00116$
      0085BD                        718 00108$:
                                    719 ;	lib/src/stm8l15x_usart.c: 981: USARTx->CR2 &= (uint8_t)(~itpos);
      0085BD F6               [ 1]  720 	ld	a, (x)
      0085BE 14 07            [ 1]  721 	and	a, (0x07, sp)
      0085C0 F7               [ 1]  722 	ld	(x), a
      0085C1                        723 00116$:
                                    724 ;	lib/src/stm8l15x_usart.c: 984: }
      0085C1 1E 0A            [ 2]  725 	ldw	x, (10, sp)
      0085C3 5B 0E            [ 2]  726 	addw	sp, #14
      0085C5 FC               [ 2]  727 	jp	(x)
                                    728 ;	lib/src/stm8l15x_usart.c: 1002: FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
                                    729 ;	-----------------------------------------
                                    730 ;	 function USART_GetFlagStatus
                                    731 ;	-----------------------------------------
      0085C6                        732 _USART_GetFlagStatus:
      0085C6 88               [ 1]  733 	push	a
                                    734 ;	lib/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
      0085C7 16 04            [ 2]  735 	ldw	y, (0x04, sp)
                                    736 ;	lib/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      0085C9 7B 05            [ 1]  737 	ld	a, (0x05, sp)
      0085CB 6B 01            [ 1]  738 	ld	(0x01, sp), a
                                    739 ;	lib/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
      0085CD 90 A3 01 01      [ 2]  740 	cpw	y, #0x0101
      0085D1 26 0D            [ 1]  741 	jrne	00108$
                                    742 ;	lib/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      0085D3 E6 05            [ 1]  743 	ld	a, (0x5, x)
      0085D5 14 01            [ 1]  744 	and	a, (0x01, sp)
      0085D7 27 04            [ 1]  745 	jreq	00102$
                                    746 ;	lib/src/stm8l15x_usart.c: 1014: status = SET;
      0085D9 A6 01            [ 1]  747 	ld	a, #0x01
      0085DB 20 0C            [ 2]  748 	jra	00109$
      0085DD                        749 00102$:
                                    750 ;	lib/src/stm8l15x_usart.c: 1019: status = RESET;
      0085DD 4F               [ 1]  751 	clr	a
      0085DE 20 09            [ 2]  752 	jra	00109$
      0085E0                        753 00108$:
                                    754 ;	lib/src/stm8l15x_usart.c: 1024: if ((USARTx->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
      0085E0 F6               [ 1]  755 	ld	a, (x)
      0085E1 14 01            [ 1]  756 	and	a, (0x01, sp)
      0085E3 27 03            [ 1]  757 	jreq	00105$
                                    758 ;	lib/src/stm8l15x_usart.c: 1027: status = SET;
      0085E5 A6 01            [ 1]  759 	ld	a, #0x01
                                    760 ;	lib/src/stm8l15x_usart.c: 1032: status = RESET;
      0085E7 21                     761 	.byte 0x21
      0085E8                        762 00105$:
      0085E8 4F               [ 1]  763 	clr	a
      0085E9                        764 00109$:
                                    765 ;	lib/src/stm8l15x_usart.c: 1036: return status;
                                    766 ;	lib/src/stm8l15x_usart.c: 1037: }
      0085E9 1E 02            [ 2]  767 	ldw	x, (2, sp)
      0085EB 5B 05            [ 2]  768 	addw	sp, #5
      0085ED FC               [ 2]  769 	jp	(x)
                                    770 ;	lib/src/stm8l15x_usart.c: 1060: void USART_ClearFlag(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
                                    771 ;	-----------------------------------------
                                    772 ;	 function USART_ClearFlag
                                    773 ;	-----------------------------------------
      0085EE                        774 _USART_ClearFlag:
                                    775 ;	lib/src/stm8l15x_usart.c: 1065: USARTx->SR = (uint8_t)((uint16_t)~((uint16_t)USART_FLAG));
      0085EE 16 03            [ 2]  776 	ldw	y, (0x03, sp)
      0085F0 90 53            [ 2]  777 	cplw	y
      0085F2 90 9F            [ 1]  778 	ld	a, yl
      0085F4 F7               [ 1]  779 	ld	(x), a
                                    780 ;	lib/src/stm8l15x_usart.c: 1066: }
      0085F5 1E 01            [ 2]  781 	ldw	x, (1, sp)
      0085F7 5B 04            [ 2]  782 	addw	sp, #4
      0085F9 FC               [ 2]  783 	jp	(x)
                                    784 ;	lib/src/stm8l15x_usart.c: 1083: ITStatus USART_GetITStatus(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
                                    785 ;	-----------------------------------------
                                    786 ;	 function USART_GetITStatus
                                    787 ;	-----------------------------------------
      0085FA                        788 _USART_GetITStatus:
      0085FA 52 06            [ 2]  789 	sub	sp, #6
      0085FC 1F 05            [ 2]  790 	ldw	(0x05, sp), x
                                    791 ;	lib/src/stm8l15x_usart.c: 1096: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
      0085FE 7B 0A            [ 1]  792 	ld	a, (0x0a, sp)
      008600 97               [ 1]  793 	ld	xl, a
      008601 A4 0F            [ 1]  794 	and	a, #0x0f
      008603 88               [ 1]  795 	push	a
      008604 A6 01            [ 1]  796 	ld	a, #0x01
      008606 6B 05            [ 1]  797 	ld	(0x05, sp), a
      008608 84               [ 1]  798 	pop	a
      008609 4D               [ 1]  799 	tnz	a
      00860A 27 05            [ 1]  800 	jreq	00163$
      00860C                        801 00162$:
      00860C 08 04            [ 1]  802 	sll	(0x04, sp)
      00860E 4A               [ 1]  803 	dec	a
      00860F 26 FB            [ 1]  804 	jrne	00162$
      008611                        805 00163$:
                                    806 ;	lib/src/stm8l15x_usart.c: 1098: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
      008611 9F               [ 1]  807 	ld	a, xl
      008612 4E               [ 1]  808 	swap	a
      008613 A4 0F            [ 1]  809 	and	a, #0x0f
                                    810 ;	lib/src/stm8l15x_usart.c: 1100: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008615 88               [ 1]  811 	push	a
      008616 A6 01            [ 1]  812 	ld	a, #0x01
      008618 6B 02            [ 1]  813 	ld	(0x02, sp), a
      00861A 84               [ 1]  814 	pop	a
      00861B 4D               [ 1]  815 	tnz	a
      00861C 27 05            [ 1]  816 	jreq	00165$
      00861E                        817 00164$:
      00861E 08 01            [ 1]  818 	sll	(0x01, sp)
      008620 4A               [ 1]  819 	dec	a
      008621 26 FB            [ 1]  820 	jrne	00164$
      008623                        821 00165$:
                                    822 ;	lib/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
      008623 16 09            [ 2]  823 	ldw	y, (0x09, sp)
      008625 17 02            [ 2]  824 	ldw	(0x02, sp), y
                                    825 ;	lib/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008627 1E 05            [ 2]  826 	ldw	x, (0x05, sp)
      008629 F6               [ 1]  827 	ld	a, (x)
      00862A 14 04            [ 1]  828 	and	a, (0x04, sp)
      00862C 6B 04            [ 1]  829 	ld	(0x04, sp), a
                                    830 ;	lib/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
      00862E 1E 02            [ 2]  831 	ldw	x, (0x02, sp)
      008630 A3 01 00         [ 2]  832 	cpw	x, #0x0100
      008633 26 17            [ 1]  833 	jrne	00118$
                                    834 ;	lib/src/stm8l15x_usart.c: 1106: enablestatus = (uint8_t)((uint8_t)USARTx->CR1 & itmask2);
      008635 16 05            [ 2]  835 	ldw	y, (0x05, sp)
      008637 17 02            [ 2]  836 	ldw	(0x02, sp), y
      008639 93               [ 1]  837 	ldw	x, y
      00863A E6 04            [ 1]  838 	ld	a, (0x4, x)
      00863C 14 01            [ 1]  839 	and	a, (0x01, sp)
                                    840 ;	lib/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00863E 0D 04            [ 1]  841 	tnz	(0x04, sp)
      008640 27 07            [ 1]  842 	jreq	00102$
      008642 4D               [ 1]  843 	tnz	a
      008643 27 04            [ 1]  844 	jreq	00102$
                                    845 ;	lib/src/stm8l15x_usart.c: 1112: pendingbitstatus = SET;
      008645 A6 01            [ 1]  846 	ld	a, #0x01
      008647 20 35            [ 2]  847 	jra	00119$
      008649                        848 00102$:
                                    849 ;	lib/src/stm8l15x_usart.c: 1117: pendingbitstatus = RESET;
      008649 4F               [ 1]  850 	clr	a
      00864A 20 32            [ 2]  851 	jra	00119$
      00864C                        852 00118$:
                                    853 ;	lib/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
      00864C 1E 05            [ 2]  854 	ldw	x, (0x05, sp)
      00864E E6 05            [ 1]  855 	ld	a, (0x5, x)
      008650 14 01            [ 1]  856 	and	a, (0x01, sp)
                                    857 ;	lib/src/stm8l15x_usart.c: 1121: else if (USART_IT == USART_IT_OR)
      008652 1E 02            [ 2]  858 	ldw	x, (0x02, sp)
      008654 A3 02 35         [ 2]  859 	cpw	x, #0x0235
      008657 26 1A            [ 1]  860 	jrne	00115$
                                    861 ;	lib/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
      008659 6B 03            [ 1]  862 	ld	(0x03, sp), a
                                    863 ;	lib/src/stm8l15x_usart.c: 1127: temp = (uint8_t)(USARTx->CR5 & USART_CR5_EIE);
      00865B 1E 05            [ 2]  864 	ldw	x, (0x05, sp)
      00865D E6 08            [ 1]  865 	ld	a, (0x8, x)
      00865F A4 01            [ 1]  866 	and	a, #0x01
                                    867 ;	lib/src/stm8l15x_usart.c: 1129: if (( (USARTx->SR & itpos) != 0x00) && ((enablestatus || temp)))
      008661 0D 04            [ 1]  868 	tnz	(0x04, sp)
      008663 27 0B            [ 1]  869 	jreq	00106$
      008665 0D 03            [ 1]  870 	tnz	(0x03, sp)
      008667 26 03            [ 1]  871 	jrne	00105$
      008669 4D               [ 1]  872 	tnz	a
      00866A 27 04            [ 1]  873 	jreq	00106$
      00866C                        874 00105$:
                                    875 ;	lib/src/stm8l15x_usart.c: 1132: pendingbitstatus = SET;
      00866C A6 01            [ 1]  876 	ld	a, #0x01
      00866E 20 0E            [ 2]  877 	jra	00119$
      008670                        878 00106$:
                                    879 ;	lib/src/stm8l15x_usart.c: 1137: pendingbitstatus = RESET;
      008670 4F               [ 1]  880 	clr	a
      008671 20 0B            [ 2]  881 	jra	00119$
      008673                        882 00115$:
                                    883 ;	lib/src/stm8l15x_usart.c: 1144: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
                                    884 ;	lib/src/stm8l15x_usart.c: 1146: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008673 0D 04            [ 1]  885 	tnz	(0x04, sp)
      008675 27 06            [ 1]  886 	jreq	00111$
      008677 4D               [ 1]  887 	tnz	a
      008678 27 03            [ 1]  888 	jreq	00111$
                                    889 ;	lib/src/stm8l15x_usart.c: 1149: pendingbitstatus = SET;
      00867A A6 01            [ 1]  890 	ld	a, #0x01
                                    891 ;	lib/src/stm8l15x_usart.c: 1154: pendingbitstatus = RESET;
      00867C 21                     892 	.byte 0x21
      00867D                        893 00111$:
      00867D 4F               [ 1]  894 	clr	a
      00867E                        895 00119$:
                                    896 ;	lib/src/stm8l15x_usart.c: 1159: return  pendingbitstatus;
                                    897 ;	lib/src/stm8l15x_usart.c: 1160: }
      00867E 1E 07            [ 2]  898 	ldw	x, (7, sp)
      008680 5B 0A            [ 2]  899 	addw	sp, #10
      008682 FC               [ 2]  900 	jp	(x)
                                    901 ;	lib/src/stm8l15x_usart.c: 1183: void USART_ClearITPendingBit(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
                                    902 ;	-----------------------------------------
                                    903 ;	 function USART_ClearITPendingBit
                                    904 ;	-----------------------------------------
      008683                        905 _USART_ClearITPendingBit:
                                    906 ;	lib/src/stm8l15x_usart.c: 1188: USARTx->SR &= (uint8_t)(~USART_SR_TC);
      008683 F6               [ 1]  907 	ld	a, (x)
      008684 A4 BF            [ 1]  908 	and	a, #0xbf
      008686 F7               [ 1]  909 	ld	(x), a
                                    910 ;	lib/src/stm8l15x_usart.c: 1189: }
      008687 1E 01            [ 2]  911 	ldw	x, (1, sp)
      008689 5B 04            [ 2]  912 	addw	sp, #4
      00868B FC               [ 2]  913 	jp	(x)
                                    914 	.area CODE
                                    915 	.area CONST
                                    916 	.area INITIALIZER
                                    917 	.area CABS (ABS)
