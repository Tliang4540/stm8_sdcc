                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_ExternalPullUpConfig
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteBit
                                     16 	.globl _GPIO_SetBits
                                     17 	.globl _GPIO_ResetBits
                                     18 	.globl _GPIO_ToggleBits
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadOutputData
                                     21 	.globl _GPIO_ReadInputDataBit
                                     22 	.globl _GPIO_ReadOutputDataBit
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                                     60 ;	lib/src/stm8l15x_gpio.c: 96: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     61 ;	-----------------------------------------
                                     62 ;	 function GPIO_DeInit
                                     63 ;	-----------------------------------------
      009009                         64 _GPIO_DeInit:
                                     65 ;	lib/src/stm8l15x_gpio.c: 98: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      009009 90 93            [ 1]   66 	ldw	y, x
      00900B 6F 04            [ 1]   67 	clr	(0x0004, x)
                                     68 ;	lib/src/stm8l15x_gpio.c: 99: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00900D 90 7F            [ 1]   69 	clr	(y)
                                     70 ;	lib/src/stm8l15x_gpio.c: 100: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00900F 93               [ 1]   71 	ldw	x, y
      009010 5C               [ 1]   72 	incw	x
      009011 5C               [ 1]   73 	incw	x
      009012 7F               [ 1]   74 	clr	(x)
                                     75 ;	lib/src/stm8l15x_gpio.c: 101: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      009013 93               [ 1]   76 	ldw	x, y
      009014 6F 03            [ 1]   77 	clr	(0x0003, x)
                                     78 ;	lib/src/stm8l15x_gpio.c: 102: }
      009016 81               [ 4]   79 	ret
                                     80 ;	lib/src/stm8l15x_gpio.c: 133: void GPIO_Init(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     81 ;	-----------------------------------------
                                     82 ;	 function GPIO_Init
                                     83 ;	-----------------------------------------
      009017                         84 _GPIO_Init:
      009017 52 06            [ 2]   85 	sub	sp, #6
      009019 51               [ 1]   86 	exgw	x, y
      00901A 6B 06            [ 1]   87 	ld	(0x06, sp), a
                                     88 ;	lib/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00901C 93               [ 1]   89 	ldw	x, y
      00901D 1C 00 04         [ 2]   90 	addw	x, #0x0004
      009020 1F 01            [ 2]   91 	ldw	(0x01, sp), x
      009022 F6               [ 1]   92 	ld	a, (x)
      009023 88               [ 1]   93 	push	a
      009024 7B 07            [ 1]   94 	ld	a, (0x07, sp)
      009026 43               [ 1]   95 	cpl	a
      009027 6B 04            [ 1]   96 	ld	(0x04, sp), a
      009029 84               [ 1]   97 	pop	a
      00902A 14 03            [ 1]   98 	and	a, (0x03, sp)
      00902C 1E 01            [ 2]   99 	ldw	x, (0x01, sp)
      00902E F7               [ 1]  100 	ld	(x), a
                                    101 ;	lib/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
      00902F 93               [ 1]  102 	ldw	x, y
      009030 5C               [ 1]  103 	incw	x
      009031 5C               [ 1]  104 	incw	x
      009032 1F 04            [ 2]  105 	ldw	(0x04, sp), x
                                    106 ;	lib/src/stm8l15x_gpio.c: 149: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      009034 0D 09            [ 1]  107 	tnz	(0x09, sp)
      009036 2A 1E            [ 1]  108 	jrpl	00105$
                                    109 ;	lib/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
      009038 90 F6            [ 1]  110 	ld	a, (y)
                                    111 ;	lib/src/stm8l15x_gpio.c: 151: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00903A 88               [ 1]  112 	push	a
      00903B 7B 0A            [ 1]  113 	ld	a, (0x0a, sp)
      00903D A5 10            [ 1]  114 	bcp	a, #0x10
      00903F 84               [ 1]  115 	pop	a
      009040 27 06            [ 1]  116 	jreq	00102$
                                    117 ;	lib/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
      009042 1A 06            [ 1]  118 	or	a, (0x06, sp)
      009044 90 F7            [ 1]  119 	ld	(y), a
      009046 20 04            [ 2]  120 	jra	00103$
      009048                        121 00102$:
                                    122 ;	lib/src/stm8l15x_gpio.c: 156: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      009048 14 03            [ 1]  123 	and	a, (0x03, sp)
      00904A 90 F7            [ 1]  124 	ld	(y), a
      00904C                        125 00103$:
                                    126 ;	lib/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
      00904C 1E 04            [ 2]  127 	ldw	x, (0x04, sp)
      00904E F6               [ 1]  128 	ld	a, (x)
      00904F 1A 06            [ 1]  129 	or	a, (0x06, sp)
      009051 1E 04            [ 2]  130 	ldw	x, (0x04, sp)
      009053 F7               [ 1]  131 	ld	(x), a
      009054 20 08            [ 2]  132 	jra	00106$
      009056                        133 00105$:
                                    134 ;	lib/src/stm8l15x_gpio.c: 163: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      009056 1E 04            [ 2]  135 	ldw	x, (0x04, sp)
      009058 F6               [ 1]  136 	ld	a, (x)
      009059 14 03            [ 1]  137 	and	a, (0x03, sp)
      00905B 1E 04            [ 2]  138 	ldw	x, (0x04, sp)
      00905D F7               [ 1]  139 	ld	(x), a
      00905E                        140 00106$:
                                    141 ;	lib/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
      00905E 93               [ 1]  142 	ldw	x, y
      00905F 1C 00 03         [ 2]  143 	addw	x, #0x0003
      009062 F6               [ 1]  144 	ld	a, (x)
                                    145 ;	lib/src/stm8l15x_gpio.c: 170: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      009063 88               [ 1]  146 	push	a
      009064 7B 0A            [ 1]  147 	ld	a, (0x0a, sp)
      009066 A5 40            [ 1]  148 	bcp	a, #0x40
      009068 84               [ 1]  149 	pop	a
      009069 27 05            [ 1]  150 	jreq	00108$
                                    151 ;	lib/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
      00906B 1A 06            [ 1]  152 	or	a, (0x06, sp)
      00906D F7               [ 1]  153 	ld	(x), a
      00906E 20 03            [ 2]  154 	jra	00109$
      009070                        155 00108$:
                                    156 ;	lib/src/stm8l15x_gpio.c: 175: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      009070 14 03            [ 1]  157 	and	a, (0x03, sp)
      009072 F7               [ 1]  158 	ld	(x), a
      009073                        159 00109$:
                                    160 ;	lib/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      009073 1E 01            [ 2]  161 	ldw	x, (0x01, sp)
      009075 F6               [ 1]  162 	ld	a, (x)
                                    163 ;	lib/src/stm8l15x_gpio.c: 182: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      009076 88               [ 1]  164 	push	a
      009077 7B 0A            [ 1]  165 	ld	a, (0x0a, sp)
      009079 A5 20            [ 1]  166 	bcp	a, #0x20
      00907B 84               [ 1]  167 	pop	a
      00907C 27 07            [ 1]  168 	jreq	00111$
                                    169 ;	lib/src/stm8l15x_gpio.c: 184: GPIOx->CR2 |= GPIO_Pin;
      00907E 1A 06            [ 1]  170 	or	a, (0x06, sp)
      009080 1E 01            [ 2]  171 	ldw	x, (0x01, sp)
      009082 F7               [ 1]  172 	ld	(x), a
      009083 20 05            [ 2]  173 	jra	00113$
      009085                        174 00111$:
                                    175 ;	lib/src/stm8l15x_gpio.c: 187: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      009085 14 03            [ 1]  176 	and	a, (0x03, sp)
      009087 1E 01            [ 2]  177 	ldw	x, (0x01, sp)
      009089 F7               [ 1]  178 	ld	(x), a
      00908A                        179 00113$:
                                    180 ;	lib/src/stm8l15x_gpio.c: 190: }
      00908A 5B 06            [ 2]  181 	addw	sp, #6
      00908C 85               [ 2]  182 	popw	x
      00908D 84               [ 1]  183 	pop	a
      00908E FC               [ 2]  184 	jp	(x)
                                    185 ;	lib/src/stm8l15x_gpio.c: 209: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
                                    186 ;	-----------------------------------------
                                    187 ;	 function GPIO_ExternalPullUpConfig
                                    188 ;	-----------------------------------------
      00908F                        189 _GPIO_ExternalPullUpConfig:
      00908F 88               [ 1]  190 	push	a
                                    191 ;	lib/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
      009090 1C 00 03         [ 2]  192 	addw	x, #0x0003
      009093 88               [ 1]  193 	push	a
      009094 F6               [ 1]  194 	ld	a, (x)
      009095 6B 02            [ 1]  195 	ld	(0x02, sp), a
      009097 84               [ 1]  196 	pop	a
                                    197 ;	lib/src/stm8l15x_gpio.c: 215: if (NewState != DISABLE) /* External Pull-Up Set*/
      009098 0D 04            [ 1]  198 	tnz	(0x04, sp)
      00909A 27 05            [ 1]  199 	jreq	00102$
                                    200 ;	lib/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
      00909C 1A 01            [ 1]  201 	or	a, (0x01, sp)
      00909E F7               [ 1]  202 	ld	(x), a
      00909F 20 04            [ 2]  203 	jra	00104$
      0090A1                        204 00102$:
                                    205 ;	lib/src/stm8l15x_gpio.c: 220: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0090A1 43               [ 1]  206 	cpl	a
      0090A2 14 01            [ 1]  207 	and	a, (0x01, sp)
      0090A4 F7               [ 1]  208 	ld	(x), a
      0090A5                        209 00104$:
                                    210 ;	lib/src/stm8l15x_gpio.c: 222: }
      0090A5 84               [ 1]  211 	pop	a
      0090A6 85               [ 2]  212 	popw	x
      0090A7 84               [ 1]  213 	pop	a
      0090A8 FC               [ 2]  214 	jp	(x)
                                    215 ;	lib/src/stm8l15x_gpio.c: 248: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
                                    216 ;	-----------------------------------------
                                    217 ;	 function GPIO_Write
                                    218 ;	-----------------------------------------
      0090A9                        219 _GPIO_Write:
                                    220 ;	lib/src/stm8l15x_gpio.c: 250: GPIOx->ODR = GPIO_PortVal;
      0090A9 F7               [ 1]  221 	ld	(x), a
                                    222 ;	lib/src/stm8l15x_gpio.c: 251: }
      0090AA 81               [ 4]  223 	ret
                                    224 ;	lib/src/stm8l15x_gpio.c: 270: void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
                                    225 ;	-----------------------------------------
                                    226 ;	 function GPIO_WriteBit
                                    227 ;	-----------------------------------------
      0090AB                        228 _GPIO_WriteBit:
      0090AB 88               [ 1]  229 	push	a
                                    230 ;	lib/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
      0090AC 88               [ 1]  231 	push	a
      0090AD F6               [ 1]  232 	ld	a, (x)
      0090AE 6B 02            [ 1]  233 	ld	(0x02, sp), a
      0090B0 84               [ 1]  234 	pop	a
                                    235 ;	lib/src/stm8l15x_gpio.c: 276: if (GPIO_BitVal != RESET)
      0090B1 0D 04            [ 1]  236 	tnz	(0x04, sp)
      0090B3 27 05            [ 1]  237 	jreq	00102$
                                    238 ;	lib/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
      0090B5 1A 01            [ 1]  239 	or	a, (0x01, sp)
      0090B7 F7               [ 1]  240 	ld	(x), a
      0090B8 20 04            [ 2]  241 	jra	00104$
      0090BA                        242 00102$:
                                    243 ;	lib/src/stm8l15x_gpio.c: 283: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
      0090BA 43               [ 1]  244 	cpl	a
      0090BB 14 01            [ 1]  245 	and	a, (0x01, sp)
      0090BD F7               [ 1]  246 	ld	(x), a
      0090BE                        247 00104$:
                                    248 ;	lib/src/stm8l15x_gpio.c: 285: }
      0090BE 84               [ 1]  249 	pop	a
      0090BF 85               [ 2]  250 	popw	x
      0090C0 84               [ 1]  251 	pop	a
      0090C1 FC               [ 2]  252 	jp	(x)
                                    253 ;	lib/src/stm8l15x_gpio.c: 303: void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    254 ;	-----------------------------------------
                                    255 ;	 function GPIO_SetBits
                                    256 ;	-----------------------------------------
      0090C2                        257 _GPIO_SetBits:
      0090C2 88               [ 1]  258 	push	a
      0090C3 6B 01            [ 1]  259 	ld	(0x01, sp), a
                                    260 ;	lib/src/stm8l15x_gpio.c: 305: GPIOx->ODR |= GPIO_Pin;
      0090C5 F6               [ 1]  261 	ld	a, (x)
      0090C6 1A 01            [ 1]  262 	or	a, (0x01, sp)
      0090C8 F7               [ 1]  263 	ld	(x), a
                                    264 ;	lib/src/stm8l15x_gpio.c: 306: }
      0090C9 84               [ 1]  265 	pop	a
      0090CA 81               [ 4]  266 	ret
                                    267 ;	lib/src/stm8l15x_gpio.c: 324: void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    268 ;	-----------------------------------------
                                    269 ;	 function GPIO_ResetBits
                                    270 ;	-----------------------------------------
      0090CB                        271 _GPIO_ResetBits:
      0090CB 88               [ 1]  272 	push	a
                                    273 ;	lib/src/stm8l15x_gpio.c: 326: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
      0090CC 88               [ 1]  274 	push	a
      0090CD F6               [ 1]  275 	ld	a, (x)
      0090CE 6B 02            [ 1]  276 	ld	(0x02, sp), a
      0090D0 84               [ 1]  277 	pop	a
      0090D1 43               [ 1]  278 	cpl	a
      0090D2 14 01            [ 1]  279 	and	a, (0x01, sp)
      0090D4 F7               [ 1]  280 	ld	(x), a
                                    281 ;	lib/src/stm8l15x_gpio.c: 327: }
      0090D5 84               [ 1]  282 	pop	a
      0090D6 81               [ 4]  283 	ret
                                    284 ;	lib/src/stm8l15x_gpio.c: 336: void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
                                    285 ;	-----------------------------------------
                                    286 ;	 function GPIO_ToggleBits
                                    287 ;	-----------------------------------------
      0090D7                        288 _GPIO_ToggleBits:
      0090D7 88               [ 1]  289 	push	a
      0090D8 6B 01            [ 1]  290 	ld	(0x01, sp), a
                                    291 ;	lib/src/stm8l15x_gpio.c: 338: GPIOx->ODR ^= GPIO_Pin;
      0090DA F6               [ 1]  292 	ld	a, (x)
      0090DB 18 01            [ 1]  293 	xor	a, (0x01, sp)
      0090DD F7               [ 1]  294 	ld	(x), a
                                    295 ;	lib/src/stm8l15x_gpio.c: 339: }
      0090DE 84               [ 1]  296 	pop	a
      0090DF 81               [ 4]  297 	ret
                                    298 ;	lib/src/stm8l15x_gpio.c: 347: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    299 ;	-----------------------------------------
                                    300 ;	 function GPIO_ReadInputData
                                    301 ;	-----------------------------------------
      0090E0                        302 _GPIO_ReadInputData:
                                    303 ;	lib/src/stm8l15x_gpio.c: 349: return ((uint8_t)GPIOx->IDR);
      0090E0 E6 01            [ 1]  304 	ld	a, (0x1, x)
                                    305 ;	lib/src/stm8l15x_gpio.c: 350: }
      0090E2 81               [ 4]  306 	ret
                                    307 ;	lib/src/stm8l15x_gpio.c: 358: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    308 ;	-----------------------------------------
                                    309 ;	 function GPIO_ReadOutputData
                                    310 ;	-----------------------------------------
      0090E3                        311 _GPIO_ReadOutputData:
                                    312 ;	lib/src/stm8l15x_gpio.c: 360: return ((uint8_t)GPIOx->ODR);
      0090E3 F6               [ 1]  313 	ld	a, (x)
                                    314 ;	lib/src/stm8l15x_gpio.c: 361: }
      0090E4 81               [ 4]  315 	ret
                                    316 ;	lib/src/stm8l15x_gpio.c: 378: BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    317 ;	-----------------------------------------
                                    318 ;	 function GPIO_ReadInputDataBit
                                    319 ;	-----------------------------------------
      0090E5                        320 _GPIO_ReadInputDataBit:
      0090E5 88               [ 1]  321 	push	a
      0090E6 6B 01            [ 1]  322 	ld	(0x01, sp), a
                                    323 ;	lib/src/stm8l15x_gpio.c: 380: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      0090E8 E6 01            [ 1]  324 	ld	a, (0x1, x)
      0090EA 14 01            [ 1]  325 	and	a, (0x01, sp)
                                    326 ;	lib/src/stm8l15x_gpio.c: 381: }
      0090EC 5B 01            [ 2]  327 	addw	sp, #1
      0090EE 81               [ 4]  328 	ret
                                    329 ;	lib/src/stm8l15x_gpio.c: 389: BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    330 ;	-----------------------------------------
                                    331 ;	 function GPIO_ReadOutputDataBit
                                    332 ;	-----------------------------------------
      0090EF                        333 _GPIO_ReadOutputDataBit:
      0090EF 88               [ 1]  334 	push	a
      0090F0 6B 01            [ 1]  335 	ld	(0x01, sp), a
                                    336 ;	lib/src/stm8l15x_gpio.c: 391: return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
      0090F2 F6               [ 1]  337 	ld	a, (x)
      0090F3 14 01            [ 1]  338 	and	a, (0x01, sp)
                                    339 ;	lib/src/stm8l15x_gpio.c: 392: }
      0090F5 5B 01            [ 2]  340 	addw	sp, #1
      0090F7 81               [ 4]  341 	ret
                                    342 	.area CODE
                                    343 	.area CONST
                                    344 	.area INITIALIZER
                                    345 	.area CABS (ABS)
