                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SYSDivFactor
                                     12 	.globl _CLK_DeInit
                                     13 	.globl _CLK_HSICmd
                                     14 	.globl _CLK_AdjustHSICalibrationValue
                                     15 	.globl _CLK_LSICmd
                                     16 	.globl _CLK_HSEConfig
                                     17 	.globl _CLK_LSEConfig
                                     18 	.globl _CLK_ClockSecuritySystemEnable
                                     19 	.globl _CLK_ClockSecuritySytemDeglitchCmd
                                     20 	.globl _CLK_CCOConfig
                                     21 	.globl _CLK_SYSCLKSourceConfig
                                     22 	.globl _CLK_GetSYSCLKSource
                                     23 	.globl _CLK_GetClockFreq
                                     24 	.globl _CLK_SYSCLKDivConfig
                                     25 	.globl _CLK_SYSCLKSourceSwitchCmd
                                     26 	.globl _CLK_RTCClockConfig
                                     27 	.globl _CLK_BEEPClockConfig
                                     28 	.globl _CLK_PeripheralClockConfig
                                     29 	.globl _CLK_LSEClockSecuritySystemEnable
                                     30 	.globl _CLK_RTCCLKSwitchOnLSEFailureEnable
                                     31 	.globl _CLK_HaltConfig
                                     32 	.globl _CLK_MainRegulatorCmd
                                     33 	.globl _CLK_ITConfig
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_ClearFlag
                                     36 	.globl _CLK_GetITStatus
                                     37 	.globl _CLK_ClearITPendingBit
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area INITIALIZED
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                                     75 ;	lib/src/stm8l15x_clk.c: 120: void CLK_DeInit(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function CLK_DeInit
                                     78 ;	-----------------------------------------
      0090F8                         79 _CLK_DeInit:
                                     80 ;	lib/src/stm8l15x_clk.c: 122: CLK->ICKCR = CLK_ICKCR_RESET_VALUE;
      0090F8 35 11 50 C2      [ 1]   81 	mov	0x50c2+0, #0x11
                                     82 ;	lib/src/stm8l15x_clk.c: 123: CLK->ECKCR = CLK_ECKCR_RESET_VALUE;
      0090FC 35 00 50 C6      [ 1]   83 	mov	0x50c6+0, #0x00
                                     84 ;	lib/src/stm8l15x_clk.c: 124: CLK->CRTCR = CLK_CRTCR_RESET_VALUE;
      009100 35 00 50 C1      [ 1]   85 	mov	0x50c1+0, #0x00
                                     86 ;	lib/src/stm8l15x_clk.c: 125: CLK->CBEEPR = CLK_CBEEPR_RESET_VALUE;
      009104 35 00 50 CB      [ 1]   87 	mov	0x50cb+0, #0x00
                                     88 ;	lib/src/stm8l15x_clk.c: 126: CLK->SWR  = CLK_SWR_RESET_VALUE;
      009108 35 01 50 C8      [ 1]   89 	mov	0x50c8+0, #0x01
                                     90 ;	lib/src/stm8l15x_clk.c: 127: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00910C 35 00 50 C9      [ 1]   91 	mov	0x50c9+0, #0x00
                                     92 ;	lib/src/stm8l15x_clk.c: 128: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      009110 35 03 50 C0      [ 1]   93 	mov	0x50c0+0, #0x03
                                     94 ;	lib/src/stm8l15x_clk.c: 129: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      009114 35 00 50 C3      [ 1]   95 	mov	0x50c3+0, #0x00
                                     96 ;	lib/src/stm8l15x_clk.c: 130: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      009118 35 80 50 C4      [ 1]   97 	mov	0x50c4+0, #0x80
                                     98 ;	lib/src/stm8l15x_clk.c: 131: CLK->PCKENR3 = CLK_PCKENR3_RESET_VALUE;
      00911C 35 00 50 D0      [ 1]   99 	mov	0x50d0+0, #0x00
                                    100 ;	lib/src/stm8l15x_clk.c: 132: CLK->CSSR  = CLK_CSSR_RESET_VALUE;
      009120 35 00 50 CA      [ 1]  101 	mov	0x50ca+0, #0x00
                                    102 ;	lib/src/stm8l15x_clk.c: 133: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      009124 35 00 50 C5      [ 1]  103 	mov	0x50c5+0, #0x00
                                    104 ;	lib/src/stm8l15x_clk.c: 134: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      009128 35 00 50 CD      [ 1]  105 	mov	0x50cd+0, #0x00
                                    106 ;	lib/src/stm8l15x_clk.c: 135: CLK->HSICALR = CLK_HSICALR_RESET_VALUE;
      00912C 35 00 50 CC      [ 1]  107 	mov	0x50cc+0, #0x00
                                    108 ;	lib/src/stm8l15x_clk.c: 136: CLK->HSIUNLCKR = CLK_HSIUNLCKR_RESET_VALUE;
      009130 35 00 50 CE      [ 1]  109 	mov	0x50ce+0, #0x00
                                    110 ;	lib/src/stm8l15x_clk.c: 137: CLK->REGCSR = CLK_REGCSR_RESET_VALUE;
      009134 35 B9 50 CF      [ 1]  111 	mov	0x50cf+0, #0xb9
                                    112 ;	lib/src/stm8l15x_clk.c: 138: }
      009138 81               [ 4]  113 	ret
                                    114 ;	lib/src/stm8l15x_clk.c: 160: void CLK_HSICmd(FunctionalState NewState)
                                    115 ;	-----------------------------------------
                                    116 ;	 function CLK_HSICmd
                                    117 ;	-----------------------------------------
      009139                        118 _CLK_HSICmd:
      009139 88               [ 1]  119 	push	a
      00913A 6B 01            [ 1]  120 	ld	(0x01, sp), a
                                    121 ;	lib/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
      00913C C6 50 C2         [ 1]  122 	ld	a, 0x50c2
                                    123 ;	lib/src/stm8l15x_clk.c: 165: if (NewState != DISABLE)
      00913F 0D 01            [ 1]  124 	tnz	(0x01, sp)
      009141 27 07            [ 1]  125 	jreq	00102$
                                    126 ;	lib/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
      009143 AA 01            [ 1]  127 	or	a, #0x01
      009145 C7 50 C2         [ 1]  128 	ld	0x50c2, a
      009148 20 05            [ 2]  129 	jra	00104$
      00914A                        130 00102$:
                                    131 ;	lib/src/stm8l15x_clk.c: 173: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_HSION);
      00914A A4 FE            [ 1]  132 	and	a, #0xfe
      00914C C7 50 C2         [ 1]  133 	ld	0x50c2, a
      00914F                        134 00104$:
                                    135 ;	lib/src/stm8l15x_clk.c: 175: }
      00914F 84               [ 1]  136 	pop	a
      009150 81               [ 4]  137 	ret
                                    138 ;	lib/src/stm8l15x_clk.c: 188: void CLK_AdjustHSICalibrationValue(uint8_t CLK_HSICalibrationValue)
                                    139 ;	-----------------------------------------
                                    140 ;	 function CLK_AdjustHSICalibrationValue
                                    141 ;	-----------------------------------------
      009151                        142 _CLK_AdjustHSICalibrationValue:
                                    143 ;	lib/src/stm8l15x_clk.c: 191: CLK->HSIUNLCKR = 0xAC;
      009151 35 AC 50 CE      [ 1]  144 	mov	0x50ce+0, #0xac
                                    145 ;	lib/src/stm8l15x_clk.c: 192: CLK->HSIUNLCKR = 0x35;
      009155 35 35 50 CE      [ 1]  146 	mov	0x50ce+0, #0x35
                                    147 ;	lib/src/stm8l15x_clk.c: 195: CLK->HSITRIMR = (uint8_t)CLK_HSICalibrationValue;
      009159 C7 50 CD         [ 1]  148 	ld	0x50cd, a
                                    149 ;	lib/src/stm8l15x_clk.c: 196: }
      00915C 81               [ 4]  150 	ret
                                    151 ;	lib/src/stm8l15x_clk.c: 212: void CLK_LSICmd(FunctionalState NewState)
                                    152 ;	-----------------------------------------
                                    153 ;	 function CLK_LSICmd
                                    154 ;	-----------------------------------------
      00915D                        155 _CLK_LSICmd:
      00915D 88               [ 1]  156 	push	a
      00915E 6B 01            [ 1]  157 	ld	(0x01, sp), a
                                    158 ;	lib/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
      009160 C6 50 C2         [ 1]  159 	ld	a, 0x50c2
                                    160 ;	lib/src/stm8l15x_clk.c: 218: if (NewState != DISABLE)
      009163 0D 01            [ 1]  161 	tnz	(0x01, sp)
      009165 27 07            [ 1]  162 	jreq	00102$
                                    163 ;	lib/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
      009167 AA 04            [ 1]  164 	or	a, #0x04
      009169 C7 50 C2         [ 1]  165 	ld	0x50c2, a
      00916C 20 05            [ 2]  166 	jra	00104$
      00916E                        167 00102$:
                                    168 ;	lib/src/stm8l15x_clk.c: 226: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_LSION);
      00916E A4 FB            [ 1]  169 	and	a, #0xfb
      009170 C7 50 C2         [ 1]  170 	ld	0x50c2, a
      009173                        171 00104$:
                                    172 ;	lib/src/stm8l15x_clk.c: 228: }
      009173 84               [ 1]  173 	pop	a
      009174 81               [ 4]  174 	ret
                                    175 ;	lib/src/stm8l15x_clk.c: 249: void CLK_HSEConfig(CLK_HSE_TypeDef CLK_HSE)
                                    176 ;	-----------------------------------------
                                    177 ;	 function CLK_HSEConfig
                                    178 ;	-----------------------------------------
      009175                        179 _CLK_HSEConfig:
      009175 88               [ 1]  180 	push	a
      009176 6B 01            [ 1]  181 	ld	(0x01, sp), a
                                    182 ;	lib/src/stm8l15x_clk.c: 256: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEON;
      009178 72 11 50 C6      [ 1]  183 	bres	0x50c6, #0
                                    184 ;	lib/src/stm8l15x_clk.c: 259: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEBYP;
      00917C 72 19 50 C6      [ 1]  185 	bres	0x50c6, #4
                                    186 ;	lib/src/stm8l15x_clk.c: 262: CLK->ECKCR |= (uint8_t)CLK_HSE;
      009180 C6 50 C6         [ 1]  187 	ld	a, 0x50c6
      009183 1A 01            [ 1]  188 	or	a, (0x01, sp)
      009185 C7 50 C6         [ 1]  189 	ld	0x50c6, a
                                    190 ;	lib/src/stm8l15x_clk.c: 263: }
      009188 84               [ 1]  191 	pop	a
      009189 81               [ 4]  192 	ret
                                    193 ;	lib/src/stm8l15x_clk.c: 280: void CLK_LSEConfig(CLK_LSE_TypeDef CLK_LSE)
                                    194 ;	-----------------------------------------
                                    195 ;	 function CLK_LSEConfig
                                    196 ;	-----------------------------------------
      00918A                        197 _CLK_LSEConfig:
      00918A 88               [ 1]  198 	push	a
      00918B 6B 01            [ 1]  199 	ld	(0x01, sp), a
                                    200 ;	lib/src/stm8l15x_clk.c: 287: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEON;
      00918D 72 15 50 C6      [ 1]  201 	bres	0x50c6, #2
                                    202 ;	lib/src/stm8l15x_clk.c: 290: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEBYP;
      009191 72 1B 50 C6      [ 1]  203 	bres	0x50c6, #5
                                    204 ;	lib/src/stm8l15x_clk.c: 293: CLK->ECKCR |= (uint8_t)CLK_LSE;
      009195 C6 50 C6         [ 1]  205 	ld	a, 0x50c6
      009198 1A 01            [ 1]  206 	or	a, (0x01, sp)
      00919A C7 50 C6         [ 1]  207 	ld	0x50c6, a
                                    208 ;	lib/src/stm8l15x_clk.c: 295: }
      00919D 84               [ 1]  209 	pop	a
      00919E 81               [ 4]  210 	ret
                                    211 ;	lib/src/stm8l15x_clk.c: 306: void CLK_ClockSecuritySystemEnable(void)
                                    212 ;	-----------------------------------------
                                    213 ;	 function CLK_ClockSecuritySystemEnable
                                    214 ;	-----------------------------------------
      00919F                        215 _CLK_ClockSecuritySystemEnable:
                                    216 ;	lib/src/stm8l15x_clk.c: 309: CLK->CSSR |= CLK_CSSR_CSSEN;
      00919F 72 10 50 CA      [ 1]  217 	bset	0x50ca, #0
                                    218 ;	lib/src/stm8l15x_clk.c: 310: }
      0091A3 81               [ 4]  219 	ret
                                    220 ;	lib/src/stm8l15x_clk.c: 317: void CLK_ClockSecuritySytemDeglitchCmd(FunctionalState NewState)
                                    221 ;	-----------------------------------------
                                    222 ;	 function CLK_ClockSecuritySytemDeglitchCmd
                                    223 ;	-----------------------------------------
      0091A4                        224 _CLK_ClockSecuritySytemDeglitchCmd:
      0091A4 88               [ 1]  225 	push	a
      0091A5 6B 01            [ 1]  226 	ld	(0x01, sp), a
                                    227 ;	lib/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
      0091A7 C6 50 CA         [ 1]  228 	ld	a, 0x50ca
                                    229 ;	lib/src/stm8l15x_clk.c: 322: if (NewState != DISABLE)
      0091AA 0D 01            [ 1]  230 	tnz	(0x01, sp)
      0091AC 27 07            [ 1]  231 	jreq	00102$
                                    232 ;	lib/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
      0091AE AA 10            [ 1]  233 	or	a, #0x10
      0091B0 C7 50 CA         [ 1]  234 	ld	0x50ca, a
      0091B3 20 05            [ 2]  235 	jra	00104$
      0091B5                        236 00102$:
                                    237 ;	lib/src/stm8l15x_clk.c: 330: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDGON);
      0091B5 A4 EF            [ 1]  238 	and	a, #0xef
      0091B7 C7 50 CA         [ 1]  239 	ld	0x50ca, a
      0091BA                        240 00104$:
                                    241 ;	lib/src/stm8l15x_clk.c: 332: }
      0091BA 84               [ 1]  242 	pop	a
      0091BB 81               [ 4]  243 	ret
                                    244 ;	lib/src/stm8l15x_clk.c: 356: void CLK_CCOConfig(CLK_CCOSource_TypeDef CLK_CCOSource, CLK_CCODiv_TypeDef CLK_CCODiv)
                                    245 ;	-----------------------------------------
                                    246 ;	 function CLK_CCOConfig
                                    247 ;	-----------------------------------------
      0091BC                        248 _CLK_CCOConfig:
                                    249 ;	lib/src/stm8l15x_clk.c: 363: CLK->CCOR = (uint8_t)((uint8_t)CLK_CCOSource | (uint8_t)CLK_CCODiv);
      0091BC 1A 03            [ 1]  250 	or	a, (0x03, sp)
      0091BE C7 50 C5         [ 1]  251 	ld	0x50c5, a
                                    252 ;	lib/src/stm8l15x_clk.c: 364: }
      0091C1 85               [ 2]  253 	popw	x
      0091C2 84               [ 1]  254 	pop	a
      0091C3 FC               [ 2]  255 	jp	(x)
                                    256 ;	lib/src/stm8l15x_clk.c: 416: void CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_TypeDef CLK_SYSCLKSource)
                                    257 ;	-----------------------------------------
                                    258 ;	 function CLK_SYSCLKSourceConfig
                                    259 ;	-----------------------------------------
      0091C4                        260 _CLK_SYSCLKSourceConfig:
                                    261 ;	lib/src/stm8l15x_clk.c: 422: CLK->SWR = (uint8_t)CLK_SYSCLKSource;
      0091C4 C7 50 C8         [ 1]  262 	ld	0x50c8, a
                                    263 ;	lib/src/stm8l15x_clk.c: 423: }
      0091C7 81               [ 4]  264 	ret
                                    265 ;	lib/src/stm8l15x_clk.c: 435: CLK_SYSCLKSource_TypeDef CLK_GetSYSCLKSource(void)
                                    266 ;	-----------------------------------------
                                    267 ;	 function CLK_GetSYSCLKSource
                                    268 ;	-----------------------------------------
      0091C8                        269 _CLK_GetSYSCLKSource:
                                    270 ;	lib/src/stm8l15x_clk.c: 437: return ((CLK_SYSCLKSource_TypeDef)(CLK->SCSR));
      0091C8 C6 50 C7         [ 1]  271 	ld	a, 0x50c7
                                    272 ;	lib/src/stm8l15x_clk.c: 438: }
      0091CB 81               [ 4]  273 	ret
                                    274 ;	lib/src/stm8l15x_clk.c: 478: uint32_t CLK_GetClockFreq(void)
                                    275 ;	-----------------------------------------
                                    276 ;	 function CLK_GetClockFreq
                                    277 ;	-----------------------------------------
      0091CC                        278 _CLK_GetClockFreq:
      0091CC 52 04            [ 2]  279 	sub	sp, #4
                                    280 ;	lib/src/stm8l15x_clk.c: 481: uint32_t sourcefrequency = 0;
      0091CE 5F               [ 1]  281 	clrw	x
      0091CF 1F 03            [ 2]  282 	ldw	(0x03, sp), x
      0091D1 1F 01            [ 2]  283 	ldw	(0x01, sp), x
                                    284 ;	lib/src/stm8l15x_clk.c: 486: clocksource = (CLK_SYSCLKSource_TypeDef)CLK->SCSR;
      0091D3 C6 50 C7         [ 1]  285 	ld	a, 0x50c7
                                    286 ;	lib/src/stm8l15x_clk.c: 488: if ( clocksource == CLK_SYSCLKSource_HSI)
      0091D6 A1 01            [ 1]  287 	cp	a, #0x01
      0091D8 26 0C            [ 1]  288 	jrne	00108$
                                    289 ;	lib/src/stm8l15x_clk.c: 490: sourcefrequency = HSI_VALUE;
      0091DA AE 24 00         [ 2]  290 	ldw	x, #0x2400
      0091DD 1F 03            [ 2]  291 	ldw	(0x03, sp), x
      0091DF AE 00 F4         [ 2]  292 	ldw	x, #0x00f4
      0091E2 1F 01            [ 2]  293 	ldw	(0x01, sp), x
      0091E4 20 1C            [ 2]  294 	jra	00109$
      0091E6                        295 00108$:
                                    296 ;	lib/src/stm8l15x_clk.c: 492: else if ( clocksource == CLK_SYSCLKSource_LSI)
      0091E6 A1 02            [ 1]  297 	cp	a, #0x02
      0091E8 26 0A            [ 1]  298 	jrne	00105$
                                    299 ;	lib/src/stm8l15x_clk.c: 494: sourcefrequency = LSI_VALUE;
      0091EA AE 94 70         [ 2]  300 	ldw	x, #0x9470
      0091ED 1F 03            [ 2]  301 	ldw	(0x03, sp), x
      0091EF 5F               [ 1]  302 	clrw	x
      0091F0 1F 01            [ 2]  303 	ldw	(0x01, sp), x
      0091F2 20 0E            [ 2]  304 	jra	00109$
      0091F4                        305 00105$:
                                    306 ;	lib/src/stm8l15x_clk.c: 496: else if ( clocksource == CLK_SYSCLKSource_HSE)
      0091F4 A1 04            [ 1]  307 	cp	a, #0x04
      0091F6 26 0A            [ 1]  308 	jrne	00109$
                                    309 ;	lib/src/stm8l15x_clk.c: 498: sourcefrequency = HSE_VALUE;
      0091F8 AE 24 00         [ 2]  310 	ldw	x, #0x2400
      0091FB 1F 03            [ 2]  311 	ldw	(0x03, sp), x
      0091FD AE 00 F4         [ 2]  312 	ldw	x, #0x00f4
      009200 1F 01            [ 2]  313 	ldw	(0x01, sp), x
                                    314 ;	lib/src/stm8l15x_clk.c: 502: clockfrequency = LSE_VALUE;
      009202                        315 00109$:
                                    316 ;	lib/src/stm8l15x_clk.c: 506: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_CKM);
      009202 C6 50 C0         [ 1]  317 	ld	a, 0x50c0
      009205 A4 07            [ 1]  318 	and	a, #0x07
                                    319 ;	lib/src/stm8l15x_clk.c: 507: presc = SYSDivFactor[tmp];
      009207 5F               [ 1]  320 	clrw	x
      009208 97               [ 1]  321 	ld	xl, a
      009209 D6 82 3C         [ 1]  322 	ld	a, (_SYSDivFactor+0, x)
                                    323 ;	lib/src/stm8l15x_clk.c: 510: clockfrequency = sourcefrequency / presc;
      00920C 5F               [ 1]  324 	clrw	x
      00920D 97               [ 1]  325 	ld	xl, a
      00920E 90 5F            [ 1]  326 	clrw	y
      009210 89               [ 2]  327 	pushw	x
      009211 90 89            [ 2]  328 	pushw	y
      009213 1E 07            [ 2]  329 	ldw	x, (0x07, sp)
      009215 89               [ 2]  330 	pushw	x
      009216 1E 07            [ 2]  331 	ldw	x, (0x07, sp)
      009218 89               [ 2]  332 	pushw	x
      009219 CD 94 30         [ 4]  333 	call	__divulong
                                    334 ;	lib/src/stm8l15x_clk.c: 512: return((uint32_t)clockfrequency);
                                    335 ;	lib/src/stm8l15x_clk.c: 513: }
      00921C 5B 0C            [ 2]  336 	addw	sp, #12
      00921E 81               [ 4]  337 	ret
                                    338 ;	lib/src/stm8l15x_clk.c: 528: void CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_TypeDef CLK_SYSCLKDiv)
                                    339 ;	-----------------------------------------
                                    340 ;	 function CLK_SYSCLKDivConfig
                                    341 ;	-----------------------------------------
      00921F                        342 _CLK_SYSCLKDivConfig:
                                    343 ;	lib/src/stm8l15x_clk.c: 533: CLK->CKDIVR = (uint8_t)(CLK_SYSCLKDiv);
      00921F C7 50 C0         [ 1]  344 	ld	0x50c0, a
                                    345 ;	lib/src/stm8l15x_clk.c: 534: }
      009222 81               [ 4]  346 	ret
                                    347 ;	lib/src/stm8l15x_clk.c: 541: void CLK_SYSCLKSourceSwitchCmd(FunctionalState NewState)
                                    348 ;	-----------------------------------------
                                    349 ;	 function CLK_SYSCLKSourceSwitchCmd
                                    350 ;	-----------------------------------------
      009223                        351 _CLK_SYSCLKSourceSwitchCmd:
      009223 88               [ 1]  352 	push	a
      009224 6B 01            [ 1]  353 	ld	(0x01, sp), a
                                    354 ;	lib/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
      009226 C6 50 C9         [ 1]  355 	ld	a, 0x50c9
                                    356 ;	lib/src/stm8l15x_clk.c: 546: if (NewState != DISABLE)
      009229 0D 01            [ 1]  357 	tnz	(0x01, sp)
      00922B 27 07            [ 1]  358 	jreq	00102$
                                    359 ;	lib/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
      00922D AA 02            [ 1]  360 	or	a, #0x02
      00922F C7 50 C9         [ 1]  361 	ld	0x50c9, a
      009232 20 05            [ 2]  362 	jra	00104$
      009234                        363 00102$:
                                    364 ;	lib/src/stm8l15x_clk.c: 554: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      009234 A4 FD            [ 1]  365 	and	a, #0xfd
      009236 C7 50 C9         [ 1]  366 	ld	0x50c9, a
      009239                        367 00104$:
                                    368 ;	lib/src/stm8l15x_clk.c: 556: }
      009239 84               [ 1]  369 	pop	a
      00923A 81               [ 4]  370 	ret
                                    371 ;	lib/src/stm8l15x_clk.c: 616: void CLK_RTCClockConfig(CLK_RTCCLKSource_TypeDef CLK_RTCCLKSource, CLK_RTCCLKDiv_TypeDef CLK_RTCCLKDiv)
                                    372 ;	-----------------------------------------
                                    373 ;	 function CLK_RTCClockConfig
                                    374 ;	-----------------------------------------
      00923B                        375 _CLK_RTCClockConfig:
                                    376 ;	lib/src/stm8l15x_clk.c: 623: CLK->CRTCR = (uint8_t)((uint8_t)CLK_RTCCLKSource | (uint8_t)CLK_RTCCLKDiv);
      00923B 1A 03            [ 1]  377 	or	a, (0x03, sp)
      00923D C7 50 C1         [ 1]  378 	ld	0x50c1, a
                                    379 ;	lib/src/stm8l15x_clk.c: 624: }
      009240 85               [ 2]  380 	popw	x
      009241 84               [ 1]  381 	pop	a
      009242 FC               [ 2]  382 	jp	(x)
                                    383 ;	lib/src/stm8l15x_clk.c: 635: void CLK_BEEPClockConfig(CLK_BEEPCLKSource_TypeDef CLK_BEEPCLKSource)
                                    384 ;	-----------------------------------------
                                    385 ;	 function CLK_BEEPClockConfig
                                    386 ;	-----------------------------------------
      009243                        387 _CLK_BEEPClockConfig:
                                    388 ;	lib/src/stm8l15x_clk.c: 641: CLK->CBEEPR = (uint8_t)(CLK_BEEPCLKSource);
      009243 C7 50 CB         [ 1]  389 	ld	0x50cb, a
                                    390 ;	lib/src/stm8l15x_clk.c: 643: }
      009246 81               [ 4]  391 	ret
                                    392 ;	lib/src/stm8l15x_clk.c: 677: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    393 ;	-----------------------------------------
                                    394 ;	 function CLK_PeripheralClockConfig
                                    395 ;	-----------------------------------------
      009247                        396 _CLK_PeripheralClockConfig:
      009247 52 02            [ 2]  397 	sub	sp, #2
                                    398 ;	lib/src/stm8l15x_clk.c: 686: reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);
      009249 88               [ 1]  399 	push	a
      00924A A4 F0            [ 1]  400 	and	a, #0xf0
      00924C 97               [ 1]  401 	ld	xl, a
      00924D 84               [ 1]  402 	pop	a
      00924E 90 93            [ 1]  403 	ldw	y, x
                                    404 ;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009250 A4 0F            [ 1]  405 	and	a, #0x0f
      009252 88               [ 1]  406 	push	a
      009253 A6 01            [ 1]  407 	ld	a, #0x01
      009255 6B 02            [ 1]  408 	ld	(0x02, sp), a
      009257 84               [ 1]  409 	pop	a
      009258 4D               [ 1]  410 	tnz	a
      009259 27 05            [ 1]  411 	jreq	00144$
      00925B                        412 00143$:
      00925B 08 01            [ 1]  413 	sll	(0x01, sp)
      00925D 4A               [ 1]  414 	dec	a
      00925E 26 FB            [ 1]  415 	jrne	00143$
      009260                        416 00144$:
                                    417 ;	lib/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      009260 7B 01            [ 1]  418 	ld	a, (0x01, sp)
      009262 43               [ 1]  419 	cpl	a
      009263 6B 02            [ 1]  420 	ld	(0x02, sp), a
                                    421 ;	lib/src/stm8l15x_clk.c: 688: if ( reg == 0x00)
      009265 9F               [ 1]  422 	ld	a, xl
      009266 4D               [ 1]  423 	tnz	a
      009267 26 15            [ 1]  424 	jrne	00114$
                                    425 ;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009269 C6 50 C3         [ 1]  426 	ld	a, 0x50c3
                                    427 ;	lib/src/stm8l15x_clk.c: 690: if (NewState != DISABLE)
      00926C 0D 05            [ 1]  428 	tnz	(0x05, sp)
      00926E 27 07            [ 1]  429 	jreq	00102$
                                    430 ;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009270 1A 01            [ 1]  431 	or	a, (0x01, sp)
      009272 C7 50 C3         [ 1]  432 	ld	0x50c3, a
      009275 20 35            [ 2]  433 	jra	00116$
      009277                        434 00102$:
                                    435 ;	lib/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      009277 14 02            [ 1]  436 	and	a, (0x02, sp)
      009279 C7 50 C3         [ 1]  437 	ld	0x50c3, a
      00927C 20 2E            [ 2]  438 	jra	00116$
      00927E                        439 00114$:
                                    440 ;	lib/src/stm8l15x_clk.c: 701: else if (reg == 0x10)
      00927E 90 9F            [ 1]  441 	ld	a, yl
      009280 A1 10            [ 1]  442 	cp	a, #0x10
      009282 26 15            [ 1]  443 	jrne	00111$
                                    444 ;	lib/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009284 C6 50 C4         [ 1]  445 	ld	a, 0x50c4
                                    446 ;	lib/src/stm8l15x_clk.c: 703: if (NewState != DISABLE)
      009287 0D 05            [ 1]  447 	tnz	(0x05, sp)
      009289 27 07            [ 1]  448 	jreq	00105$
                                    449 ;	lib/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00928B 1A 01            [ 1]  450 	or	a, (0x01, sp)
      00928D C7 50 C4         [ 1]  451 	ld	0x50c4, a
      009290 20 1A            [ 2]  452 	jra	00116$
      009292                        453 00105$:
                                    454 ;	lib/src/stm8l15x_clk.c: 711: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      009292 14 02            [ 1]  455 	and	a, (0x02, sp)
      009294 C7 50 C4         [ 1]  456 	ld	0x50c4, a
      009297 20 13            [ 2]  457 	jra	00116$
      009299                        458 00111$:
                                    459 ;	lib/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      009299 C6 50 D0         [ 1]  460 	ld	a, 0x50d0
                                    461 ;	lib/src/stm8l15x_clk.c: 716: if (NewState != DISABLE)
      00929C 0D 05            [ 1]  462 	tnz	(0x05, sp)
      00929E 27 07            [ 1]  463 	jreq	00108$
                                    464 ;	lib/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0092A0 1A 01            [ 1]  465 	or	a, (0x01, sp)
      0092A2 C7 50 D0         [ 1]  466 	ld	0x50d0, a
      0092A5 20 05            [ 2]  467 	jra	00116$
      0092A7                        468 00108$:
                                    469 ;	lib/src/stm8l15x_clk.c: 724: CLK->PCKENR3 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0092A7 14 02            [ 1]  470 	and	a, (0x02, sp)
      0092A9 C7 50 D0         [ 1]  471 	ld	0x50d0, a
      0092AC                        472 00116$:
                                    473 ;	lib/src/stm8l15x_clk.c: 727: }
      0092AC 5B 02            [ 2]  474 	addw	sp, #2
      0092AE 85               [ 2]  475 	popw	x
      0092AF 84               [ 1]  476 	pop	a
      0092B0 FC               [ 2]  477 	jp	(x)
                                    478 ;	lib/src/stm8l15x_clk.c: 765: void CLK_LSEClockSecuritySystemEnable(void)
                                    479 ;	-----------------------------------------
                                    480 ;	 function CLK_LSEClockSecuritySystemEnable
                                    481 ;	-----------------------------------------
      0092B1                        482 _CLK_LSEClockSecuritySystemEnable:
                                    483 ;	lib/src/stm8l15x_clk.c: 768: CSSLSE->CSR |= CSSLSE_CSR_CSSEN;
      0092B1 72 10 51 90      [ 1]  484 	bset	0x5190, #0
                                    485 ;	lib/src/stm8l15x_clk.c: 769: }
      0092B5 81               [ 4]  486 	ret
                                    487 ;	lib/src/stm8l15x_clk.c: 777: void CLK_RTCCLKSwitchOnLSEFailureEnable(void)
                                    488 ;	-----------------------------------------
                                    489 ;	 function CLK_RTCCLKSwitchOnLSEFailureEnable
                                    490 ;	-----------------------------------------
      0092B6                        491 _CLK_RTCCLKSwitchOnLSEFailureEnable:
                                    492 ;	lib/src/stm8l15x_clk.c: 780: CSSLSE->CSR |= CSSLSE_CSR_SWITCHEN;
      0092B6 72 12 51 90      [ 1]  493 	bset	0x5190, #1
                                    494 ;	lib/src/stm8l15x_clk.c: 781: }
      0092BA 81               [ 4]  495 	ret
                                    496 ;	lib/src/stm8l15x_clk.c: 807: void CLK_HaltConfig(CLK_Halt_TypeDef CLK_Halt, FunctionalState NewState)
                                    497 ;	-----------------------------------------
                                    498 ;	 function CLK_HaltConfig
                                    499 ;	-----------------------------------------
      0092BB                        500 _CLK_HaltConfig:
      0092BB 88               [ 1]  501 	push	a
                                    502 ;	lib/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
      0092BC AE 50 C2         [ 2]  503 	ldw	x, #0x50c2
      0092BF 88               [ 1]  504 	push	a
      0092C0 F6               [ 1]  505 	ld	a, (x)
      0092C1 6B 02            [ 1]  506 	ld	(0x02, sp), a
      0092C3 84               [ 1]  507 	pop	a
                                    508 ;	lib/src/stm8l15x_clk.c: 813: if (NewState != DISABLE)
      0092C4 0D 04            [ 1]  509 	tnz	(0x04, sp)
      0092C6 27 07            [ 1]  510 	jreq	00102$
                                    511 ;	lib/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
      0092C8 1A 01            [ 1]  512 	or	a, (0x01, sp)
      0092CA C7 50 C2         [ 1]  513 	ld	0x50c2, a
      0092CD 20 06            [ 2]  514 	jra	00104$
      0092CF                        515 00102$:
                                    516 ;	lib/src/stm8l15x_clk.c: 819: CLK->ICKCR &= (uint8_t)(~CLK_Halt);
      0092CF 43               [ 1]  517 	cpl	a
      0092D0 14 01            [ 1]  518 	and	a, (0x01, sp)
      0092D2 C7 50 C2         [ 1]  519 	ld	0x50c2, a
      0092D5                        520 00104$:
                                    521 ;	lib/src/stm8l15x_clk.c: 821: }
      0092D5 84               [ 1]  522 	pop	a
      0092D6 85               [ 2]  523 	popw	x
      0092D7 84               [ 1]  524 	pop	a
      0092D8 FC               [ 2]  525 	jp	(x)
                                    526 ;	lib/src/stm8l15x_clk.c: 831: void CLK_MainRegulatorCmd(FunctionalState NewState)
                                    527 ;	-----------------------------------------
                                    528 ;	 function CLK_MainRegulatorCmd
                                    529 ;	-----------------------------------------
      0092D9                        530 _CLK_MainRegulatorCmd:
      0092D9 88               [ 1]  531 	push	a
      0092DA 6B 01            [ 1]  532 	ld	(0x01, sp), a
                                    533 ;	lib/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
      0092DC C6 50 CF         [ 1]  534 	ld	a, 0x50cf
                                    535 ;	lib/src/stm8l15x_clk.c: 836: if (NewState != DISABLE)
      0092DF 0D 01            [ 1]  536 	tnz	(0x01, sp)
      0092E1 27 07            [ 1]  537 	jreq	00102$
                                    538 ;	lib/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
      0092E3 A4 FD            [ 1]  539 	and	a, #0xfd
      0092E5 C7 50 CF         [ 1]  540 	ld	0x50cf, a
      0092E8 20 05            [ 2]  541 	jra	00104$
      0092EA                        542 00102$:
                                    543 ;	lib/src/stm8l15x_clk.c: 844: CLK->REGCSR |= CLK_REGCSR_REGOFF;
      0092EA AA 02            [ 1]  544 	or	a, #0x02
      0092EC C7 50 CF         [ 1]  545 	ld	0x50cf, a
      0092EF                        546 00104$:
                                    547 ;	lib/src/stm8l15x_clk.c: 846: }
      0092EF 84               [ 1]  548 	pop	a
      0092F0 81               [ 4]  549 	ret
                                    550 ;	lib/src/stm8l15x_clk.c: 875: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    551 ;	-----------------------------------------
                                    552 ;	 function CLK_ITConfig
                                    553 ;	-----------------------------------------
      0092F1                        554 _CLK_ITConfig:
      0092F1 88               [ 1]  555 	push	a
                                    556 ;	lib/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
      0092F2 A1 1C            [ 1]  557 	cp	a, #0x1c
      0092F4 26 07            [ 1]  558 	jrne	00144$
      0092F6 88               [ 1]  559 	push	a
      0092F7 A6 01            [ 1]  560 	ld	a, #0x01
      0092F9 6B 02            [ 1]  561 	ld	(0x02, sp), a
      0092FB 84               [ 1]  562 	pop	a
      0092FC C5                     563 	.byte 0xc5
      0092FD                        564 00144$:
      0092FD 0F 01            [ 1]  565 	clr	(0x01, sp)
      0092FF                        566 00145$:
                                    567 ;	lib/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
      0092FF A0 2C            [ 1]  568 	sub	a, #0x2c
      009301 26 02            [ 1]  569 	jrne	00147$
      009303 4C               [ 1]  570 	inc	a
      009304 21                     571 	.byte 0x21
      009305                        572 00147$:
      009305 4F               [ 1]  573 	clr	a
      009306                        574 00148$:
                                    575 ;	lib/src/stm8l15x_clk.c: 882: if (NewState != DISABLE)
      009306 0D 04            [ 1]  576 	tnz	(0x04, sp)
      009308 27 25            [ 1]  577 	jreq	00114$
                                    578 ;	lib/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
      00930A 0D 01            [ 1]  579 	tnz	(0x01, sp)
      00930C 27 0A            [ 1]  580 	jreq	00105$
                                    581 ;	lib/src/stm8l15x_clk.c: 887: CLK->SWCR |= CLK_SWCR_SWIEN;
      00930E C6 50 C9         [ 1]  582 	ld	a, 0x50c9
      009311 AA 04            [ 1]  583 	or	a, #0x04
      009313 C7 50 C9         [ 1]  584 	ld	0x50c9, a
      009316 20 3A            [ 2]  585 	jra	00116$
      009318                        586 00105$:
                                    587 ;	lib/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
      009318 4D               [ 1]  588 	tnz	a
      009319 27 0A            [ 1]  589 	jreq	00102$
                                    590 ;	lib/src/stm8l15x_clk.c: 892: CSSLSE->CSR |= CSSLSE_CSR_CSSIE;
      00931B C6 51 90         [ 1]  591 	ld	a, 0x5190
      00931E AA 04            [ 1]  592 	or	a, #0x04
      009320 C7 51 90         [ 1]  593 	ld	0x5190, a
      009323 20 2D            [ 2]  594 	jra	00116$
      009325                        595 00102$:
                                    596 ;	lib/src/stm8l15x_clk.c: 897: CLK->CSSR |= CLK_CSSR_CSSDIE;
      009325 C6 50 CA         [ 1]  597 	ld	a, 0x50ca
      009328 AA 04            [ 1]  598 	or	a, #0x04
      00932A C7 50 CA         [ 1]  599 	ld	0x50ca, a
      00932D 20 23            [ 2]  600 	jra	00116$
      00932F                        601 00114$:
                                    602 ;	lib/src/stm8l15x_clk.c: 902: if (CLK_IT == CLK_IT_SWIF)
      00932F 0D 01            [ 1]  603 	tnz	(0x01, sp)
      009331 27 0A            [ 1]  604 	jreq	00111$
                                    605 ;	lib/src/stm8l15x_clk.c: 905: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      009333 C6 50 C9         [ 1]  606 	ld	a, 0x50c9
      009336 A4 FB            [ 1]  607 	and	a, #0xfb
      009338 C7 50 C9         [ 1]  608 	ld	0x50c9, a
      00933B 20 15            [ 2]  609 	jra	00116$
      00933D                        610 00111$:
                                    611 ;	lib/src/stm8l15x_clk.c: 907: else if (CLK_IT == CLK_IT_LSECSSF)
      00933D 4D               [ 1]  612 	tnz	a
      00933E 27 0A            [ 1]  613 	jreq	00108$
                                    614 ;	lib/src/stm8l15x_clk.c: 910: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSIE);
      009340 C6 51 90         [ 1]  615 	ld	a, 0x5190
      009343 A4 FB            [ 1]  616 	and	a, #0xfb
      009345 C7 51 90         [ 1]  617 	ld	0x5190, a
      009348 20 08            [ 2]  618 	jra	00116$
      00934A                        619 00108$:
                                    620 ;	lib/src/stm8l15x_clk.c: 915: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00934A C6 50 CA         [ 1]  621 	ld	a, 0x50ca
      00934D A4 FB            [ 1]  622 	and	a, #0xfb
      00934F C7 50 CA         [ 1]  623 	ld	0x50ca, a
      009352                        624 00116$:
                                    625 ;	lib/src/stm8l15x_clk.c: 918: }
      009352 84               [ 1]  626 	pop	a
      009353 85               [ 2]  627 	popw	x
      009354 84               [ 1]  628 	pop	a
      009355 FC               [ 2]  629 	jp	(x)
                                    630 ;	lib/src/stm8l15x_clk.c: 945: FlagStatus CLK_GetFlagStatus(CLK_FLAG_TypeDef CLK_FLAG)
                                    631 ;	-----------------------------------------
                                    632 ;	 function CLK_GetFlagStatus
                                    633 ;	-----------------------------------------
      009356                        634 _CLK_GetFlagStatus:
      009356 88               [ 1]  635 	push	a
                                    636 ;	lib/src/stm8l15x_clk.c: 955: reg = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0xF0);
      009357 97               [ 1]  637 	ld	xl, a
      009358 A4 F0            [ 1]  638 	and	a, #0xf0
                                    639 ;	lib/src/stm8l15x_clk.c: 958: pos = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0x0F);
      00935A 88               [ 1]  640 	push	a
      00935B 9F               [ 1]  641 	ld	a, xl
      00935C A4 0F            [ 1]  642 	and	a, #0x0f
      00935E 97               [ 1]  643 	ld	xl, a
      00935F 84               [ 1]  644 	pop	a
                                    645 ;	lib/src/stm8l15x_clk.c: 960: if (reg == 0x00) /* The flag to check is in CRTC Rregister */
      009360 4D               [ 1]  646 	tnz	a
      009361 26 05            [ 1]  647 	jrne	00123$
                                    648 ;	lib/src/stm8l15x_clk.c: 962: reg = CLK->CRTCR;
      009363 C6 50 C1         [ 1]  649 	ld	a, 0x50c1
      009366 20 42            [ 2]  650 	jra	00124$
      009368                        651 00123$:
                                    652 ;	lib/src/stm8l15x_clk.c: 964: else if (reg == 0x10) /* The flag to check is in ICKCR register */
      009368 A1 10            [ 1]  653 	cp	a, #0x10
      00936A 26 05            [ 1]  654 	jrne	00120$
                                    655 ;	lib/src/stm8l15x_clk.c: 966: reg = CLK->ICKCR;
      00936C C6 50 C2         [ 1]  656 	ld	a, 0x50c2
      00936F 20 39            [ 2]  657 	jra	00124$
      009371                        658 00120$:
                                    659 ;	lib/src/stm8l15x_clk.c: 968: else if (reg == 0x20) /* The flag to check is in CCOR register */
      009371 A1 20            [ 1]  660 	cp	a, #0x20
      009373 26 05            [ 1]  661 	jrne	00117$
                                    662 ;	lib/src/stm8l15x_clk.c: 970: reg = CLK->CCOR;
      009375 C6 50 C5         [ 1]  663 	ld	a, 0x50c5
      009378 20 30            [ 2]  664 	jra	00124$
      00937A                        665 00117$:
                                    666 ;	lib/src/stm8l15x_clk.c: 972: else if (reg == 0x30) /* The flag to check is in ECKCR register */
      00937A A1 30            [ 1]  667 	cp	a, #0x30
      00937C 26 05            [ 1]  668 	jrne	00114$
                                    669 ;	lib/src/stm8l15x_clk.c: 974: reg = CLK->ECKCR;
      00937E C6 50 C6         [ 1]  670 	ld	a, 0x50c6
      009381 20 27            [ 2]  671 	jra	00124$
      009383                        672 00114$:
                                    673 ;	lib/src/stm8l15x_clk.c: 976: else if (reg == 0x40) /* The flag to check is in SWCR register */
      009383 A1 40            [ 1]  674 	cp	a, #0x40
      009385 26 05            [ 1]  675 	jrne	00111$
                                    676 ;	lib/src/stm8l15x_clk.c: 978: reg = CLK->SWCR;
      009387 C6 50 C9         [ 1]  677 	ld	a, 0x50c9
      00938A 20 1E            [ 2]  678 	jra	00124$
      00938C                        679 00111$:
                                    680 ;	lib/src/stm8l15x_clk.c: 980: else if (reg == 0x50) /* The flag to check is in CSSR register */
      00938C A1 50            [ 1]  681 	cp	a, #0x50
      00938E 26 05            [ 1]  682 	jrne	00108$
                                    683 ;	lib/src/stm8l15x_clk.c: 982: reg = CLK->CSSR;
      009390 C6 50 CA         [ 1]  684 	ld	a, 0x50ca
      009393 20 15            [ 2]  685 	jra	00124$
      009395                        686 00108$:
                                    687 ;	lib/src/stm8l15x_clk.c: 984: else if (reg == 0x70) /* The flag to check is in REGCSR register */
      009395 A1 70            [ 1]  688 	cp	a, #0x70
      009397 26 05            [ 1]  689 	jrne	00105$
                                    690 ;	lib/src/stm8l15x_clk.c: 986: reg = CLK->REGCSR;
      009399 C6 50 CF         [ 1]  691 	ld	a, 0x50cf
      00939C 20 0C            [ 2]  692 	jra	00124$
      00939E                        693 00105$:
                                    694 ;	lib/src/stm8l15x_clk.c: 988: else if (reg == 0x80) /* The flag to check is in CSSLSE_CSRregister */
      00939E A1 80            [ 1]  695 	cp	a, #0x80
      0093A0 26 05            [ 1]  696 	jrne	00102$
                                    697 ;	lib/src/stm8l15x_clk.c: 990: reg = CSSLSE->CSR;
      0093A2 C6 51 90         [ 1]  698 	ld	a, 0x5190
      0093A5 20 03            [ 2]  699 	jra	00124$
      0093A7                        700 00102$:
                                    701 ;	lib/src/stm8l15x_clk.c: 994: reg = CLK->CBEEPR;
      0093A7 C6 50 CB         [ 1]  702 	ld	a, 0x50cb
      0093AA                        703 00124$:
                                    704 ;	lib/src/stm8l15x_clk.c: 998: if ((reg & (uint8_t)((uint8_t)1 << (uint8_t)pos)) != (uint8_t)RESET)
      0093AA 88               [ 1]  705 	push	a
      0093AB A6 01            [ 1]  706 	ld	a, #0x01
      0093AD 6B 02            [ 1]  707 	ld	(0x02, sp), a
      0093AF 9F               [ 1]  708 	ld	a, xl
      0093B0 4D               [ 1]  709 	tnz	a
      0093B1 27 05            [ 1]  710 	jreq	00198$
      0093B3                        711 00197$:
      0093B3 08 02            [ 1]  712 	sll	(0x02, sp)
      0093B5 4A               [ 1]  713 	dec	a
      0093B6 26 FB            [ 1]  714 	jrne	00197$
      0093B8                        715 00198$:
      0093B8 84               [ 1]  716 	pop	a
      0093B9 14 01            [ 1]  717 	and	a, (0x01, sp)
      0093BB 27 03            [ 1]  718 	jreq	00126$
                                    719 ;	lib/src/stm8l15x_clk.c: 1000: bitstatus = SET;
      0093BD A6 01            [ 1]  720 	ld	a, #0x01
                                    721 ;	lib/src/stm8l15x_clk.c: 1004: bitstatus = RESET;
      0093BF 21                     722 	.byte 0x21
      0093C0                        723 00126$:
      0093C0 4F               [ 1]  724 	clr	a
      0093C1                        725 00127$:
                                    726 ;	lib/src/stm8l15x_clk.c: 1008: return((FlagStatus)bitstatus);
                                    727 ;	lib/src/stm8l15x_clk.c: 1009: }
      0093C1 5B 01            [ 2]  728 	addw	sp, #1
      0093C3 81               [ 4]  729 	ret
                                    730 ;	lib/src/stm8l15x_clk.c: 1016: void CLK_ClearFlag(void)
                                    731 ;	-----------------------------------------
                                    732 ;	 function CLK_ClearFlag
                                    733 ;	-----------------------------------------
      0093C4                        734 _CLK_ClearFlag:
                                    735 ;	lib/src/stm8l15x_clk.c: 1020: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
      0093C4 72 17 51 90      [ 1]  736 	bres	0x5190, #3
                                    737 ;	lib/src/stm8l15x_clk.c: 1021: }
      0093C8 81               [ 4]  738 	ret
                                    739 ;	lib/src/stm8l15x_clk.c: 1032: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    740 ;	-----------------------------------------
                                    741 ;	 function CLK_GetITStatus
                                    742 ;	-----------------------------------------
      0093C9                        743 _CLK_GetITStatus:
      0093C9 88               [ 1]  744 	push	a
                                    745 ;	lib/src/stm8l15x_clk.c: 1040: if (CLK_IT == CLK_IT_SWIF)
      0093CA 6B 01            [ 1]  746 	ld	(0x01, sp), a
      0093CC A1 1C            [ 1]  747 	cp	a, #0x1c
      0093CE 26 0F            [ 1]  748 	jrne	00114$
                                    749 ;	lib/src/stm8l15x_clk.c: 1043: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0093D0 C6 50 C9         [ 1]  750 	ld	a, 0x50c9
      0093D3 14 01            [ 1]  751 	and	a, (0x01, sp)
                                    752 ;	lib/src/stm8l15x_clk.c: 1045: bitstatus = SET;
      0093D5 A0 0C            [ 1]  753 	sub	a, #0x0c
      0093D7 26 03            [ 1]  754 	jrne	00102$
      0093D9 4C               [ 1]  755 	inc	a
      0093DA 20 24            [ 2]  756 	jra	00115$
      0093DC                        757 00102$:
                                    758 ;	lib/src/stm8l15x_clk.c: 1049: bitstatus = RESET;
      0093DC 4F               [ 1]  759 	clr	a
      0093DD 20 21            [ 2]  760 	jra	00115$
      0093DF                        761 00114$:
                                    762 ;	lib/src/stm8l15x_clk.c: 1052: else if (CLK_IT == CLK_IT_LSECSSF)
      0093DF 7B 01            [ 1]  763 	ld	a, (0x01, sp)
      0093E1 A1 2C            [ 1]  764 	cp	a, #0x2c
      0093E3 26 0F            [ 1]  765 	jrne	00111$
                                    766 ;	lib/src/stm8l15x_clk.c: 1055: if ((CSSLSE->CSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0093E5 C6 51 90         [ 1]  767 	ld	a, 0x5190
      0093E8 14 01            [ 1]  768 	and	a, (0x01, sp)
                                    769 ;	lib/src/stm8l15x_clk.c: 1057: bitstatus = SET;
      0093EA A0 0C            [ 1]  770 	sub	a, #0x0c
      0093EC 26 03            [ 1]  771 	jrne	00105$
      0093EE 4C               [ 1]  772 	inc	a
      0093EF 20 0F            [ 2]  773 	jra	00115$
      0093F1                        774 00105$:
                                    775 ;	lib/src/stm8l15x_clk.c: 1061: bitstatus = RESET;
      0093F1 4F               [ 1]  776 	clr	a
      0093F2 20 0C            [ 2]  777 	jra	00115$
      0093F4                        778 00111$:
                                    779 ;	lib/src/stm8l15x_clk.c: 1067: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0093F4 C6 50 CA         [ 1]  780 	ld	a, 0x50ca
      0093F7 14 01            [ 1]  781 	and	a, (0x01, sp)
                                    782 ;	lib/src/stm8l15x_clk.c: 1069: bitstatus = SET;
      0093F9 A0 0C            [ 1]  783 	sub	a, #0x0c
      0093FB 26 02            [ 1]  784 	jrne	00108$
      0093FD 4C               [ 1]  785 	inc	a
                                    786 ;	lib/src/stm8l15x_clk.c: 1073: bitstatus = RESET;
      0093FE 21                     787 	.byte 0x21
      0093FF                        788 00108$:
      0093FF 4F               [ 1]  789 	clr	a
      009400                        790 00115$:
                                    791 ;	lib/src/stm8l15x_clk.c: 1078: return bitstatus;
                                    792 ;	lib/src/stm8l15x_clk.c: 1079: }
      009400 5B 01            [ 2]  793 	addw	sp, #1
      009402 81               [ 4]  794 	ret
                                    795 ;	lib/src/stm8l15x_clk.c: 1089: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    796 ;	-----------------------------------------
                                    797 ;	 function CLK_ClearITPendingBit
                                    798 ;	-----------------------------------------
      009403                        799 _CLK_ClearITPendingBit:
                                    800 ;	lib/src/stm8l15x_clk.c: 1095: if ((uint8_t)((uint8_t)CLK_IT & (uint8_t)0xF0) == (uint8_t)0x20)
      009403 A4 F0            [ 1]  801 	and	a, #0xf0
      009405 A1 20            [ 1]  802 	cp	a, #0x20
      009407 26 05            [ 1]  803 	jrne	00102$
                                    804 ;	lib/src/stm8l15x_clk.c: 1098: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
      009409 72 17 51 90      [ 1]  805 	bres	0x5190, #3
      00940D 81               [ 4]  806 	ret
      00940E                        807 00102$:
                                    808 ;	lib/src/stm8l15x_clk.c: 1103: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      00940E 72 17 50 C9      [ 1]  809 	bres	0x50c9, #3
                                    810 ;	lib/src/stm8l15x_clk.c: 1105: }
      009412 81               [ 4]  811 	ret
                                    812 	.area CODE
                                    813 	.area CONST
      00823C                        814 _SYSDivFactor:
      00823C 01                     815 	.db #0x01	; 1
      00823D 02                     816 	.db #0x02	; 2
      00823E 04                     817 	.db #0x04	; 4
      00823F 08                     818 	.db #0x08	; 8
      008240 10                     819 	.db #0x10	; 16
                                    820 	.area INITIALIZER
                                    821 	.area CABS (ABS)
