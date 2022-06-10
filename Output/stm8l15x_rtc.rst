                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8l15x_rtc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _RTC_DeInit
                                     12 	.globl _RTC_Init
                                     13 	.globl _RTC_StructInit
                                     14 	.globl _RTC_WriteProtectionCmd
                                     15 	.globl _RTC_EnterInitMode
                                     16 	.globl _RTC_ExitInitMode
                                     17 	.globl _RTC_WaitForSynchro
                                     18 	.globl _RTC_RatioCmd
                                     19 	.globl _RTC_BypassShadowCmd
                                     20 	.globl _RTC_SetTime
                                     21 	.globl _RTC_TimeStructInit
                                     22 	.globl _RTC_GetTime
                                     23 	.globl _RTC_GetSubSecond
                                     24 	.globl _RTC_SetDate
                                     25 	.globl _RTC_DateStructInit
                                     26 	.globl _RTC_GetDate
                                     27 	.globl _RTC_SetAlarm
                                     28 	.globl _RTC_AlarmStructInit
                                     29 	.globl _RTC_GetAlarm
                                     30 	.globl _RTC_AlarmCmd
                                     31 	.globl _RTC_AlarmSubSecondConfig
                                     32 	.globl _RTC_WakeUpClockConfig
                                     33 	.globl _RTC_SetWakeUpCounter
                                     34 	.globl _RTC_GetWakeUpCounter
                                     35 	.globl _RTC_WakeUpCmd
                                     36 	.globl _RTC_DayLightSavingConfig
                                     37 	.globl _RTC_GetStoreOperation
                                     38 	.globl _RTC_OutputConfig
                                     39 	.globl _RTC_SynchroShiftConfig
                                     40 	.globl _RTC_SmoothCalibConfig
                                     41 	.globl _RTC_CalibOutputConfig
                                     42 	.globl _RTC_CalibOutputCmd
                                     43 	.globl _RTC_TamperLevelConfig
                                     44 	.globl _RTC_TamperFilterConfig
                                     45 	.globl _RTC_TamperSamplingFreqConfig
                                     46 	.globl _RTC_TamperPinsPrechargeDuration
                                     47 	.globl _RTC_TamperCmd
                                     48 	.globl _RTC_ITConfig
                                     49 	.globl _RTC_GetFlagStatus
                                     50 	.globl _RTC_ClearFlag
                                     51 	.globl _RTC_GetITStatus
                                     52 	.globl _RTC_ClearITPendingBit
                                     53 ;--------------------------------------------------------
                                     54 ; ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area DATA
                                     57 ;--------------------------------------------------------
                                     58 ; ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area INITIALIZED
                                     61 ;--------------------------------------------------------
                                     62 ; absolute external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area DABS (ABS)
                                     65 
                                     66 ; default segment ordering for linker
                                     67 	.area HOME
                                     68 	.area GSINIT
                                     69 	.area GSFINAL
                                     70 	.area CONST
                                     71 	.area INITIALIZER
                                     72 	.area CODE
                                     73 
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME
                                     78 	.area GSINIT
                                     79 	.area GSFINAL
                                     80 	.area GSINIT
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME
                                     85 	.area HOME
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CODE
                                     90 ;	lib/src/stm8l15x_rtc.c: 232: ErrorStatus RTC_DeInit(void)
                                     91 ;	-----------------------------------------
                                     92 ;	 function RTC_DeInit
                                     93 ;	-----------------------------------------
      00868C                         94 _RTC_DeInit:
                                     95 ;	lib/src/stm8l15x_rtc.c: 239: RTC->WPR = 0xCA;
      00868C 35 CA 51 59      [ 1]   96 	mov	0x5159+0, #0xca
                                     97 ;	lib/src/stm8l15x_rtc.c: 240: RTC->WPR = 0x53;
      008690 35 53 51 59      [ 1]   98 	mov	0x5159+0, #0x53
                                     99 ;	lib/src/stm8l15x_rtc.c: 243: if (RTC_EnterInitMode() == ERROR)
      008694 CD 87 C3         [ 4]  100 	call	_RTC_EnterInitMode
      008697 4D               [ 1]  101 	tnz	a
      008698 26 06            [ 1]  102 	jrne	00121$
                                    103 ;	lib/src/stm8l15x_rtc.c: 245: status = ERROR;
      00869A 4F               [ 1]  104 	clr	a
                                    105 ;	lib/src/stm8l15x_rtc.c: 247: RTC->WPR = 0xFF; 
      00869B 35 FF 51 59      [ 1]  106 	mov	0x5159+0, #0xff
      00869F 81               [ 4]  107 	ret
      0086A0                        108 00121$:
                                    109 ;	lib/src/stm8l15x_rtc.c: 252: RTC->TR1 = RTC_TR1_RESET_VALUE;
      0086A0 35 00 51 40      [ 1]  110 	mov	0x5140+0, #0x00
                                    111 ;	lib/src/stm8l15x_rtc.c: 253: RTC->TR2 = RTC_TR2_RESET_VALUE;
      0086A4 35 00 51 41      [ 1]  112 	mov	0x5141+0, #0x00
                                    113 ;	lib/src/stm8l15x_rtc.c: 254: RTC->TR3 = RTC_TR3_RESET_VALUE;
      0086A8 35 00 51 42      [ 1]  114 	mov	0x5142+0, #0x00
                                    115 ;	lib/src/stm8l15x_rtc.c: 257: RTC->DR1 = RTC_DR1_RESET_VALUE;
      0086AC 35 01 51 44      [ 1]  116 	mov	0x5144+0, #0x01
                                    117 ;	lib/src/stm8l15x_rtc.c: 258: RTC->DR2 = RTC_DR2_RESET_VALUE;
      0086B0 35 21 51 45      [ 1]  118 	mov	0x5145+0, #0x21
                                    119 ;	lib/src/stm8l15x_rtc.c: 259: RTC->DR3 = RTC_DR3_RESET_VALUE;
      0086B4 35 00 51 46      [ 1]  120 	mov	0x5146+0, #0x00
                                    121 ;	lib/src/stm8l15x_rtc.c: 262: RTC->SPRERH = RTC_SPRERH_RESET_VALUE;
      0086B8 35 00 51 50      [ 1]  122 	mov	0x5150+0, #0x00
                                    123 ;	lib/src/stm8l15x_rtc.c: 263: RTC->SPRERL = RTC_SPRERL_RESET_VALUE;
      0086BC 35 FF 51 51      [ 1]  124 	mov	0x5151+0, #0xff
                                    125 ;	lib/src/stm8l15x_rtc.c: 264: RTC->APRER  = RTC_APRER_RESET_VALUE;
      0086C0 35 7F 51 52      [ 1]  126 	mov	0x5152+0, #0x7f
                                    127 ;	lib/src/stm8l15x_rtc.c: 266: RTC->TCR1 = RTC_TCR1_RESET_VALUE;
      0086C4 35 00 51 6C      [ 1]  128 	mov	0x516c+0, #0x00
                                    129 ;	lib/src/stm8l15x_rtc.c: 267: RTC->TCR2 = RTC_TCR2_RESET_VALUE;
      0086C8 35 00 51 6D      [ 1]  130 	mov	0x516d+0, #0x00
                                    131 ;	lib/src/stm8l15x_rtc.c: 271: RTC->CR1 = RTC_CR1_RESET_VALUE;
      0086CC 35 00 51 48      [ 1]  132 	mov	0x5148+0, #0x00
                                    133 ;	lib/src/stm8l15x_rtc.c: 272: RTC->CR2 = RTC_CR2_RESET_VALUE;
      0086D0 35 00 51 49      [ 1]  134 	mov	0x5149+0, #0x00
                                    135 ;	lib/src/stm8l15x_rtc.c: 273: RTC->CR3 = RTC_CR3_RESET_VALUE;
      0086D4 35 00 51 4A      [ 1]  136 	mov	0x514a+0, #0x00
                                    137 ;	lib/src/stm8l15x_rtc.c: 276: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
      0086D8 5F               [ 1]  138 	clrw	x
      0086D9                        139 00102$:
      0086D9 72 04 51 4C 0C   [ 2]  140 	btjt	0x514c, #2, 00104$
      0086DE A3 FF FF         [ 2]  141 	cpw	x, #0xffff
      0086E1 27 07            [ 1]  142 	jreq	00104$
                                    143 ;	lib/src/stm8l15x_rtc.c: 278: wutwfcount++;
      0086E3 5C               [ 1]  144 	incw	x
                                    145 ;	lib/src/stm8l15x_rtc.c: 279: RTC->ISR1 = 0;
      0086E4 35 00 51 4C      [ 1]  146 	mov	0x514c+0, #0x00
      0086E8 20 EF            [ 2]  147 	jra	00102$
      0086EA                        148 00104$:
                                    149 ;	lib/src/stm8l15x_rtc.c: 282: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
      0086EA 72 04 51 4C 06   [ 2]  150 	btjt	0x514c, #2, 00118$
                                    151 ;	lib/src/stm8l15x_rtc.c: 284: status = ERROR;
      0086EF 4F               [ 1]  152 	clr	a
                                    153 ;	lib/src/stm8l15x_rtc.c: 286: RTC->WPR = 0xFF; 
      0086F0 35 FF 51 59      [ 1]  154 	mov	0x5159+0, #0xff
      0086F4 81               [ 4]  155 	ret
      0086F5                        156 00118$:
                                    157 ;	lib/src/stm8l15x_rtc.c: 291: RTC->CR1 = RTC_CR1_RESET_VALUE;
      0086F5 35 00 51 48      [ 1]  158 	mov	0x5148+0, #0x00
                                    159 ;	lib/src/stm8l15x_rtc.c: 294: RTC->WUTRH = RTC_WUTRH_RESET_VALUE;
      0086F9 35 FF 51 54      [ 1]  160 	mov	0x5154+0, #0xff
                                    161 ;	lib/src/stm8l15x_rtc.c: 295: RTC->WUTRL = RTC_WUTRL_RESET_VALUE;
      0086FD 35 FF 51 55      [ 1]  162 	mov	0x5155+0, #0xff
                                    163 ;	lib/src/stm8l15x_rtc.c: 298: RTC->ALRMAR1 = RTC_ALRMAR1_RESET_VALUE;
      008701 35 00 51 5C      [ 1]  164 	mov	0x515c+0, #0x00
                                    165 ;	lib/src/stm8l15x_rtc.c: 299: RTC->ALRMAR2 = RTC_ALRMAR2_RESET_VALUE;
      008705 35 00 51 5D      [ 1]  166 	mov	0x515d+0, #0x00
                                    167 ;	lib/src/stm8l15x_rtc.c: 300: RTC->ALRMAR3 = RTC_ALRMAR3_RESET_VALUE;
      008709 35 00 51 5E      [ 1]  168 	mov	0x515e+0, #0x00
                                    169 ;	lib/src/stm8l15x_rtc.c: 301: RTC->ALRMAR4 = RTC_ALRMAR4_RESET_VALUE;
      00870D 35 00 51 5F      [ 1]  170 	mov	0x515f+0, #0x00
                                    171 ;	lib/src/stm8l15x_rtc.c: 303: RTC->ALRMASSRH = RTC_ALRMASSRH_RESET_VALUE;
      008711 35 00 51 64      [ 1]  172 	mov	0x5164+0, #0x00
                                    173 ;	lib/src/stm8l15x_rtc.c: 304: RTC->ALRMASSRL = RTC_ALRMASSRL_RESET_VALUE;
      008715 35 00 51 65      [ 1]  174 	mov	0x5165+0, #0x00
                                    175 ;	lib/src/stm8l15x_rtc.c: 305: RTC->ALRMASSMSKR = RTC_ALRMASSMSKR_RESET_VALUE;
      008719 35 00 51 66      [ 1]  176 	mov	0x5166+0, #0x00
                                    177 ;	lib/src/stm8l15x_rtc.c: 308: RTC->ISR1 = (uint8_t)0x00;
      00871D 35 00 51 4C      [ 1]  178 	mov	0x514c+0, #0x00
                                    179 ;	lib/src/stm8l15x_rtc.c: 309: RTC->ISR2 = RTC_ISR2_RESET_VALUE;
      008721 35 00 51 4D      [ 1]  180 	mov	0x514d+0, #0x00
                                    181 ;	lib/src/stm8l15x_rtc.c: 311: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
      008725 72 03 51 4C 0E   [ 2]  182 	btjf	0x514c, #1, 00110$
                                    183 ;	lib/src/stm8l15x_rtc.c: 313: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
      00872A 5F               [ 1]  184 	clrw	x
      00872B                        185 00106$:
      00872B 72 03 51 4C 08   [ 2]  186 	btjf	0x514c, #1, 00110$
      008730 A3 FF FF         [ 2]  187 	cpw	x, #0xffff
      008733 27 03            [ 1]  188 	jreq	00110$
                                    189 ;	lib/src/stm8l15x_rtc.c: 315: recalpfcount++;
      008735 5C               [ 1]  190 	incw	x
      008736 20 F3            [ 2]  191 	jra	00106$
      008738                        192 00110$:
                                    193 ;	lib/src/stm8l15x_rtc.c: 318: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
      008738 C6 51 4C         [ 1]  194 	ld	a, 0x514c
      00873B A5 02            [ 1]  195 	bcp	a, #0x02
      00873D 26 14            [ 1]  196 	jrne	00115$
                                    197 ;	lib/src/stm8l15x_rtc.c: 320: RTC->CALRH = RTC_CALRH_RESET_VALUE;
      00873F 35 00 51 6A      [ 1]  198 	mov	0x516a+0, #0x00
                                    199 ;	lib/src/stm8l15x_rtc.c: 321: RTC->CALRL = RTC_CALRL_RESET_VALUE;
      008743 35 00 51 6B      [ 1]  200 	mov	0x516b+0, #0x00
                                    201 ;	lib/src/stm8l15x_rtc.c: 323: if (RTC_WaitForSynchro() == ERROR)
      008747 CD 87 E9         [ 4]  202 	call	_RTC_WaitForSynchro
      00874A 4D               [ 1]  203 	tnz	a
      00874B 26 03            [ 1]  204 	jrne	00112$
                                    205 ;	lib/src/stm8l15x_rtc.c: 325: status = ERROR;
      00874D 4F               [ 1]  206 	clr	a
      00874E 20 04            [ 2]  207 	jra	00116$
      008750                        208 00112$:
                                    209 ;	lib/src/stm8l15x_rtc.c: 329: status = SUCCESS;
      008750 A6 01            [ 1]  210 	ld	a, #0x01
                                    211 ;	lib/src/stm8l15x_rtc.c: 334: status = ERROR;
      008752 21                     212 	.byte 0x21
      008753                        213 00115$:
      008753 4F               [ 1]  214 	clr	a
      008754                        215 00116$:
                                    216 ;	lib/src/stm8l15x_rtc.c: 338: RTC->WPR = 0xFF; 
      008754 35 FF 51 59      [ 1]  217 	mov	0x5159+0, #0xff
                                    218 ;	lib/src/stm8l15x_rtc.c: 343: return (ErrorStatus)status;
                                    219 ;	lib/src/stm8l15x_rtc.c: 344: }
      008758 81               [ 4]  220 	ret
                                    221 ;	lib/src/stm8l15x_rtc.c: 359: ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct)
                                    222 ;	-----------------------------------------
                                    223 ;	 function RTC_Init
                                    224 ;	-----------------------------------------
      008759                        225 _RTC_Init:
      008759 52 03            [ 2]  226 	sub	sp, #3
      00875B 1F 02            [ 2]  227 	ldw	(0x02, sp), x
                                    228 ;	lib/src/stm8l15x_rtc.c: 369: RTC->WPR = 0xCA;
      00875D 35 CA 51 59      [ 1]  229 	mov	0x5159+0, #0xca
                                    230 ;	lib/src/stm8l15x_rtc.c: 370: RTC->WPR = 0x53;
      008761 35 53 51 59      [ 1]  231 	mov	0x5159+0, #0x53
                                    232 ;	lib/src/stm8l15x_rtc.c: 373: if (RTC_EnterInitMode() == ERROR)
      008765 CD 87 C3         [ 4]  233 	call	_RTC_EnterInitMode
      008768 4D               [ 1]  234 	tnz	a
      008769 26 03            [ 1]  235 	jrne	00102$
                                    236 ;	lib/src/stm8l15x_rtc.c: 375: status = ERROR;
      00876B 4F               [ 1]  237 	clr	a
      00876C 20 2D            [ 2]  238 	jra	00103$
      00876E                        239 00102$:
                                    240 ;	lib/src/stm8l15x_rtc.c: 380: RTC->CR1 &= ((uint8_t)~( RTC_CR1_FMT ));
      00876E 72 1D 51 48      [ 1]  241 	bres	0x5148, #6
                                    242 ;	lib/src/stm8l15x_rtc.c: 383: RTC->CR1 |=  ((uint8_t)(RTC_InitStruct->RTC_HourFormat));
      008772 C6 51 48         [ 1]  243 	ld	a, 0x5148
      008775 6B 01            [ 1]  244 	ld	(0x01, sp), a
      008777 1E 02            [ 2]  245 	ldw	x, (0x02, sp)
      008779 F6               [ 1]  246 	ld	a, (x)
      00877A 1A 01            [ 1]  247 	or	a, (0x01, sp)
      00877C C7 51 48         [ 1]  248 	ld	0x5148, a
                                    249 ;	lib/src/stm8l15x_rtc.c: 386: RTC->SPRERH = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv >> 8);
      00877F 1E 02            [ 2]  250 	ldw	x, (0x02, sp)
      008781 5C               [ 1]  251 	incw	x
      008782 5C               [ 1]  252 	incw	x
      008783 E6 01            [ 1]  253 	ld	a, (0x1, x)
      008785 F6               [ 1]  254 	ld	a, (x)
      008786 C7 51 50         [ 1]  255 	ld	0x5150, a
                                    256 ;	lib/src/stm8l15x_rtc.c: 387: RTC->SPRERL = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv);
      008789 E6 01            [ 1]  257 	ld	a, (0x1, x)
      00878B C7 51 51         [ 1]  258 	ld	0x5151, a
                                    259 ;	lib/src/stm8l15x_rtc.c: 388: RTC->APRER =  (uint8_t)(RTC_InitStruct->RTC_AsynchPrediv);
      00878E 1E 02            [ 2]  260 	ldw	x, (0x02, sp)
      008790 E6 01            [ 1]  261 	ld	a, (0x1, x)
      008792 C7 51 52         [ 1]  262 	ld	0x5152, a
                                    263 ;	lib/src/stm8l15x_rtc.c: 391: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
      008795 72 1F 51 4C      [ 1]  264 	bres	0x514c, #7
                                    265 ;	lib/src/stm8l15x_rtc.c: 393: status = SUCCESS;
      008799 A6 01            [ 1]  266 	ld	a, #0x01
      00879B                        267 00103$:
                                    268 ;	lib/src/stm8l15x_rtc.c: 397: RTC->WPR = 0xFF; 
      00879B 35 FF 51 59      [ 1]  269 	mov	0x5159+0, #0xff
                                    270 ;	lib/src/stm8l15x_rtc.c: 400: return (ErrorStatus)(status);
                                    271 ;	lib/src/stm8l15x_rtc.c: 401: }
      00879F 5B 03            [ 2]  272 	addw	sp, #3
      0087A1 81               [ 4]  273 	ret
                                    274 ;	lib/src/stm8l15x_rtc.c: 410: void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct)
                                    275 ;	-----------------------------------------
                                    276 ;	 function RTC_StructInit
                                    277 ;	-----------------------------------------
      0087A2                        278 _RTC_StructInit:
      0087A2 51               [ 1]  279 	exgw	x, y
                                    280 ;	lib/src/stm8l15x_rtc.c: 413: RTC_InitStruct->RTC_HourFormat = RTC_HourFormat_24;
      0087A3 90 7F            [ 1]  281 	clr	(y)
                                    282 ;	lib/src/stm8l15x_rtc.c: 416: RTC_InitStruct->RTC_AsynchPrediv = RTC_APRER_RESET_VALUE;
      0087A5 93               [ 1]  283 	ldw	x, y
      0087A6 5C               [ 1]  284 	incw	x
      0087A7 A6 7F            [ 1]  285 	ld	a, #0x7f
      0087A9 F7               [ 1]  286 	ld	(x), a
                                    287 ;	lib/src/stm8l15x_rtc.c: 419: RTC_InitStruct->RTC_SynchPrediv = RTC_SPRERL_RESET_VALUE;
      0087AA 93               [ 1]  288 	ldw	x, y
      0087AB 90 AE 00 FF      [ 2]  289 	ldw	y, #0x00ff
      0087AF EF 02            [ 2]  290 	ldw	(0x02, x), y
                                    291 ;	lib/src/stm8l15x_rtc.c: 420: }
      0087B1 81               [ 4]  292 	ret
                                    293 ;	lib/src/stm8l15x_rtc.c: 430: void RTC_WriteProtectionCmd(FunctionalState NewState)
                                    294 ;	-----------------------------------------
                                    295 ;	 function RTC_WriteProtectionCmd
                                    296 ;	-----------------------------------------
      0087B2                        297 _RTC_WriteProtectionCmd:
                                    298 ;	lib/src/stm8l15x_rtc.c: 435: if (NewState != DISABLE)
      0087B2 4D               [ 1]  299 	tnz	a
      0087B3 27 05            [ 1]  300 	jreq	00102$
                                    301 ;	lib/src/stm8l15x_rtc.c: 438: RTC->WPR = RTC_WPR_EnableKey;
      0087B5 35 FF 51 59      [ 1]  302 	mov	0x5159+0, #0xff
      0087B9 81               [ 4]  303 	ret
      0087BA                        304 00102$:
                                    305 ;	lib/src/stm8l15x_rtc.c: 443: RTC->WPR = RTC_WPR_DisableKey1;
      0087BA 35 CA 51 59      [ 1]  306 	mov	0x5159+0, #0xca
                                    307 ;	lib/src/stm8l15x_rtc.c: 444: RTC->WPR = RTC_WPR_DisableKey2;
      0087BE 35 53 51 59      [ 1]  308 	mov	0x5159+0, #0x53
                                    309 ;	lib/src/stm8l15x_rtc.c: 446: }
      0087C2 81               [ 4]  310 	ret
                                    311 ;	lib/src/stm8l15x_rtc.c: 458: ErrorStatus RTC_EnterInitMode(void)
                                    312 ;	-----------------------------------------
                                    313 ;	 function RTC_EnterInitMode
                                    314 ;	-----------------------------------------
      0087C3                        315 _RTC_EnterInitMode:
                                    316 ;	lib/src/stm8l15x_rtc.c: 464: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
      0087C3 72 0C 51 4C 12   [ 2]  317 	btjt	0x514c, #6, 00106$
                                    318 ;	lib/src/stm8l15x_rtc.c: 467: RTC->ISR1 = (uint8_t)RTC_ISR1_INIT;
      0087C8 35 80 51 4C      [ 1]  319 	mov	0x514c+0, #0x80
                                    320 ;	lib/src/stm8l15x_rtc.c: 470: while (((RTC->ISR1 & RTC_ISR1_INITF) == RESET) && ( initfcount != INITF_TIMEOUT))
      0087CC 5F               [ 1]  321 	clrw	x
      0087CD                        322 00102$:
      0087CD 72 0C 51 4C 08   [ 2]  323 	btjt	0x514c, #6, 00106$
      0087D2 A3 FF FF         [ 2]  324 	cpw	x, #0xffff
      0087D5 27 03            [ 1]  325 	jreq	00106$
                                    326 ;	lib/src/stm8l15x_rtc.c: 472: initfcount++;
      0087D7 5C               [ 1]  327 	incw	x
      0087D8 20 F3            [ 2]  328 	jra	00102$
      0087DA                        329 00106$:
                                    330 ;	lib/src/stm8l15x_rtc.c: 476: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
      0087DA 72 0C 51 4C 02   [ 2]  331 	btjt	0x514c, #6, 00108$
                                    332 ;	lib/src/stm8l15x_rtc.c: 478: status = ERROR;
      0087DF 4F               [ 1]  333 	clr	a
      0087E0 81               [ 4]  334 	ret
      0087E1                        335 00108$:
                                    336 ;	lib/src/stm8l15x_rtc.c: 482: status = SUCCESS;
      0087E1 A6 01            [ 1]  337 	ld	a, #0x01
                                    338 ;	lib/src/stm8l15x_rtc.c: 485: return (ErrorStatus)status;
                                    339 ;	lib/src/stm8l15x_rtc.c: 486: }
      0087E3 81               [ 4]  340 	ret
                                    341 ;	lib/src/stm8l15x_rtc.c: 498: void RTC_ExitInitMode(void)
                                    342 ;	-----------------------------------------
                                    343 ;	 function RTC_ExitInitMode
                                    344 ;	-----------------------------------------
      0087E4                        345 _RTC_ExitInitMode:
                                    346 ;	lib/src/stm8l15x_rtc.c: 501: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
      0087E4 72 1F 51 4C      [ 1]  347 	bres	0x514c, #7
                                    348 ;	lib/src/stm8l15x_rtc.c: 502: }
      0087E8 81               [ 4]  349 	ret
                                    350 ;	lib/src/stm8l15x_rtc.c: 527: ErrorStatus RTC_WaitForSynchro(void)
                                    351 ;	-----------------------------------------
                                    352 ;	 function RTC_WaitForSynchro
                                    353 ;	-----------------------------------------
      0087E9                        354 _RTC_WaitForSynchro:
                                    355 ;	lib/src/stm8l15x_rtc.c: 533: RTC->WPR = 0xCA;
      0087E9 35 CA 51 59      [ 1]  356 	mov	0x5159+0, #0xca
                                    357 ;	lib/src/stm8l15x_rtc.c: 534: RTC->WPR = 0x53;
      0087ED 35 53 51 59      [ 1]  358 	mov	0x5159+0, #0x53
                                    359 ;	lib/src/stm8l15x_rtc.c: 537: RTC->ISR1 &= (uint8_t)~(RTC_ISR1_RSF | RTC_ISR1_INIT);
      0087F1 C6 51 4C         [ 1]  360 	ld	a, 0x514c
      0087F4 A4 5F            [ 1]  361 	and	a, #0x5f
      0087F6 C7 51 4C         [ 1]  362 	ld	0x514c, a
                                    363 ;	lib/src/stm8l15x_rtc.c: 540: while (((RTC->ISR1 & RTC_ISR1_RSF) == RESET) && ( rsfcount != RSF_TIMEOUT))
      0087F9 5F               [ 1]  364 	clrw	x
      0087FA                        365 00102$:
      0087FA 72 0A 51 4C 08   [ 2]  366 	btjt	0x514c, #5, 00104$
      0087FF A3 FF FF         [ 2]  367 	cpw	x, #0xffff
      008802 27 03            [ 1]  368 	jreq	00104$
                                    369 ;	lib/src/stm8l15x_rtc.c: 542: rsfcount++;
      008804 5C               [ 1]  370 	incw	x
      008805 20 F3            [ 2]  371 	jra	00102$
      008807                        372 00104$:
                                    373 ;	lib/src/stm8l15x_rtc.c: 546: if ((RTC->ISR1 & RTC_ISR1_RSF) != RESET)
      008807 72 0B 51 4C 03   [ 2]  374 	btjf	0x514c, #5, 00106$
                                    375 ;	lib/src/stm8l15x_rtc.c: 548: status = SUCCESS;
      00880C A6 01            [ 1]  376 	ld	a, #0x01
                                    377 ;	lib/src/stm8l15x_rtc.c: 552: status = ERROR;
      00880E 21                     378 	.byte 0x21
      00880F                        379 00106$:
      00880F 4F               [ 1]  380 	clr	a
      008810                        381 00107$:
                                    382 ;	lib/src/stm8l15x_rtc.c: 556: RTC->WPR = 0xFF; 
      008810 35 FF 51 59      [ 1]  383 	mov	0x5159+0, #0xff
                                    384 ;	lib/src/stm8l15x_rtc.c: 558: return (ErrorStatus)status;
                                    385 ;	lib/src/stm8l15x_rtc.c: 559: }
      008814 81               [ 4]  386 	ret
                                    387 ;	lib/src/stm8l15x_rtc.c: 568: void RTC_RatioCmd(FunctionalState NewState)
                                    388 ;	-----------------------------------------
                                    389 ;	 function RTC_RatioCmd
                                    390 ;	-----------------------------------------
      008815                        391 _RTC_RatioCmd:
      008815 88               [ 1]  392 	push	a
      008816 6B 01            [ 1]  393 	ld	(0x01, sp), a
                                    394 ;	lib/src/stm8l15x_rtc.c: 574: RTC->WPR = 0xCA;
      008818 35 CA 51 59      [ 1]  395 	mov	0x5159+0, #0xca
                                    396 ;	lib/src/stm8l15x_rtc.c: 575: RTC->WPR = 0x53;
      00881C 35 53 51 59      [ 1]  397 	mov	0x5159+0, #0x53
                                    398 ;	lib/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
      008820 C6 51 48         [ 1]  399 	ld	a, 0x5148
                                    400 ;	lib/src/stm8l15x_rtc.c: 577: if (NewState != DISABLE)
      008823 0D 01            [ 1]  401 	tnz	(0x01, sp)
      008825 27 07            [ 1]  402 	jreq	00102$
                                    403 ;	lib/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
      008827 AA 20            [ 1]  404 	or	a, #0x20
      008829 C7 51 48         [ 1]  405 	ld	0x5148, a
      00882C 20 05            [ 2]  406 	jra	00103$
      00882E                        407 00102$:
                                    408 ;	lib/src/stm8l15x_rtc.c: 585: RTC->CR1 &= (uint8_t)~RTC_CR1_RATIO;
      00882E A4 DF            [ 1]  409 	and	a, #0xdf
      008830 C7 51 48         [ 1]  410 	ld	0x5148, a
      008833                        411 00103$:
                                    412 ;	lib/src/stm8l15x_rtc.c: 589: RTC->WPR = 0xFF; 
      008833 35 FF 51 59      [ 1]  413 	mov	0x5159+0, #0xff
                                    414 ;	lib/src/stm8l15x_rtc.c: 590: }
      008837 84               [ 1]  415 	pop	a
      008838 81               [ 4]  416 	ret
                                    417 ;	lib/src/stm8l15x_rtc.c: 598: void RTC_BypassShadowCmd(FunctionalState NewState)
                                    418 ;	-----------------------------------------
                                    419 ;	 function RTC_BypassShadowCmd
                                    420 ;	-----------------------------------------
      008839                        421 _RTC_BypassShadowCmd:
      008839 88               [ 1]  422 	push	a
      00883A 6B 01            [ 1]  423 	ld	(0x01, sp), a
                                    424 ;	lib/src/stm8l15x_rtc.c: 604: RTC->WPR = 0xCA;
      00883C 35 CA 51 59      [ 1]  425 	mov	0x5159+0, #0xca
                                    426 ;	lib/src/stm8l15x_rtc.c: 605: RTC->WPR = 0x53;
      008840 35 53 51 59      [ 1]  427 	mov	0x5159+0, #0x53
                                    428 ;	lib/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
      008844 C6 51 48         [ 1]  429 	ld	a, 0x5148
                                    430 ;	lib/src/stm8l15x_rtc.c: 607: if (NewState != DISABLE)
      008847 0D 01            [ 1]  431 	tnz	(0x01, sp)
      008849 27 07            [ 1]  432 	jreq	00102$
                                    433 ;	lib/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
      00884B AA 10            [ 1]  434 	or	a, #0x10
      00884D C7 51 48         [ 1]  435 	ld	0x5148, a
      008850 20 05            [ 2]  436 	jra	00103$
      008852                        437 00102$:
                                    438 ;	lib/src/stm8l15x_rtc.c: 615: RTC->CR1 &= (uint8_t)~RTC_CR1_BYPSHAD;
      008852 A4 EF            [ 1]  439 	and	a, #0xef
      008854 C7 51 48         [ 1]  440 	ld	0x5148, a
      008857                        441 00103$:
                                    442 ;	lib/src/stm8l15x_rtc.c: 619: RTC->WPR = 0xFF; 
      008857 35 FF 51 59      [ 1]  443 	mov	0x5159+0, #0xff
                                    444 ;	lib/src/stm8l15x_rtc.c: 620: }
      00885B 84               [ 1]  445 	pop	a
      00885C 81               [ 4]  446 	ret
                                    447 ;	lib/src/stm8l15x_rtc.c: 659: ErrorStatus RTC_SetTime(RTC_Format_TypeDef RTC_Format,
                                    448 ;	-----------------------------------------
                                    449 ;	 function RTC_SetTime
                                    450 ;	-----------------------------------------
      00885D                        451 _RTC_SetTime:
      00885D 52 06            [ 2]  452 	sub	sp, #6
      00885F 6B 06            [ 1]  453 	ld	(0x06, sp), a
      008861 1F 04            [ 2]  454 	ldw	(0x04, sp), x
                                    455 ;	lib/src/stm8l15x_rtc.c: 701: RTC->WPR = 0xCA;
      008863 35 CA 51 59      [ 1]  456 	mov	0x5159+0, #0xca
                                    457 ;	lib/src/stm8l15x_rtc.c: 702: RTC->WPR = 0x53;
      008867 35 53 51 59      [ 1]  458 	mov	0x5159+0, #0x53
                                    459 ;	lib/src/stm8l15x_rtc.c: 705: if (RTC_EnterInitMode() == ERROR)
      00886B CD 87 C3         [ 4]  460 	call	_RTC_EnterInitMode
      00886E 4D               [ 1]  461 	tnz	a
      00886F 26 07            [ 1]  462 	jrne	00114$
                                    463 ;	lib/src/stm8l15x_rtc.c: 707: status = ERROR;
      008871 4F               [ 1]  464 	clr	a
                                    465 ;	lib/src/stm8l15x_rtc.c: 709: RTC->WPR = 0xFF; 
      008872 35 FF 51 59      [ 1]  466 	mov	0x5159+0, #0xff
      008876 20 69            [ 2]  467 	jra	00115$
      008878                        468 00114$:
                                    469 ;	lib/src/stm8l15x_rtc.c: 714: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
      008878 72 0D 51 48 07   [ 2]  470 	btjf	0x5148, #6, 00102$
                                    471 ;	lib/src/stm8l15x_rtc.c: 717: temp = RTC_TimeStruct->RTC_H12;
      00887D 1E 04            [ 2]  472 	ldw	x, (0x04, sp)
      00887F E6 03            [ 1]  473 	ld	a, (0x3, x)
      008881 6B 01            [ 1]  474 	ld	(0x01, sp), a
                                    475 ;	lib/src/stm8l15x_rtc.c: 721: temp = 0;
      008883 C5                     476 	.byte 0xc5
      008884                        477 00102$:
      008884 0F 01            [ 1]  478 	clr	(0x01, sp)
      008886                        479 00103$:
                                    480 ;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
      008886 1E 04            [ 2]  481 	ldw	x, (0x04, sp)
                                    482 ;	lib/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
      008888 16 04            [ 2]  483 	ldw	y, (0x04, sp)
      00888A 90 5C            [ 1]  484 	incw	y
      00888C 17 02            [ 2]  485 	ldw	(0x02, sp), y
                                    486 ;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
      00888E E6 02            [ 1]  487 	ld	a, (0x2, x)
                                    488 ;	lib/src/stm8l15x_rtc.c: 724: if (RTC_Format != RTC_Format_BIN)
      008890 0D 06            [ 1]  489 	tnz	(0x06, sp)
      008892 27 13            [ 1]  490 	jreq	00105$
                                    491 ;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
      008894 C7 51 40         [ 1]  492 	ld	0x5140, a
                                    493 ;	lib/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
      008897 1E 02            [ 2]  494 	ldw	x, (0x02, sp)
      008899 F6               [ 1]  495 	ld	a, (x)
      00889A C7 51 41         [ 1]  496 	ld	0x5141, a
                                    497 ;	lib/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
      00889D 1E 04            [ 2]  498 	ldw	x, (0x04, sp)
      00889F F6               [ 1]  499 	ld	a, (x)
      0088A0 1A 01            [ 1]  500 	or	a, (0x01, sp)
      0088A2 C7 51 42         [ 1]  501 	ld	0x5142, a
      0088A5 20 1A            [ 2]  502 	jra	00106$
      0088A7                        503 00105$:
                                    504 ;	lib/src/stm8l15x_rtc.c: 732: RTC->TR1 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Seconds));
      0088A7 CD 8F E2         [ 4]  505 	call	_ByteToBcd2
      0088AA C7 51 40         [ 1]  506 	ld	0x5140, a
                                    507 ;	lib/src/stm8l15x_rtc.c: 733: RTC->TR2 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Minutes)) ;
      0088AD 1E 02            [ 2]  508 	ldw	x, (0x02, sp)
      0088AF F6               [ 1]  509 	ld	a, (x)
      0088B0 CD 8F E2         [ 4]  510 	call	_ByteToBcd2
      0088B3 C7 51 41         [ 1]  511 	ld	0x5141, a
                                    512 ;	lib/src/stm8l15x_rtc.c: 734: RTC->TR3 = (uint8_t)( temp | ByteToBcd2(RTC_TimeStruct->RTC_Hours));
      0088B6 1E 04            [ 2]  513 	ldw	x, (0x04, sp)
      0088B8 F6               [ 1]  514 	ld	a, (x)
      0088B9 CD 8F E2         [ 4]  515 	call	_ByteToBcd2
      0088BC 1A 01            [ 1]  516 	or	a, (0x01, sp)
      0088BE C7 51 42         [ 1]  517 	ld	0x5142, a
      0088C1                        518 00106$:
                                    519 ;	lib/src/stm8l15x_rtc.c: 737: (void)(RTC->DR3);
      0088C1 C6 51 46         [ 1]  520 	ld	a, 0x5146
                                    521 ;	lib/src/stm8l15x_rtc.c: 740: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
      0088C4 72 1F 51 4C      [ 1]  522 	bres	0x514c, #7
                                    523 ;	lib/src/stm8l15x_rtc.c: 743: RTC->WPR = 0xFF; 
      0088C8 35 FF 51 59      [ 1]  524 	mov	0x5159+0, #0xff
                                    525 ;	lib/src/stm8l15x_rtc.c: 746: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
      0088CC C6 51 48         [ 1]  526 	ld	a, 0x5148
      0088CF A5 10            [ 1]  527 	bcp	a, #0x10
      0088D1 26 0C            [ 1]  528 	jrne	00111$
                                    529 ;	lib/src/stm8l15x_rtc.c: 748: if (RTC_WaitForSynchro() == ERROR)
      0088D3 CD 87 E9         [ 4]  530 	call	_RTC_WaitForSynchro
      0088D6 4D               [ 1]  531 	tnz	a
      0088D7 26 03            [ 1]  532 	jrne	00108$
                                    533 ;	lib/src/stm8l15x_rtc.c: 750: status = ERROR;
      0088D9 4F               [ 1]  534 	clr	a
      0088DA 20 05            [ 2]  535 	jra	00115$
      0088DC                        536 00108$:
                                    537 ;	lib/src/stm8l15x_rtc.c: 754: status = SUCCESS;
      0088DC A6 01            [ 1]  538 	ld	a, #0x01
                                    539 ;	lib/src/stm8l15x_rtc.c: 759: status = SUCCESS;
      0088DE C5                     540 	.byte 0xc5
      0088DF                        541 00111$:
      0088DF A6 01            [ 1]  542 	ld	a, #0x01
      0088E1                        543 00115$:
                                    544 ;	lib/src/stm8l15x_rtc.c: 763: return (ErrorStatus)status;
                                    545 ;	lib/src/stm8l15x_rtc.c: 764: }
      0088E1 5B 06            [ 2]  546 	addw	sp, #6
      0088E3 81               [ 4]  547 	ret
                                    548 ;	lib/src/stm8l15x_rtc.c: 775: void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct)
                                    549 ;	-----------------------------------------
                                    550 ;	 function RTC_TimeStructInit
                                    551 ;	-----------------------------------------
      0088E4                        552 _RTC_TimeStructInit:
                                    553 ;	lib/src/stm8l15x_rtc.c: 778: RTC_TimeStruct->RTC_H12 = RTC_H12_AM;
      0088E4 90 93            [ 1]  554 	ldw	y, x
      0088E6 6F 03            [ 1]  555 	clr	(0x0003, x)
                                    556 ;	lib/src/stm8l15x_rtc.c: 779: RTC_TimeStruct->RTC_Hours = 0;
      0088E8 90 7F            [ 1]  557 	clr	(y)
                                    558 ;	lib/src/stm8l15x_rtc.c: 780: RTC_TimeStruct->RTC_Minutes = 0;
      0088EA 93               [ 1]  559 	ldw	x, y
      0088EB 5C               [ 1]  560 	incw	x
      0088EC 7F               [ 1]  561 	clr	(x)
                                    562 ;	lib/src/stm8l15x_rtc.c: 781: RTC_TimeStruct->RTC_Seconds = 0;
      0088ED 93               [ 1]  563 	ldw	x, y
      0088EE 5C               [ 1]  564 	incw	x
      0088EF 5C               [ 1]  565 	incw	x
      0088F0 7F               [ 1]  566 	clr	(x)
                                    567 ;	lib/src/stm8l15x_rtc.c: 782: }
      0088F1 81               [ 4]  568 	ret
                                    569 ;	lib/src/stm8l15x_rtc.c: 798: void RTC_GetTime(RTC_Format_TypeDef RTC_Format,
                                    570 ;	-----------------------------------------
                                    571 ;	 function RTC_GetTime
                                    572 ;	-----------------------------------------
      0088F2                        573 _RTC_GetTime:
      0088F2 52 06            [ 2]  574 	sub	sp, #6
      0088F4 6B 06            [ 1]  575 	ld	(0x06, sp), a
                                    576 ;	lib/src/stm8l15x_rtc.c: 808: RTC_TimeStruct->RTC_Seconds = RTC->TR1;
      0088F6 90 93            [ 1]  577 	ldw	y, x
      0088F8 5C               [ 1]  578 	incw	x
      0088F9 5C               [ 1]  579 	incw	x
      0088FA 1F 01            [ 2]  580 	ldw	(0x01, sp), x
      0088FC C6 51 40         [ 1]  581 	ld	a, 0x5140
      0088FF 1E 01            [ 2]  582 	ldw	x, (0x01, sp)
      008901 F7               [ 1]  583 	ld	(x), a
                                    584 ;	lib/src/stm8l15x_rtc.c: 811: RTC_TimeStruct->RTC_Minutes = RTC->TR2;
      008902 93               [ 1]  585 	ldw	x, y
      008903 5C               [ 1]  586 	incw	x
      008904 1F 03            [ 2]  587 	ldw	(0x03, sp), x
      008906 C6 51 41         [ 1]  588 	ld	a, 0x5141
      008909 1E 03            [ 2]  589 	ldw	x, (0x03, sp)
      00890B F7               [ 1]  590 	ld	(x), a
                                    591 ;	lib/src/stm8l15x_rtc.c: 814: tmpreg = (uint8_t)RTC->TR3;
      00890C C6 51 42         [ 1]  592 	ld	a, 0x5142
      00890F 6B 05            [ 1]  593 	ld	(0x05, sp), a
                                    594 ;	lib/src/stm8l15x_rtc.c: 817: (void) (RTC->DR3) ;
      008911 C6 51 46         [ 1]  595 	ld	a, 0x5146
                                    596 ;	lib/src/stm8l15x_rtc.c: 821: RTC_TimeStruct->RTC_Hours = (uint8_t)(tmpreg & (uint8_t)~(RTC_TR3_PM));
      008914 7B 05            [ 1]  597 	ld	a, (0x05, sp)
      008916 A4 BF            [ 1]  598 	and	a, #0xbf
      008918 90 F7            [ 1]  599 	ld	(y), a
                                    600 ;	lib/src/stm8l15x_rtc.c: 824: RTC_TimeStruct->RTC_H12 = (RTC_H12_TypeDef)(tmpreg & RTC_TR3_PM);
      00891A 93               [ 1]  601 	ldw	x, y
      00891B 1C 00 03         [ 2]  602 	addw	x, #0x0003
      00891E 7B 05            [ 1]  603 	ld	a, (0x05, sp)
      008920 A4 40            [ 1]  604 	and	a, #0x40
      008922 F7               [ 1]  605 	ld	(x), a
                                    606 ;	lib/src/stm8l15x_rtc.c: 827: if (RTC_Format == RTC_Format_BIN)
      008923 0D 06            [ 1]  607 	tnz	(0x06, sp)
      008925 26 1D            [ 1]  608 	jrne	00103$
                                    609 ;	lib/src/stm8l15x_rtc.c: 830: RTC_TimeStruct->RTC_Hours = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Hours);
      008927 90 F6            [ 1]  610 	ld	a, (y)
      008929 90 89            [ 2]  611 	pushw	y
      00892B CD 8F F5         [ 4]  612 	call	_Bcd2ToByte
      00892E 90 85            [ 2]  613 	popw	y
      008930 90 F7            [ 1]  614 	ld	(y), a
                                    615 ;	lib/src/stm8l15x_rtc.c: 831: RTC_TimeStruct->RTC_Minutes = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Minutes);
      008932 1E 03            [ 2]  616 	ldw	x, (0x03, sp)
      008934 F6               [ 1]  617 	ld	a, (x)
      008935 CD 8F F5         [ 4]  618 	call	_Bcd2ToByte
      008938 1E 03            [ 2]  619 	ldw	x, (0x03, sp)
      00893A F7               [ 1]  620 	ld	(x), a
                                    621 ;	lib/src/stm8l15x_rtc.c: 832: RTC_TimeStruct->RTC_Seconds = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Seconds);
      00893B 1E 01            [ 2]  622 	ldw	x, (0x01, sp)
      00893D F6               [ 1]  623 	ld	a, (x)
      00893E CD 8F F5         [ 4]  624 	call	_Bcd2ToByte
      008941 1E 01            [ 2]  625 	ldw	x, (0x01, sp)
      008943 F7               [ 1]  626 	ld	(x), a
      008944                        627 00103$:
                                    628 ;	lib/src/stm8l15x_rtc.c: 834: }
      008944 5B 06            [ 2]  629 	addw	sp, #6
      008946 81               [ 4]  630 	ret
                                    631 ;	lib/src/stm8l15x_rtc.c: 845: uint16_t RTC_GetSubSecond(void)
                                    632 ;	-----------------------------------------
                                    633 ;	 function RTC_GetSubSecond
                                    634 ;	-----------------------------------------
      008947                        635 _RTC_GetSubSecond:
      008947 52 04            [ 2]  636 	sub	sp, #4
                                    637 ;	lib/src/stm8l15x_rtc.c: 851: ssrhreg = RTC->SSRH;
      008949 C6 51 57         [ 1]  638 	ld	a, 0x5157
      00894C 95               [ 1]  639 	ld	xh, a
                                    640 ;	lib/src/stm8l15x_rtc.c: 852: ssrlreg = RTC->SSRL;
      00894D C6 51 58         [ 1]  641 	ld	a, 0x5158
      008950 97               [ 1]  642 	ld	xl, a
                                    643 ;	lib/src/stm8l15x_rtc.c: 855: (void) (RTC->DR3);
      008951 C6 51 46         [ 1]  644 	ld	a, 0x5146
                                    645 ;	lib/src/stm8l15x_rtc.c: 858: ssrreg = (uint16_t)((uint16_t)((uint16_t)ssrhreg << 8) | (uint16_t)(ssrlreg));
      008954 0F 02            [ 1]  646 	clr	(0x02, sp)
      008956 9F               [ 1]  647 	ld	a, xl
      008957 0F 03            [ 1]  648 	clr	(0x03, sp)
      008959 1A 02            [ 1]  649 	or	a, (0x02, sp)
      00895B 02               [ 1]  650 	rlwa	x
      00895C 1A 03            [ 1]  651 	or	a, (0x03, sp)
                                    652 ;	lib/src/stm8l15x_rtc.c: 859: return (uint16_t)(ssrreg);
      00895E 95               [ 1]  653 	ld	xh, a
                                    654 ;	lib/src/stm8l15x_rtc.c: 860: }
      00895F 5B 04            [ 2]  655 	addw	sp, #4
      008961 81               [ 4]  656 	ret
                                    657 ;	lib/src/stm8l15x_rtc.c: 876: ErrorStatus RTC_SetDate(RTC_Format_TypeDef RTC_Format,
                                    658 ;	-----------------------------------------
                                    659 ;	 function RTC_SetDate
                                    660 ;	-----------------------------------------
      008962                        661 _RTC_SetDate:
      008962 52 08            [ 2]  662 	sub	sp, #8
      008964 6B 08            [ 1]  663 	ld	(0x08, sp), a
                                    664 ;	lib/src/stm8l15x_rtc.c: 881: if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & TEN_VALUE_BCD) == TEN_VALUE_BCD))
      008966 1F 06            [ 2]  665 	ldw	(0x06, sp), x
      008968 5C               [ 1]  666 	incw	x
      008969 1F 01            [ 2]  667 	ldw	(0x01, sp), x
      00896B 0D 08            [ 1]  668 	tnz	(0x08, sp)
      00896D 26 12            [ 1]  669 	jrne	00102$
      00896F 1E 01            [ 2]  670 	ldw	x, (0x01, sp)
      008971 F6               [ 1]  671 	ld	a, (x)
      008972 97               [ 1]  672 	ld	xl, a
      008973 A4 10            [ 1]  673 	and	a, #0x10
      008975 A1 10            [ 1]  674 	cp	a, #0x10
      008977 26 08            [ 1]  675 	jrne	00102$
                                    676 ;	lib/src/stm8l15x_rtc.c: 883: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)((RTC_DateStruct->RTC_Month & (uint8_t)~(TEN_VALUE_BCD)) + TEN_VALUE_BIN);
      008979 9F               [ 1]  677 	ld	a, xl
      00897A A4 EF            [ 1]  678 	and	a, #0xef
      00897C AB 0A            [ 1]  679 	add	a, #0x0a
      00897E 1E 01            [ 2]  680 	ldw	x, (0x01, sp)
      008980 F7               [ 1]  681 	ld	(x), a
      008981                        682 00102$:
                                    683 ;	lib/src/stm8l15x_rtc.c: 907: RTC->WPR = 0xCA;
      008981 35 CA 51 59      [ 1]  684 	mov	0x5159+0, #0xca
                                    685 ;	lib/src/stm8l15x_rtc.c: 908: RTC->WPR = 0x53;
      008985 35 53 51 59      [ 1]  686 	mov	0x5159+0, #0x53
                                    687 ;	lib/src/stm8l15x_rtc.c: 911: if (RTC_EnterInitMode() == ERROR)
      008989 CD 87 C3         [ 4]  688 	call	_RTC_EnterInitMode
      00898C 4D               [ 1]  689 	tnz	a
      00898D 26 07            [ 1]  690 	jrne	00114$
                                    691 ;	lib/src/stm8l15x_rtc.c: 913: status = ERROR;
      00898F 4F               [ 1]  692 	clr	a
                                    693 ;	lib/src/stm8l15x_rtc.c: 915: RTC->WPR = 0xFF; 
      008990 35 FF 51 59      [ 1]  694 	mov	0x5159+0, #0xff
      008994 20 6F            [ 2]  695 	jra	00115$
      008996                        696 00114$:
                                    697 ;	lib/src/stm8l15x_rtc.c: 919: (void)(RTC->TR1);
      008996 C6 51 40         [ 1]  698 	ld	a, 0x5140
                                    699 ;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
      008999 1E 06            [ 2]  700 	ldw	x, (0x06, sp)
                                    701 ;	lib/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
      00899B 16 06            [ 2]  702 	ldw	y, (0x06, sp)
      00899D 72 A9 00 03      [ 2]  703 	addw	y, #0x0003
      0089A1 17 03            [ 2]  704 	ldw	(0x03, sp), y
                                    705 ;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
      0089A3 E6 02            [ 1]  706 	ld	a, (0x2, x)
                                    707 ;	lib/src/stm8l15x_rtc.c: 922: if (RTC_Format != RTC_Format_BIN)
      0089A5 0D 08            [ 1]  708 	tnz	(0x08, sp)
      0089A7 27 1C            [ 1]  709 	jreq	00105$
                                    710 ;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
      0089A9 C7 51 44         [ 1]  711 	ld	0x5144, a
                                    712 ;	lib/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
      0089AC 1E 01            [ 2]  713 	ldw	x, (0x01, sp)
      0089AE F6               [ 1]  714 	ld	a, (x)
      0089AF 6B 05            [ 1]  715 	ld	(0x05, sp), a
      0089B1 1E 06            [ 2]  716 	ldw	x, (0x06, sp)
      0089B3 F6               [ 1]  717 	ld	a, (x)
      0089B4 4E               [ 1]  718 	swap	a
      0089B5 A4 F0            [ 1]  719 	and	a, #0xf0
      0089B7 48               [ 1]  720 	sll	a
      0089B8 1A 05            [ 1]  721 	or	a, (0x05, sp)
      0089BA C7 51 45         [ 1]  722 	ld	0x5145, a
                                    723 ;	lib/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
      0089BD 1E 03            [ 2]  724 	ldw	x, (0x03, sp)
      0089BF F6               [ 1]  725 	ld	a, (x)
      0089C0 C7 51 46         [ 1]  726 	ld	0x5146, a
      0089C3 20 23            [ 2]  727 	jra	00106$
      0089C5                        728 00105$:
                                    729 ;	lib/src/stm8l15x_rtc.c: 930: RTC->DR1 = (uint8_t)(ByteToBcd2 ((uint8_t)RTC_DateStruct->RTC_Date));
      0089C5 CD 8F E2         [ 4]  730 	call	_ByteToBcd2
      0089C8 C7 51 44         [ 1]  731 	ld	0x5144, a
                                    732 ;	lib/src/stm8l15x_rtc.c: 931: RTC->DR2 = (uint8_t)((ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Month)) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
      0089CB 1E 01            [ 2]  733 	ldw	x, (0x01, sp)
      0089CD F6               [ 1]  734 	ld	a, (x)
      0089CE CD 8F E2         [ 4]  735 	call	_ByteToBcd2
      0089D1 6B 05            [ 1]  736 	ld	(0x05, sp), a
      0089D3 1E 06            [ 2]  737 	ldw	x, (0x06, sp)
      0089D5 F6               [ 1]  738 	ld	a, (x)
      0089D6 4E               [ 1]  739 	swap	a
      0089D7 A4 F0            [ 1]  740 	and	a, #0xf0
      0089D9 48               [ 1]  741 	sll	a
      0089DA 1A 05            [ 1]  742 	or	a, (0x05, sp)
      0089DC C7 51 45         [ 1]  743 	ld	0x5145, a
                                    744 ;	lib/src/stm8l15x_rtc.c: 932: RTC->DR3 = (uint8_t)(ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Year));
      0089DF 1E 03            [ 2]  745 	ldw	x, (0x03, sp)
      0089E1 F6               [ 1]  746 	ld	a, (x)
      0089E2 CD 8F E2         [ 4]  747 	call	_ByteToBcd2
      0089E5 C7 51 46         [ 1]  748 	ld	0x5146, a
      0089E8                        749 00106$:
                                    750 ;	lib/src/stm8l15x_rtc.c: 936: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
      0089E8 72 1F 51 4C      [ 1]  751 	bres	0x514c, #7
                                    752 ;	lib/src/stm8l15x_rtc.c: 939: RTC->WPR = 0xFF; 
      0089EC 35 FF 51 59      [ 1]  753 	mov	0x5159+0, #0xff
                                    754 ;	lib/src/stm8l15x_rtc.c: 942: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
      0089F0 C6 51 48         [ 1]  755 	ld	a, 0x5148
      0089F3 A5 10            [ 1]  756 	bcp	a, #0x10
      0089F5 26 0C            [ 1]  757 	jrne	00111$
                                    758 ;	lib/src/stm8l15x_rtc.c: 944: if (RTC_WaitForSynchro() == ERROR)
      0089F7 CD 87 E9         [ 4]  759 	call	_RTC_WaitForSynchro
      0089FA 4D               [ 1]  760 	tnz	a
      0089FB 26 03            [ 1]  761 	jrne	00108$
                                    762 ;	lib/src/stm8l15x_rtc.c: 946: status = ERROR;
      0089FD 4F               [ 1]  763 	clr	a
      0089FE 20 05            [ 2]  764 	jra	00115$
      008A00                        765 00108$:
                                    766 ;	lib/src/stm8l15x_rtc.c: 950: status = SUCCESS;
      008A00 A6 01            [ 1]  767 	ld	a, #0x01
                                    768 ;	lib/src/stm8l15x_rtc.c: 955: status = SUCCESS;
      008A02 C5                     769 	.byte 0xc5
      008A03                        770 00111$:
      008A03 A6 01            [ 1]  771 	ld	a, #0x01
      008A05                        772 00115$:
                                    773 ;	lib/src/stm8l15x_rtc.c: 959: return (ErrorStatus)status;
                                    774 ;	lib/src/stm8l15x_rtc.c: 960: }
      008A05 5B 08            [ 2]  775 	addw	sp, #8
      008A07 81               [ 4]  776 	ret
                                    777 ;	lib/src/stm8l15x_rtc.c: 968: void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct)
                                    778 ;	-----------------------------------------
                                    779 ;	 function RTC_DateStructInit
                                    780 ;	-----------------------------------------
      008A08                        781 _RTC_DateStructInit:
      008A08 51               [ 1]  782 	exgw	x, y
                                    783 ;	lib/src/stm8l15x_rtc.c: 971: RTC_DateStruct->RTC_WeekDay = RTC_Weekday_Monday;
      008A09 A6 01            [ 1]  784 	ld	a, #0x01
      008A0B 90 F7            [ 1]  785 	ld	(y), a
                                    786 ;	lib/src/stm8l15x_rtc.c: 972: RTC_DateStruct->RTC_Date = 1;
      008A0D 93               [ 1]  787 	ldw	x, y
      008A0E 5C               [ 1]  788 	incw	x
      008A0F 5C               [ 1]  789 	incw	x
      008A10 A6 01            [ 1]  790 	ld	a, #0x01
      008A12 F7               [ 1]  791 	ld	(x), a
                                    792 ;	lib/src/stm8l15x_rtc.c: 973: RTC_DateStruct->RTC_Month = RTC_Month_January;
      008A13 93               [ 1]  793 	ldw	x, y
      008A14 5C               [ 1]  794 	incw	x
      008A15 A6 01            [ 1]  795 	ld	a, #0x01
      008A17 F7               [ 1]  796 	ld	(x), a
                                    797 ;	lib/src/stm8l15x_rtc.c: 974: RTC_DateStruct->RTC_Year = 0;
      008A18 93               [ 1]  798 	ldw	x, y
      008A19 6F 03            [ 1]  799 	clr	(0x0003, x)
                                    800 ;	lib/src/stm8l15x_rtc.c: 975: }
      008A1B 81               [ 4]  801 	ret
                                    802 ;	lib/src/stm8l15x_rtc.c: 988: void RTC_GetDate(RTC_Format_TypeDef RTC_Format,
                                    803 ;	-----------------------------------------
                                    804 ;	 function RTC_GetDate
                                    805 ;	-----------------------------------------
      008A1C                        806 _RTC_GetDate:
      008A1C 52 06            [ 2]  807 	sub	sp, #6
      008A1E 6B 06            [ 1]  808 	ld	(0x06, sp), a
      008A20 51               [ 1]  809 	exgw	x, y
                                    810 ;	lib/src/stm8l15x_rtc.c: 997: (void) (RTC->TR1) ;
      008A21 C6 51 40         [ 1]  811 	ld	a, 0x5140
                                    812 ;	lib/src/stm8l15x_rtc.c: 998: RTC_DateStruct->RTC_Date = (uint8_t)(RTC->DR1);
      008A24 93               [ 1]  813 	ldw	x, y
      008A25 5C               [ 1]  814 	incw	x
      008A26 5C               [ 1]  815 	incw	x
      008A27 1F 01            [ 2]  816 	ldw	(0x01, sp), x
      008A29 C6 51 44         [ 1]  817 	ld	a, 0x5144
      008A2C 1E 01            [ 2]  818 	ldw	x, (0x01, sp)
      008A2E F7               [ 1]  819 	ld	(x), a
                                    820 ;	lib/src/stm8l15x_rtc.c: 999: tmpreg = (uint8_t)RTC->DR2;
      008A2F C6 51 45         [ 1]  821 	ld	a, 0x5145
      008A32 6B 03            [ 1]  822 	ld	(0x03, sp), a
                                    823 ;	lib/src/stm8l15x_rtc.c: 1000: RTC_DateStruct->RTC_Year = (uint8_t)(RTC->DR3);
      008A34 93               [ 1]  824 	ldw	x, y
      008A35 1C 00 03         [ 2]  825 	addw	x, #0x0003
      008A38 1F 04            [ 2]  826 	ldw	(0x04, sp), x
      008A3A C6 51 46         [ 1]  827 	ld	a, 0x5146
      008A3D 1E 04            [ 2]  828 	ldw	x, (0x04, sp)
      008A3F F7               [ 1]  829 	ld	(x), a
                                    830 ;	lib/src/stm8l15x_rtc.c: 1003: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)(tmpreg & (uint8_t)(RTC_DR2_MT | RTC_DR2_MU));
      008A40 93               [ 1]  831 	ldw	x, y
      008A41 5C               [ 1]  832 	incw	x
      008A42 7B 03            [ 1]  833 	ld	a, (0x03, sp)
      008A44 A4 1F            [ 1]  834 	and	a, #0x1f
      008A46 F7               [ 1]  835 	ld	(x), a
                                    836 ;	lib/src/stm8l15x_rtc.c: 1004: RTC_DateStruct->RTC_WeekDay = (RTC_Weekday_TypeDef)((uint8_t)((uint8_t)tmpreg & (uint8_t)(RTC_DR2_WDU)) >> (uint8_t)5);
      008A47 7B 03            [ 1]  837 	ld	a, (0x03, sp)
      008A49 A4 E0            [ 1]  838 	and	a, #0xe0
      008A4B 4E               [ 1]  839 	swap	a
      008A4C A4 0F            [ 1]  840 	and	a, #0x0f
      008A4E 44               [ 1]  841 	srl	a
      008A4F 90 F7            [ 1]  842 	ld	(y), a
                                    843 ;	lib/src/stm8l15x_rtc.c: 1007: if (RTC_Format == RTC_Format_BIN)
      008A51 0D 06            [ 1]  844 	tnz	(0x06, sp)
      008A53 26 1D            [ 1]  845 	jrne	00103$
                                    846 ;	lib/src/stm8l15x_rtc.c: 1010: RTC_DateStruct->RTC_Year = (uint8_t)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Year);
      008A55 16 04            [ 2]  847 	ldw	y, (0x04, sp)
      008A57 90 F6            [ 1]  848 	ld	a, (y)
      008A59 89               [ 2]  849 	pushw	x
      008A5A CD 8F F5         [ 4]  850 	call	_Bcd2ToByte
      008A5D 85               [ 2]  851 	popw	x
      008A5E 16 04            [ 2]  852 	ldw	y, (0x04, sp)
      008A60 90 F7            [ 1]  853 	ld	(y), a
                                    854 ;	lib/src/stm8l15x_rtc.c: 1011: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Month);
      008A62 F6               [ 1]  855 	ld	a, (x)
      008A63 89               [ 2]  856 	pushw	x
      008A64 CD 8F F5         [ 4]  857 	call	_Bcd2ToByte
      008A67 85               [ 2]  858 	popw	x
      008A68 F7               [ 1]  859 	ld	(x), a
                                    860 ;	lib/src/stm8l15x_rtc.c: 1012: RTC_DateStruct->RTC_Date = (uint8_t)(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date));
      008A69 1E 01            [ 2]  861 	ldw	x, (0x01, sp)
      008A6B F6               [ 1]  862 	ld	a, (x)
      008A6C CD 8F F5         [ 4]  863 	call	_Bcd2ToByte
      008A6F 1E 01            [ 2]  864 	ldw	x, (0x01, sp)
      008A71 F7               [ 1]  865 	ld	(x), a
      008A72                        866 00103$:
                                    867 ;	lib/src/stm8l15x_rtc.c: 1014: }
      008A72 5B 06            [ 2]  868 	addw	sp, #6
      008A74 81               [ 4]  869 	ret
                                    870 ;	lib/src/stm8l15x_rtc.c: 1044: void RTC_SetAlarm(RTC_Format_TypeDef RTC_Format,
                                    871 ;	-----------------------------------------
                                    872 ;	 function RTC_SetAlarm
                                    873 ;	-----------------------------------------
      008A75                        874 _RTC_SetAlarm:
      008A75 52 10            [ 2]  875 	sub	sp, #16
      008A77 6B 10            [ 1]  876 	ld	(0x10, sp), a
      008A79 1F 0E            [ 2]  877 	ldw	(0x0e, sp), x
                                    878 ;	lib/src/stm8l15x_rtc.c: 1107: RTC->WPR = 0xCA;
      008A7B 35 CA 51 59      [ 1]  879 	mov	0x5159+0, #0xca
                                    880 ;	lib/src/stm8l15x_rtc.c: 1108: RTC->WPR = 0x53;
      008A7F 35 53 51 59      [ 1]  881 	mov	0x5159+0, #0x53
                                    882 ;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
      008A83 16 0E            [ 2]  883 	ldw	y, (0x0e, sp)
      008A85 1E 0E            [ 2]  884 	ldw	x, (0x0e, sp)
      008A87 1C 00 04         [ 2]  885 	addw	x, #0x0004
      008A8A 1F 0A            [ 2]  886 	ldw	(0x0a, sp), x
                                    887 ;	lib/src/stm8l15x_rtc.c: 1117: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
      008A8C 1E 0E            [ 2]  888 	ldw	x, (0x0e, sp)
      008A8E 5C               [ 1]  889 	incw	x
      008A8F 1F 01            [ 2]  890 	ldw	(0x01, sp), x
                                    891 ;	lib/src/stm8l15x_rtc.c: 1120: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
      008A91 1E 0E            [ 2]  892 	ldw	x, (0x0e, sp)
      008A93 1C 00 03         [ 2]  893 	addw	x, #0x0003
      008A96 1F 03            [ 2]  894 	ldw	(0x03, sp), x
                                    895 ;	lib/src/stm8l15x_rtc.c: 1124: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
      008A98 1E 0E            [ 2]  896 	ldw	x, (0x0e, sp)
      008A9A 1C 00 06         [ 2]  897 	addw	x, #0x0006
      008A9D 1F 05            [ 2]  898 	ldw	(0x05, sp), x
      008A9F 1E 0E            [ 2]  899 	ldw	x, (0x0e, sp)
      008AA1 1C 00 05         [ 2]  900 	addw	x, #0x0005
      008AA4 1F 07            [ 2]  901 	ldw	(0x07, sp), x
                                    902 ;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
      008AA6 90 E6 02         [ 1]  903 	ld	a, (0x2, y)
      008AA9 6B 0C            [ 1]  904 	ld	(0x0c, sp), a
                                    905 ;	lib/src/stm8l15x_rtc.c: 1112: if (RTC_Format != RTC_Format_BIN)
      008AAB 0D 10            [ 1]  906 	tnz	(0x10, sp)
      008AAD 27 67            [ 1]  907 	jreq	00102$
                                    908 ;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
      008AAF 1E 0A            [ 2]  909 	ldw	x, (0x0a, sp)
      008AB1 F6               [ 1]  910 	ld	a, (x)
      008AB2 6B 0D            [ 1]  911 	ld	(0x0d, sp), a
      008AB4 A4 80            [ 1]  912 	and	a, #0x80
      008AB6 1A 0C            [ 1]  913 	or	a, (0x0c, sp)
      008AB8 6B 09            [ 1]  914 	ld	(0x09, sp), a
                                    915 ;	lib/src/stm8l15x_rtc.c: 1117: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
      008ABA 1E 01            [ 2]  916 	ldw	x, (0x01, sp)
      008ABC F6               [ 1]  917 	ld	a, (x)
      008ABD 6B 0B            [ 1]  918 	ld	(0x0b, sp), a
      008ABF 7B 0D            [ 1]  919 	ld	a, (0x0d, sp)
      008AC1 6B 0A            [ 1]  920 	ld	(0x0a, sp), a
      008AC3 48               [ 1]  921 	sll	a
      008AC4 6B 0D            [ 1]  922 	ld	(0x0d, sp), a
      008AC6 A4 80            [ 1]  923 	and	a, #0x80
      008AC8 6B 0D            [ 1]  924 	ld	(0x0d, sp), a
      008ACA 7B 0B            [ 1]  925 	ld	a, (0x0b, sp)
      008ACC 1A 0D            [ 1]  926 	or	a, (0x0d, sp)
      008ACE 6B 0D            [ 1]  927 	ld	(0x0d, sp), a
      008AD0 6B 0C            [ 1]  928 	ld	(0x0c, sp), a
                                    929 ;	lib/src/stm8l15x_rtc.c: 1120: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
      008AD2 1E 0E            [ 2]  930 	ldw	x, (0x0e, sp)
      008AD4 F6               [ 1]  931 	ld	a, (x)
      008AD5 6B 0B            [ 1]  932 	ld	(0x0b, sp), a
      008AD7 1E 03            [ 2]  933 	ldw	x, (0x03, sp)
      008AD9 F6               [ 1]  934 	ld	a, (x)
      008ADA 6B 0D            [ 1]  935 	ld	(0x0d, sp), a
      008ADC 7B 0B            [ 1]  936 	ld	a, (0x0b, sp)
      008ADE 1A 0D            [ 1]  937 	or	a, (0x0d, sp)
      008AE0 6B 0B            [ 1]  938 	ld	(0x0b, sp), a
      008AE2 7B 0A            [ 1]  939 	ld	a, (0x0a, sp)
      008AE4 48               [ 1]  940 	sll	a
      008AE5 48               [ 1]  941 	sll	a
      008AE6 6B 0D            [ 1]  942 	ld	(0x0d, sp), a
      008AE8 A4 80            [ 1]  943 	and	a, #0x80
      008AEA 6B 0D            [ 1]  944 	ld	(0x0d, sp), a
      008AEC 7B 0B            [ 1]  945 	ld	a, (0x0b, sp)
      008AEE 1A 0D            [ 1]  946 	or	a, (0x0d, sp)
      008AF0 6B 0D            [ 1]  947 	ld	(0x0d, sp), a
                                    948 ;	lib/src/stm8l15x_rtc.c: 1124: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
      008AF2 1E 05            [ 2]  949 	ldw	x, (0x05, sp)
      008AF4 F6               [ 1]  950 	ld	a, (x)
      008AF5 6B 0B            [ 1]  951 	ld	(0x0b, sp), a
      008AF7 1E 07            [ 2]  952 	ldw	x, (0x07, sp)
      008AF9 F6               [ 1]  953 	ld	a, (x)
      008AFA 6B 06            [ 1]  954 	ld	(0x06, sp), a
      008AFC 7B 0B            [ 1]  955 	ld	a, (0x0b, sp)
      008AFE 1A 06            [ 1]  956 	or	a, (0x06, sp)
      008B00 6B 0B            [ 1]  957 	ld	(0x0b, sp), a
      008B02 08 0A            [ 1]  958 	sll	(0x0a, sp)
      008B04 08 0A            [ 1]  959 	sll	(0x0a, sp)
      008B06 08 0A            [ 1]  960 	sll	(0x0a, sp)
      008B08 7B 0A            [ 1]  961 	ld	a, (0x0a, sp)
      008B0A A4 80            [ 1]  962 	and	a, #0x80
      008B0C 6B 0A            [ 1]  963 	ld	(0x0a, sp), a
      008B0E 7B 0B            [ 1]  964 	ld	a, (0x0b, sp)
      008B10 1A 0A            [ 1]  965 	or	a, (0x0a, sp)
      008B12 6B 0B            [ 1]  966 	ld	(0x0b, sp), a
      008B14 20 55            [ 2]  967 	jra	00103$
      008B16                        968 00102$:
                                    969 ;	lib/src/stm8l15x_rtc.c: 1131: tmpreg1 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)) | \
      008B16 7B 0C            [ 1]  970 	ld	a, (0x0c, sp)
      008B18 CD 8F E2         [ 4]  971 	call	_ByteToBcd2
      008B1B 6B 0D            [ 1]  972 	ld	(0x0d, sp), a
      008B1D 1E 0A            [ 2]  973 	ldw	x, (0x0a, sp)
      008B1F F6               [ 1]  974 	ld	a, (x)
      008B20 A4 80            [ 1]  975 	and	a, #0x80
      008B22 1A 0D            [ 1]  976 	or	a, (0x0d, sp)
      008B24 6B 09            [ 1]  977 	ld	(0x09, sp), a
                                    978 ;	lib/src/stm8l15x_rtc.c: 1134: tmpreg2 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes)) | \
      008B26 1E 01            [ 2]  979 	ldw	x, (0x01, sp)
      008B28 F6               [ 1]  980 	ld	a, (x)
      008B29 CD 8F E2         [ 4]  981 	call	_ByteToBcd2
      008B2C 6B 0D            [ 1]  982 	ld	(0x0d, sp), a
      008B2E 1E 0A            [ 2]  983 	ldw	x, (0x0a, sp)
      008B30 F6               [ 1]  984 	ld	a, (x)
      008B31 48               [ 1]  985 	sll	a
      008B32 A4 80            [ 1]  986 	and	a, #0x80
      008B34 1A 0D            [ 1]  987 	or	a, (0x0d, sp)
      008B36 6B 0C            [ 1]  988 	ld	(0x0c, sp), a
                                    989 ;	lib/src/stm8l15x_rtc.c: 1137: tmpreg3 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours)) | \
      008B38 1E 0E            [ 2]  990 	ldw	x, (0x0e, sp)
      008B3A F6               [ 1]  991 	ld	a, (x)
      008B3B CD 8F E2         [ 4]  992 	call	_ByteToBcd2
      008B3E 6B 0D            [ 1]  993 	ld	(0x0d, sp), a
      008B40 1E 03            [ 2]  994 	ldw	x, (0x03, sp)
      008B42 F6               [ 1]  995 	ld	a, (x)
      008B43 1A 0D            [ 1]  996 	or	a, (0x0d, sp)
      008B45 6B 0D            [ 1]  997 	ld	(0x0d, sp), a
      008B47 1E 0A            [ 2]  998 	ldw	x, (0x0a, sp)
      008B49 F6               [ 1]  999 	ld	a, (x)
      008B4A 48               [ 1] 1000 	sll	a
      008B4B 48               [ 1] 1001 	sll	a
      008B4C A4 80            [ 1] 1002 	and	a, #0x80
      008B4E 1A 0D            [ 1] 1003 	or	a, (0x0d, sp)
      008B50 6B 0D            [ 1] 1004 	ld	(0x0d, sp), a
                                   1005 ;	lib/src/stm8l15x_rtc.c: 1141: tmpreg4 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmDateWeekDay)) | \
      008B52 1E 05            [ 2] 1006 	ldw	x, (0x05, sp)
      008B54 F6               [ 1] 1007 	ld	a, (x)
      008B55 CD 8F E2         [ 4] 1008 	call	_ByteToBcd2
      008B58 6B 06            [ 1] 1009 	ld	(0x06, sp), a
      008B5A 1E 07            [ 2] 1010 	ldw	x, (0x07, sp)
      008B5C F6               [ 1] 1011 	ld	a, (x)
      008B5D 1A 06            [ 1] 1012 	or	a, (0x06, sp)
      008B5F 6B 08            [ 1] 1013 	ld	(0x08, sp), a
      008B61 1E 0A            [ 2] 1014 	ldw	x, (0x0a, sp)
      008B63 F6               [ 1] 1015 	ld	a, (x)
      008B64 48               [ 1] 1016 	sll	a
      008B65 48               [ 1] 1017 	sll	a
      008B66 48               [ 1] 1018 	sll	a
      008B67 A4 80            [ 1] 1019 	and	a, #0x80
      008B69 1A 08            [ 1] 1020 	or	a, (0x08, sp)
      008B6B                       1021 00103$:
                                   1022 ;	lib/src/stm8l15x_rtc.c: 1147: RTC->ALRMAR1 = tmpreg1;
      008B6B AE 51 5C         [ 2] 1023 	ldw	x, #0x515c
      008B6E 88               [ 1] 1024 	push	a
      008B6F 7B 0A            [ 1] 1025 	ld	a, (0x0a, sp)
      008B71 F7               [ 1] 1026 	ld	(x), a
      008B72 84               [ 1] 1027 	pop	a
                                   1028 ;	lib/src/stm8l15x_rtc.c: 1148: RTC->ALRMAR2 = tmpreg2;
      008B73 AE 51 5D         [ 2] 1029 	ldw	x, #0x515d
      008B76 88               [ 1] 1030 	push	a
      008B77 7B 0D            [ 1] 1031 	ld	a, (0x0d, sp)
      008B79 F7               [ 1] 1032 	ld	(x), a
      008B7A 84               [ 1] 1033 	pop	a
                                   1034 ;	lib/src/stm8l15x_rtc.c: 1149: RTC->ALRMAR3 = tmpreg3;
      008B7B AE 51 5E         [ 2] 1035 	ldw	x, #0x515e
      008B7E 88               [ 1] 1036 	push	a
      008B7F 7B 0E            [ 1] 1037 	ld	a, (0x0e, sp)
      008B81 F7               [ 1] 1038 	ld	(x), a
      008B82 84               [ 1] 1039 	pop	a
                                   1040 ;	lib/src/stm8l15x_rtc.c: 1150: RTC->ALRMAR4 = tmpreg4;
      008B83 C7 51 5F         [ 1] 1041 	ld	0x515f, a
                                   1042 ;	lib/src/stm8l15x_rtc.c: 1153: RTC->WPR = 0xFF; 
      008B86 35 FF 51 59      [ 1] 1043 	mov	0x5159+0, #0xff
                                   1044 ;	lib/src/stm8l15x_rtc.c: 1154: }
      008B8A 5B 10            [ 2] 1045 	addw	sp, #16
      008B8C 81               [ 4] 1046 	ret
                                   1047 ;	lib/src/stm8l15x_rtc.c: 1164: void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function RTC_AlarmStructInit
                                   1050 ;	-----------------------------------------
      008B8D                       1051 _RTC_AlarmStructInit:
                                   1052 ;	lib/src/stm8l15x_rtc.c: 1167: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = RTC_H12_AM;
      008B8D 90 93            [ 1] 1053 	ldw	y, x
      008B8F 6F 03            [ 1] 1054 	clr	(0x0003, x)
                                   1055 ;	lib/src/stm8l15x_rtc.c: 1168: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = 0;
      008B91 90 7F            [ 1] 1056 	clr	(y)
                                   1057 ;	lib/src/stm8l15x_rtc.c: 1169: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = 0;
      008B93 93               [ 1] 1058 	ldw	x, y
      008B94 5C               [ 1] 1059 	incw	x
      008B95 7F               [ 1] 1060 	clr	(x)
                                   1061 ;	lib/src/stm8l15x_rtc.c: 1170: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = 0;
      008B96 93               [ 1] 1062 	ldw	x, y
      008B97 5C               [ 1] 1063 	incw	x
      008B98 5C               [ 1] 1064 	incw	x
      008B99 7F               [ 1] 1065 	clr	(x)
                                   1066 ;	lib/src/stm8l15x_rtc.c: 1173: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = RTC_AlarmDateWeekDaySel_Date;
      008B9A 93               [ 1] 1067 	ldw	x, y
      008B9B 6F 05            [ 1] 1068 	clr	(0x0005, x)
                                   1069 ;	lib/src/stm8l15x_rtc.c: 1174: RTC_AlarmStruct->RTC_AlarmDateWeekDay = 1;
      008B9D A6 01            [ 1] 1070 	ld	a, #0x01
      008B9F 90 E7 06         [ 1] 1071 	ld	(0x0006, y), a
                                   1072 ;	lib/src/stm8l15x_rtc.c: 1177: RTC_AlarmStruct->RTC_AlarmMask = RTC_AlarmMask_All;
      008BA2 A6 F0            [ 1] 1073 	ld	a, #0xf0
      008BA4 90 E7 04         [ 1] 1074 	ld	(0x0004, y), a
                                   1075 ;	lib/src/stm8l15x_rtc.c: 1178: }
      008BA7 81               [ 4] 1076 	ret
                                   1077 ;	lib/src/stm8l15x_rtc.c: 1187: void RTC_GetAlarm(RTC_Format_TypeDef RTC_Format,
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function RTC_GetAlarm
                                   1080 ;	-----------------------------------------
      008BA8                       1081 _RTC_GetAlarm:
      008BA8 52 0B            [ 2] 1082 	sub	sp, #11
      008BAA 6B 0B            [ 1] 1083 	ld	(0x0b, sp), a
      008BAC 1F 09            [ 2] 1084 	ldw	(0x09, sp), x
                                   1085 ;	lib/src/stm8l15x_rtc.c: 1200: tmpreg1 = (uint8_t)RTC->ALRMAR1;
      008BAE C6 51 5C         [ 1] 1086 	ld	a, 0x515c
      008BB1 6B 08            [ 1] 1087 	ld	(0x08, sp), a
                                   1088 ;	lib/src/stm8l15x_rtc.c: 1201: tmpreg2 = (uint8_t)RTC->ALRMAR2;
      008BB3 C6 51 5D         [ 1] 1089 	ld	a, 0x515d
      008BB6 6B 01            [ 1] 1090 	ld	(0x01, sp), a
                                   1091 ;	lib/src/stm8l15x_rtc.c: 1202: tmpreg3 = (uint8_t)RTC->ALRMAR3;
      008BB8 C6 51 5E         [ 1] 1092 	ld	a, 0x515e
      008BBB 6B 02            [ 1] 1093 	ld	(0x02, sp), a
                                   1094 ;	lib/src/stm8l15x_rtc.c: 1203: tmpreg4 = (uint8_t)RTC->ALRMAR4;
      008BBD C6 51 5F         [ 1] 1095 	ld	a, 0x515f
      008BC0 6B 03            [ 1] 1096 	ld	(0x03, sp), a
                                   1097 ;	lib/src/stm8l15x_rtc.c: 1206: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = (uint8_t)((uint8_t)tmpreg1 & (uint8_t)((uint8_t)RTC_ALRMAR1_ST | (uint8_t)RTC_ALRMAR1_SU));
      008BC2 1E 09            [ 2] 1098 	ldw	x, (0x09, sp)
      008BC4 5C               [ 1] 1099 	incw	x
      008BC5 5C               [ 1] 1100 	incw	x
      008BC6 1F 04            [ 2] 1101 	ldw	(0x04, sp), x
      008BC8 7B 08            [ 1] 1102 	ld	a, (0x08, sp)
      008BCA A4 7F            [ 1] 1103 	and	a, #0x7f
      008BCC 1E 04            [ 2] 1104 	ldw	x, (0x04, sp)
      008BCE F7               [ 1] 1105 	ld	(x), a
                                   1106 ;	lib/src/stm8l15x_rtc.c: 1207: alarmmask = (uint8_t)(tmpreg1 & RTC_ALRMAR1_MSK1);
      008BCF 7B 08            [ 1] 1107 	ld	a, (0x08, sp)
      008BD1 A4 80            [ 1] 1108 	and	a, #0x80
      008BD3 6B 08            [ 1] 1109 	ld	(0x08, sp), a
                                   1110 ;	lib/src/stm8l15x_rtc.c: 1210: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = (uint8_t)((uint8_t)tmpreg2 & (uint8_t)((uint8_t)RTC_ALRMAR2_MNT | (uint8_t)RTC_ALRMAR2_MNU));
      008BD5 1E 09            [ 2] 1111 	ldw	x, (0x09, sp)
      008BD7 5C               [ 1] 1112 	incw	x
      008BD8 1F 06            [ 2] 1113 	ldw	(0x06, sp), x
      008BDA 7B 01            [ 1] 1114 	ld	a, (0x01, sp)
      008BDC A4 7F            [ 1] 1115 	and	a, #0x7f
      008BDE 1E 06            [ 2] 1116 	ldw	x, (0x06, sp)
      008BE0 F7               [ 1] 1117 	ld	(x), a
                                   1118 ;	lib/src/stm8l15x_rtc.c: 1211: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)(tmpreg2 & RTC_ALRMAR2_MSK2) >> 1));
      008BE1 7B 01            [ 1] 1119 	ld	a, (0x01, sp)
      008BE3 A4 80            [ 1] 1120 	and	a, #0x80
      008BE5 44               [ 1] 1121 	srl	a
      008BE6 1A 08            [ 1] 1122 	or	a, (0x08, sp)
      008BE8 6B 08            [ 1] 1123 	ld	(0x08, sp), a
                                   1124 ;	lib/src/stm8l15x_rtc.c: 1214: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = (uint8_t)((uint8_t)tmpreg3 & (uint8_t)((uint8_t)RTC_ALRMAR3_HT | (uint8_t)RTC_ALRMAR3_HU));
      008BEA 7B 02            [ 1] 1125 	ld	a, (0x02, sp)
      008BEC A4 3F            [ 1] 1126 	and	a, #0x3f
      008BEE 1E 09            [ 2] 1127 	ldw	x, (0x09, sp)
      008BF0 F7               [ 1] 1128 	ld	(x), a
                                   1129 ;	lib/src/stm8l15x_rtc.c: 1215: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = (RTC_H12_TypeDef)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_PM);
      008BF1 1E 09            [ 2] 1130 	ldw	x, (0x09, sp)
      008BF3 1C 00 03         [ 2] 1131 	addw	x, #0x0003
      008BF6 7B 02            [ 1] 1132 	ld	a, (0x02, sp)
      008BF8 A4 40            [ 1] 1133 	and	a, #0x40
      008BFA F7               [ 1] 1134 	ld	(x), a
                                   1135 ;	lib/src/stm8l15x_rtc.c: 1216: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_MSK3) >> 2));
      008BFB 7B 02            [ 1] 1136 	ld	a, (0x02, sp)
      008BFD A4 80            [ 1] 1137 	and	a, #0x80
      008BFF 44               [ 1] 1138 	srl	a
      008C00 44               [ 1] 1139 	srl	a
      008C01 1A 08            [ 1] 1140 	or	a, (0x08, sp)
      008C03 6B 08            [ 1] 1141 	ld	(0x08, sp), a
                                   1142 ;	lib/src/stm8l15x_rtc.c: 1219: RTC_AlarmStruct->RTC_AlarmDateWeekDay = (uint8_t)((uint8_t)tmpreg4 & (uint8_t)((uint8_t)RTC_ALRMAR4_DT | (uint8_t)RTC_ALRMAR4_DU));
      008C05 1E 09            [ 2] 1143 	ldw	x, (0x09, sp)
      008C07 1C 00 06         [ 2] 1144 	addw	x, #0x0006
      008C0A 1F 01            [ 2] 1145 	ldw	(0x01, sp), x
      008C0C 7B 03            [ 1] 1146 	ld	a, (0x03, sp)
      008C0E A4 3F            [ 1] 1147 	and	a, #0x3f
      008C10 1E 01            [ 2] 1148 	ldw	x, (0x01, sp)
      008C12 F7               [ 1] 1149 	ld	(x), a
                                   1150 ;	lib/src/stm8l15x_rtc.c: 1220: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = (RTC_AlarmDateWeekDaySel_TypeDef)((uint8_t)tmpreg4 & (uint8_t)RTC_ALRMAR4_WDSEL);
      008C13 1E 09            [ 2] 1151 	ldw	x, (0x09, sp)
      008C15 1C 00 05         [ 2] 1152 	addw	x, #0x0005
      008C18 7B 03            [ 1] 1153 	ld	a, (0x03, sp)
      008C1A A4 40            [ 1] 1154 	and	a, #0x40
      008C1C F7               [ 1] 1155 	ld	(x), a
                                   1156 ;	lib/src/stm8l15x_rtc.c: 1221: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg4 & RTC_ALRMAR4_MSK4) >> 3));
      008C1D 7B 03            [ 1] 1157 	ld	a, (0x03, sp)
      008C1F A4 80            [ 1] 1158 	and	a, #0x80
      008C21 44               [ 1] 1159 	srl	a
      008C22 44               [ 1] 1160 	srl	a
      008C23 44               [ 1] 1161 	srl	a
      008C24 1A 08            [ 1] 1162 	or	a, (0x08, sp)
                                   1163 ;	lib/src/stm8l15x_rtc.c: 1223: RTC_AlarmStruct->RTC_AlarmMask = alarmmask;
      008C26 1E 09            [ 2] 1164 	ldw	x, (0x09, sp)
      008C28 1C 00 04         [ 2] 1165 	addw	x, #0x0004
      008C2B F7               [ 1] 1166 	ld	(x), a
                                   1167 ;	lib/src/stm8l15x_rtc.c: 1225: if (RTC_Format == RTC_Format_BIN)
      008C2C 0D 0B            [ 1] 1168 	tnz	(0x0b, sp)
      008C2E 26 24            [ 1] 1169 	jrne	00103$
                                   1170 ;	lib/src/stm8l15x_rtc.c: 1227: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours);
      008C30 1E 09            [ 2] 1171 	ldw	x, (0x09, sp)
      008C32 F6               [ 1] 1172 	ld	a, (x)
      008C33 CD 8F F5         [ 4] 1173 	call	_Bcd2ToByte
      008C36 1E 09            [ 2] 1174 	ldw	x, (0x09, sp)
      008C38 F7               [ 1] 1175 	ld	(x), a
                                   1176 ;	lib/src/stm8l15x_rtc.c: 1228: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes);
      008C39 1E 06            [ 2] 1177 	ldw	x, (0x06, sp)
      008C3B F6               [ 1] 1178 	ld	a, (x)
      008C3C CD 8F F5         [ 4] 1179 	call	_Bcd2ToByte
      008C3F 1E 06            [ 2] 1180 	ldw	x, (0x06, sp)
      008C41 F7               [ 1] 1181 	ld	(x), a
                                   1182 ;	lib/src/stm8l15x_rtc.c: 1229: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds);
      008C42 1E 04            [ 2] 1183 	ldw	x, (0x04, sp)
      008C44 F6               [ 1] 1184 	ld	a, (x)
      008C45 CD 8F F5         [ 4] 1185 	call	_Bcd2ToByte
      008C48 1E 04            [ 2] 1186 	ldw	x, (0x04, sp)
      008C4A F7               [ 1] 1187 	ld	(x), a
                                   1188 ;	lib/src/stm8l15x_rtc.c: 1230: RTC_AlarmStruct->RTC_AlarmDateWeekDay = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
      008C4B 1E 01            [ 2] 1189 	ldw	x, (0x01, sp)
      008C4D F6               [ 1] 1190 	ld	a, (x)
      008C4E CD 8F F5         [ 4] 1191 	call	_Bcd2ToByte
      008C51 1E 01            [ 2] 1192 	ldw	x, (0x01, sp)
      008C53 F7               [ 1] 1193 	ld	(x), a
      008C54                       1194 00103$:
                                   1195 ;	lib/src/stm8l15x_rtc.c: 1232: }
      008C54 5B 0B            [ 2] 1196 	addw	sp, #11
      008C56 81               [ 4] 1197 	ret
                                   1198 ;	lib/src/stm8l15x_rtc.c: 1241: ErrorStatus RTC_AlarmCmd(FunctionalState NewState)
                                   1199 ;	-----------------------------------------
                                   1200 ;	 function RTC_AlarmCmd
                                   1201 ;	-----------------------------------------
      008C57                       1202 _RTC_AlarmCmd:
      008C57 52 03            [ 2] 1203 	sub	sp, #3
      008C59 6B 03            [ 1] 1204 	ld	(0x03, sp), a
                                   1205 ;	lib/src/stm8l15x_rtc.c: 1243: __IO uint16_t alrawfcount = 0;
      008C5B 5F               [ 1] 1206 	clrw	x
      008C5C 1F 01            [ 2] 1207 	ldw	(0x01, sp), x
                                   1208 ;	lib/src/stm8l15x_rtc.c: 1251: RTC->WPR = 0xCA;
      008C5E 35 CA 51 59      [ 1] 1209 	mov	0x5159+0, #0xca
                                   1210 ;	lib/src/stm8l15x_rtc.c: 1252: RTC->WPR = 0x53;
      008C62 35 53 51 59      [ 1] 1211 	mov	0x5159+0, #0x53
                                   1212 ;	lib/src/stm8l15x_rtc.c: 1257: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
      008C66 C6 51 49         [ 1] 1213 	ld	a, 0x5149
                                   1214 ;	lib/src/stm8l15x_rtc.c: 1255: if (NewState != DISABLE)
      008C69 0D 03            [ 1] 1215 	tnz	(0x03, sp)
      008C6B 27 09            [ 1] 1216 	jreq	00109$
                                   1217 ;	lib/src/stm8l15x_rtc.c: 1257: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
      008C6D AA 01            [ 1] 1218 	or	a, #0x01
      008C6F C7 51 49         [ 1] 1219 	ld	0x5149, a
                                   1220 ;	lib/src/stm8l15x_rtc.c: 1258: status = SUCCESS;
      008C72 A6 01            [ 1] 1221 	ld	a, #0x01
      008C74 20 22            [ 2] 1222 	jra	00110$
      008C76                       1223 00109$:
                                   1224 ;	lib/src/stm8l15x_rtc.c: 1262: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE) ;
      008C76 A4 FE            [ 1] 1225 	and	a, #0xfe
      008C78 C7 51 49         [ 1] 1226 	ld	0x5149, a
                                   1227 ;	lib/src/stm8l15x_rtc.c: 1265: temp1 = (uint8_t)(RTC->ISR1 & RTC_ISR1_ALRAWF);
      008C7B C6 51 4C         [ 1] 1228 	ld	a, 0x514c
      008C7E A4 01            [ 1] 1229 	and	a, #0x01
                                   1230 ;	lib/src/stm8l15x_rtc.c: 1266: while ((alrawfcount != ALRAWF_TIMEOUT) && (temp1 == RESET))
      008C80                       1231 00102$:
      008C80 1E 01            [ 2] 1232 	ldw	x, (0x01, sp)
      008C82 5C               [ 1] 1233 	incw	x
      008C83 27 0A            [ 1] 1234 	jreq	00104$
      008C85 4D               [ 1] 1235 	tnz	a
      008C86 26 07            [ 1] 1236 	jrne	00104$
                                   1237 ;	lib/src/stm8l15x_rtc.c: 1268: alrawfcount++;
      008C88 1E 01            [ 2] 1238 	ldw	x, (0x01, sp)
      008C8A 5C               [ 1] 1239 	incw	x
      008C8B 1F 01            [ 2] 1240 	ldw	(0x01, sp), x
      008C8D 20 F1            [ 2] 1241 	jra	00102$
      008C8F                       1242 00104$:
                                   1243 ;	lib/src/stm8l15x_rtc.c: 1271: if ((RTC->ISR1 &  RTC_ISR1_ALRAWF) == RESET)
      008C8F 72 00 51 4C 02   [ 2] 1244 	btjt	0x514c, #0, 00106$
                                   1245 ;	lib/src/stm8l15x_rtc.c: 1273: status = ERROR;
      008C94 4F               [ 1] 1246 	clr	a
                                   1247 ;	lib/src/stm8l15x_rtc.c: 1277: status = SUCCESS;
      008C95 C5                    1248 	.byte 0xc5
      008C96                       1249 00106$:
      008C96 A6 01            [ 1] 1250 	ld	a, #0x01
      008C98                       1251 00110$:
                                   1252 ;	lib/src/stm8l15x_rtc.c: 1282: RTC->WPR = 0xFF; 
      008C98 35 FF 51 59      [ 1] 1253 	mov	0x5159+0, #0xff
                                   1254 ;	lib/src/stm8l15x_rtc.c: 1285: return (ErrorStatus)status;
                                   1255 ;	lib/src/stm8l15x_rtc.c: 1286: }
      008C9C 5B 03            [ 2] 1256 	addw	sp, #3
      008C9E 81               [ 4] 1257 	ret
                                   1258 ;	lib/src/stm8l15x_rtc.c: 1297: ErrorStatus RTC_AlarmSubSecondConfig(uint16_t RTC_AlarmSubSecondValue,
                                   1259 ;	-----------------------------------------
                                   1260 ;	 function RTC_AlarmSubSecondConfig
                                   1261 ;	-----------------------------------------
      008C9F                       1262 _RTC_AlarmSubSecondConfig:
      008C9F 52 02            [ 2] 1263 	sub	sp, #2
      008CA1 6B 02            [ 1] 1264 	ld	(0x02, sp), a
                                   1265 ;	lib/src/stm8l15x_rtc.c: 1308: RTC->WPR = 0xCA;
      008CA3 35 CA 51 59      [ 1] 1266 	mov	0x5159+0, #0xca
                                   1267 ;	lib/src/stm8l15x_rtc.c: 1309: RTC->WPR = 0x53;
      008CA7 35 53 51 59      [ 1] 1268 	mov	0x5159+0, #0x53
                                   1269 ;	lib/src/stm8l15x_rtc.c: 1312: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
      008CAB 72 0C 51 4C 24   [ 2] 1270 	btjt	0x514c, #6, 00102$
                                   1271 ;	lib/src/stm8l15x_rtc.c: 1315: alarmstatus = (uint8_t)(RTC->CR2 | RTC_CR2_ALRAE);
      008CB0 C6 51 49         [ 1] 1272 	ld	a, 0x5149
      008CB3 AA 01            [ 1] 1273 	or	a, #0x01
      008CB5 6B 01            [ 1] 1274 	ld	(0x01, sp), a
                                   1275 ;	lib/src/stm8l15x_rtc.c: 1318: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE);
      008CB7 72 11 51 49      [ 1] 1276 	bres	0x5149, #0
                                   1277 ;	lib/src/stm8l15x_rtc.c: 1321: RTC->ALRMASSRH = (uint8_t)(RTC_AlarmSubSecondValue >> 8);
      008CBB 9E               [ 1] 1278 	ld	a, xh
      008CBC C7 51 64         [ 1] 1279 	ld	0x5164, a
                                   1280 ;	lib/src/stm8l15x_rtc.c: 1322: RTC->ALRMASSRL = (uint8_t)(RTC_AlarmSubSecondValue);
      008CBF 9F               [ 1] 1281 	ld	a, xl
      008CC0 C7 51 65         [ 1] 1282 	ld	0x5165, a
                                   1283 ;	lib/src/stm8l15x_rtc.c: 1323: RTC->ALRMASSMSKR = (uint8_t)RTC_AlarmSubSecondMask;
      008CC3 AE 51 66         [ 2] 1284 	ldw	x, #0x5166
      008CC6 7B 02            [ 1] 1285 	ld	a, (0x02, sp)
      008CC8 F7               [ 1] 1286 	ld	(x), a
                                   1287 ;	lib/src/stm8l15x_rtc.c: 1326: RTC->CR2 |= alarmstatus;
      008CC9 C6 51 49         [ 1] 1288 	ld	a, 0x5149
      008CCC 1A 01            [ 1] 1289 	or	a, (0x01, sp)
      008CCE C7 51 49         [ 1] 1290 	ld	0x5149, a
                                   1291 ;	lib/src/stm8l15x_rtc.c: 1328: status = SUCCESS;
      008CD1 A6 01            [ 1] 1292 	ld	a, #0x01
                                   1293 ;	lib/src/stm8l15x_rtc.c: 1332: status = ERROR;
      008CD3 21                    1294 	.byte 0x21
      008CD4                       1295 00102$:
      008CD4 4F               [ 1] 1296 	clr	a
      008CD5                       1297 00103$:
                                   1298 ;	lib/src/stm8l15x_rtc.c: 1336: RTC->WPR = 0xFF; 
      008CD5 35 FF 51 59      [ 1] 1299 	mov	0x5159+0, #0xff
                                   1300 ;	lib/src/stm8l15x_rtc.c: 1338: return (ErrorStatus)status;
                                   1301 ;	lib/src/stm8l15x_rtc.c: 1339: }
      008CD9 5B 02            [ 2] 1302 	addw	sp, #2
      008CDB 81               [ 4] 1303 	ret
                                   1304 ;	lib/src/stm8l15x_rtc.c: 1368: void RTC_WakeUpClockConfig(RTC_WakeUpClock_TypeDef RTC_WakeUpClock)
                                   1305 ;	-----------------------------------------
                                   1306 ;	 function RTC_WakeUpClockConfig
                                   1307 ;	-----------------------------------------
      008CDC                       1308 _RTC_WakeUpClockConfig:
      008CDC 88               [ 1] 1309 	push	a
      008CDD 6B 01            [ 1] 1310 	ld	(0x01, sp), a
                                   1311 ;	lib/src/stm8l15x_rtc.c: 1375: RTC->WPR = 0xCA;
      008CDF 35 CA 51 59      [ 1] 1312 	mov	0x5159+0, #0xca
                                   1313 ;	lib/src/stm8l15x_rtc.c: 1376: RTC->WPR = 0x53;
      008CE3 35 53 51 59      [ 1] 1314 	mov	0x5159+0, #0x53
                                   1315 ;	lib/src/stm8l15x_rtc.c: 1379: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
      008CE7 72 15 51 49      [ 1] 1316 	bres	0x5149, #2
                                   1317 ;	lib/src/stm8l15x_rtc.c: 1382: RTC->CR1 &= (uint8_t)~RTC_CR1_WUCKSEL;
      008CEB C6 51 48         [ 1] 1318 	ld	a, 0x5148
      008CEE A4 F8            [ 1] 1319 	and	a, #0xf8
      008CF0 C7 51 48         [ 1] 1320 	ld	0x5148, a
                                   1321 ;	lib/src/stm8l15x_rtc.c: 1385: RTC->CR1 |= (uint8_t)RTC_WakeUpClock;
      008CF3 C6 51 48         [ 1] 1322 	ld	a, 0x5148
      008CF6 1A 01            [ 1] 1323 	or	a, (0x01, sp)
      008CF8 C7 51 48         [ 1] 1324 	ld	0x5148, a
                                   1325 ;	lib/src/stm8l15x_rtc.c: 1388: RTC->WPR = 0xFF; 
      008CFB 35 FF 51 59      [ 1] 1326 	mov	0x5159+0, #0xff
                                   1327 ;	lib/src/stm8l15x_rtc.c: 1389: }
      008CFF 84               [ 1] 1328 	pop	a
      008D00 81               [ 4] 1329 	ret
                                   1330 ;	lib/src/stm8l15x_rtc.c: 1399: void RTC_SetWakeUpCounter(uint16_t RTC_WakeupCounter)
                                   1331 ;	-----------------------------------------
                                   1332 ;	 function RTC_SetWakeUpCounter
                                   1333 ;	-----------------------------------------
      008D01                       1334 _RTC_SetWakeUpCounter:
                                   1335 ;	lib/src/stm8l15x_rtc.c: 1402: RTC->WPR = 0xCA;
      008D01 35 CA 51 59      [ 1] 1336 	mov	0x5159+0, #0xca
                                   1337 ;	lib/src/stm8l15x_rtc.c: 1403: RTC->WPR = 0x53;
      008D05 35 53 51 59      [ 1] 1338 	mov	0x5159+0, #0x53
                                   1339 ;	lib/src/stm8l15x_rtc.c: 1407: RTC->WUTRH = (uint8_t)(RTC_WakeupCounter >> 8);
      008D09 9E               [ 1] 1340 	ld	a, xh
      008D0A C7 51 54         [ 1] 1341 	ld	0x5154, a
                                   1342 ;	lib/src/stm8l15x_rtc.c: 1408: RTC->WUTRL = (uint8_t)(RTC_WakeupCounter);
      008D0D 9F               [ 1] 1343 	ld	a, xl
      008D0E C7 51 55         [ 1] 1344 	ld	0x5155, a
                                   1345 ;	lib/src/stm8l15x_rtc.c: 1411: RTC->WPR = 0xFF; 
      008D11 35 FF 51 59      [ 1] 1346 	mov	0x5159+0, #0xff
                                   1347 ;	lib/src/stm8l15x_rtc.c: 1412: }
      008D15 81               [ 4] 1348 	ret
                                   1349 ;	lib/src/stm8l15x_rtc.c: 1419: uint16_t RTC_GetWakeUpCounter(void)
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function RTC_GetWakeUpCounter
                                   1352 ;	-----------------------------------------
      008D16                       1353 _RTC_GetWakeUpCounter:
      008D16 52 04            [ 2] 1354 	sub	sp, #4
                                   1355 ;	lib/src/stm8l15x_rtc.c: 1424: tmpreg = ((uint16_t)RTC->WUTRH) << 8;
      008D18 C6 51 54         [ 1] 1356 	ld	a, 0x5154
      008D1B 95               [ 1] 1357 	ld	xh, a
      008D1C 0F 02            [ 1] 1358 	clr	(0x02, sp)
                                   1359 ;	lib/src/stm8l15x_rtc.c: 1425: tmpreg |= RTC->WUTRL;
      008D1E C6 51 55         [ 1] 1360 	ld	a, 0x5155
      008D21 0F 03            [ 1] 1361 	clr	(0x03, sp)
      008D23 1A 02            [ 1] 1362 	or	a, (0x02, sp)
      008D25 02               [ 1] 1363 	rlwa	x
      008D26 1A 03            [ 1] 1364 	or	a, (0x03, sp)
                                   1365 ;	lib/src/stm8l15x_rtc.c: 1428: return (uint16_t)tmpreg;
      008D28 95               [ 1] 1366 	ld	xh, a
                                   1367 ;	lib/src/stm8l15x_rtc.c: 1429: }
      008D29 5B 04            [ 2] 1368 	addw	sp, #4
      008D2B 81               [ 4] 1369 	ret
                                   1370 ;	lib/src/stm8l15x_rtc.c: 1439: ErrorStatus RTC_WakeUpCmd(FunctionalState NewState)
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function RTC_WakeUpCmd
                                   1373 ;	-----------------------------------------
      008D2C                       1374 _RTC_WakeUpCmd:
      008D2C 88               [ 1] 1375 	push	a
      008D2D 6B 01            [ 1] 1376 	ld	(0x01, sp), a
                                   1377 ;	lib/src/stm8l15x_rtc.c: 1448: RTC->WPR = 0xCA;
      008D2F 35 CA 51 59      [ 1] 1378 	mov	0x5159+0, #0xca
                                   1379 ;	lib/src/stm8l15x_rtc.c: 1449: RTC->WPR = 0x53;
      008D33 35 53 51 59      [ 1] 1380 	mov	0x5159+0, #0x53
                                   1381 ;	lib/src/stm8l15x_rtc.c: 1454: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
      008D37 C6 51 49         [ 1] 1382 	ld	a, 0x5149
                                   1383 ;	lib/src/stm8l15x_rtc.c: 1451: if (NewState != DISABLE)
      008D3A 0D 01            [ 1] 1384 	tnz	(0x01, sp)
      008D3C 27 09            [ 1] 1385 	jreq	00109$
                                   1386 ;	lib/src/stm8l15x_rtc.c: 1454: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
      008D3E AA 04            [ 1] 1387 	or	a, #0x04
      008D40 C7 51 49         [ 1] 1388 	ld	0x5149, a
                                   1389 ;	lib/src/stm8l15x_rtc.c: 1456: status = SUCCESS;
      008D43 A6 01            [ 1] 1390 	ld	a, #0x01
      008D45 20 1C            [ 2] 1391 	jra	00110$
      008D47                       1392 00109$:
                                   1393 ;	lib/src/stm8l15x_rtc.c: 1461: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
      008D47 A4 FB            [ 1] 1394 	and	a, #0xfb
      008D49 C7 51 49         [ 1] 1395 	ld	0x5149, a
                                   1396 ;	lib/src/stm8l15x_rtc.c: 1464: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
      008D4C 5F               [ 1] 1397 	clrw	x
      008D4D                       1398 00102$:
      008D4D 72 04 51 4C 08   [ 2] 1399 	btjt	0x514c, #2, 00104$
      008D52 A3 FF FF         [ 2] 1400 	cpw	x, #0xffff
      008D55 27 03            [ 1] 1401 	jreq	00104$
                                   1402 ;	lib/src/stm8l15x_rtc.c: 1466: wutwfcount++;
      008D57 5C               [ 1] 1403 	incw	x
      008D58 20 F3            [ 2] 1404 	jra	00102$
      008D5A                       1405 00104$:
                                   1406 ;	lib/src/stm8l15x_rtc.c: 1470: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
      008D5A 72 04 51 4C 02   [ 2] 1407 	btjt	0x514c, #2, 00106$
                                   1408 ;	lib/src/stm8l15x_rtc.c: 1472: status = ERROR;
      008D5F 4F               [ 1] 1409 	clr	a
                                   1410 ;	lib/src/stm8l15x_rtc.c: 1476: status = SUCCESS;
      008D60 C5                    1411 	.byte 0xc5
      008D61                       1412 00106$:
      008D61 A6 01            [ 1] 1413 	ld	a, #0x01
      008D63                       1414 00110$:
                                   1415 ;	lib/src/stm8l15x_rtc.c: 1481: RTC->WPR = 0xFF; 
      008D63 35 FF 51 59      [ 1] 1416 	mov	0x5159+0, #0xff
                                   1417 ;	lib/src/stm8l15x_rtc.c: 1484: return (ErrorStatus)status;
                                   1418 ;	lib/src/stm8l15x_rtc.c: 1485: }
      008D67 5B 01            [ 2] 1419 	addw	sp, #1
      008D69 81               [ 4] 1420 	ret
                                   1421 ;	lib/src/stm8l15x_rtc.c: 1521: void RTC_DayLightSavingConfig(RTC_DayLightSaving_TypeDef RTC_DayLightSaving,
                                   1422 ;	-----------------------------------------
                                   1423 ;	 function RTC_DayLightSavingConfig
                                   1424 ;	-----------------------------------------
      008D6A                       1425 _RTC_DayLightSavingConfig:
      008D6A 88               [ 1] 1426 	push	a
      008D6B 97               [ 1] 1427 	ld	xl, a
                                   1428 ;	lib/src/stm8l15x_rtc.c: 1529: RTC->WPR = 0xCA;
      008D6C 35 CA 51 59      [ 1] 1429 	mov	0x5159+0, #0xca
                                   1430 ;	lib/src/stm8l15x_rtc.c: 1530: RTC->WPR = 0x53;
      008D70 35 53 51 59      [ 1] 1431 	mov	0x5159+0, #0x53
                                   1432 ;	lib/src/stm8l15x_rtc.c: 1533: RTC->CR3 &= (uint8_t)~(RTC_CR3_BCK);
      008D74 C6 51 4A         [ 1] 1433 	ld	a, 0x514a
      008D77 A4 FB            [ 1] 1434 	and	a, #0xfb
      008D79 C7 51 4A         [ 1] 1435 	ld	0x514a, a
                                   1436 ;	lib/src/stm8l15x_rtc.c: 1536: RTC->CR3 |= (uint8_t)((uint8_t)RTC_DayLightSaving | (uint8_t)RTC_StoreOperation);
      008D7C C6 51 4A         [ 1] 1437 	ld	a, 0x514a
      008D7F 6B 01            [ 1] 1438 	ld	(0x01, sp), a
      008D81 9F               [ 1] 1439 	ld	a, xl
      008D82 1A 04            [ 1] 1440 	or	a, (0x04, sp)
      008D84 1A 01            [ 1] 1441 	or	a, (0x01, sp)
      008D86 C7 51 4A         [ 1] 1442 	ld	0x514a, a
                                   1443 ;	lib/src/stm8l15x_rtc.c: 1539: RTC->WPR = 0xFF; 
      008D89 35 FF 51 59      [ 1] 1444 	mov	0x5159+0, #0xff
                                   1445 ;	lib/src/stm8l15x_rtc.c: 1540: }
      008D8D 84               [ 1] 1446 	pop	a
      008D8E 85               [ 2] 1447 	popw	x
      008D8F 84               [ 1] 1448 	pop	a
      008D90 FC               [ 2] 1449 	jp	(x)
                                   1450 ;	lib/src/stm8l15x_rtc.c: 1548: RTC_StoreOperation_TypeDef  RTC_GetStoreOperation(void)
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function RTC_GetStoreOperation
                                   1453 ;	-----------------------------------------
      008D91                       1454 _RTC_GetStoreOperation:
                                   1455 ;	lib/src/stm8l15x_rtc.c: 1551: return (RTC_StoreOperation_TypeDef)(RTC->CR3 & RTC_CR3_BCK);
      008D91 C6 51 4A         [ 1] 1456 	ld	a, 0x514a
      008D94 A4 04            [ 1] 1457 	and	a, #0x04
                                   1458 ;	lib/src/stm8l15x_rtc.c: 1552: }
      008D96 81               [ 4] 1459 	ret
                                   1460 ;	lib/src/stm8l15x_rtc.c: 1586: void RTC_OutputConfig(RTC_Output_TypeDef RTC_Output,
                                   1461 ;	-----------------------------------------
                                   1462 ;	 function RTC_OutputConfig
                                   1463 ;	-----------------------------------------
      008D97                       1464 _RTC_OutputConfig:
      008D97 88               [ 1] 1465 	push	a
      008D98 97               [ 1] 1466 	ld	xl, a
                                   1467 ;	lib/src/stm8l15x_rtc.c: 1594: RTC->WPR = 0xCA;
      008D99 35 CA 51 59      [ 1] 1468 	mov	0x5159+0, #0xca
                                   1469 ;	lib/src/stm8l15x_rtc.c: 1595: RTC->WPR = 0x53;
      008D9D 35 53 51 59      [ 1] 1470 	mov	0x5159+0, #0x53
                                   1471 ;	lib/src/stm8l15x_rtc.c: 1598: RTC->CR3 &= (uint8_t)~(RTC_CR3_OSEL | RTC_CR3_POL);
      008DA1 C6 51 4A         [ 1] 1472 	ld	a, 0x514a
      008DA4 A4 8F            [ 1] 1473 	and	a, #0x8f
      008DA6 C7 51 4A         [ 1] 1474 	ld	0x514a, a
                                   1475 ;	lib/src/stm8l15x_rtc.c: 1601: RTC->CR3 |= (uint8_t)((uint8_t)RTC_Output | (uint8_t)RTC_OutputPolarity);
      008DA9 C6 51 4A         [ 1] 1476 	ld	a, 0x514a
      008DAC 6B 01            [ 1] 1477 	ld	(0x01, sp), a
      008DAE 9F               [ 1] 1478 	ld	a, xl
      008DAF 1A 04            [ 1] 1479 	or	a, (0x04, sp)
      008DB1 1A 01            [ 1] 1480 	or	a, (0x01, sp)
      008DB3 C7 51 4A         [ 1] 1481 	ld	0x514a, a
                                   1482 ;	lib/src/stm8l15x_rtc.c: 1604: RTC->WPR = 0xFF; 
      008DB6 35 FF 51 59      [ 1] 1483 	mov	0x5159+0, #0xff
                                   1484 ;	lib/src/stm8l15x_rtc.c: 1605: }
      008DBA 84               [ 1] 1485 	pop	a
      008DBB 85               [ 2] 1486 	popw	x
      008DBC 84               [ 1] 1487 	pop	a
      008DBD FC               [ 2] 1488 	jp	(x)
                                   1489 ;	lib/src/stm8l15x_rtc.c: 1638: ErrorStatus RTC_SynchroShiftConfig(RTC_ShiftAdd1S_TypeDef RTC_ShiftAdd1S,
                                   1490 ;	-----------------------------------------
                                   1491 ;	 function RTC_SynchroShiftConfig
                                   1492 ;	-----------------------------------------
      008DBE                       1493 _RTC_SynchroShiftConfig:
      008DBE 88               [ 1] 1494 	push	a
      008DBF 6B 01            [ 1] 1495 	ld	(0x01, sp), a
      008DC1 51               [ 1] 1496 	exgw	x, y
                                   1497 ;	lib/src/stm8l15x_rtc.c: 1650: RTC->WPR = 0xCA;
      008DC2 35 CA 51 59      [ 1] 1498 	mov	0x5159+0, #0xca
                                   1499 ;	lib/src/stm8l15x_rtc.c: 1651: RTC->WPR = 0x53;
      008DC6 35 53 51 59      [ 1] 1500 	mov	0x5159+0, #0x53
                                   1501 ;	lib/src/stm8l15x_rtc.c: 1654: if ((RTC->ISR1 & RTC_ISR1_SHPF) != RESET)
      008DCA 72 07 51 4C 0E   [ 2] 1502 	btjf	0x514c, #3, 00106$
                                   1503 ;	lib/src/stm8l15x_rtc.c: 1657: while (((RTC->ISR1 & RTC_ISR1_SHPF) != RESET) && (shpfcount != SHPF_TIMEOUT))
      008DCF 5F               [ 1] 1504 	clrw	x
      008DD0                       1505 00102$:
      008DD0 72 07 51 4C 08   [ 2] 1506 	btjf	0x514c, #3, 00106$
      008DD5 A3 FF FF         [ 2] 1507 	cpw	x, #0xffff
      008DD8 27 03            [ 1] 1508 	jreq	00106$
                                   1509 ;	lib/src/stm8l15x_rtc.c: 1659: shpfcount++;
      008DDA 5C               [ 1] 1510 	incw	x
      008DDB 20 F3            [ 2] 1511 	jra	00102$
      008DDD                       1512 00106$:
                                   1513 ;	lib/src/stm8l15x_rtc.c: 1664: if ((RTC->ISR1 & RTC_ISR1_SHPF) == RESET)
      008DDD 72 06 51 4C 0F   [ 2] 1514 	btjt	0x514c, #3, 00108$
                                   1515 ;	lib/src/stm8l15x_rtc.c: 1667: shiftrhreg = (uint8_t)((uint8_t)(RTC_ShiftSubFS >> 8) | (uint8_t)(RTC_ShiftAdd1S));
      008DE2 90 9E            [ 1] 1516 	ld	a, yh
      008DE4 1A 01            [ 1] 1517 	or	a, (0x01, sp)
                                   1518 ;	lib/src/stm8l15x_rtc.c: 1668: RTC->SHIFTRH = (uint8_t)(shiftrhreg);
      008DE6 C7 51 5A         [ 1] 1519 	ld	0x515a, a
                                   1520 ;	lib/src/stm8l15x_rtc.c: 1669: RTC->SHIFTRL = (uint8_t)(RTC_ShiftSubFS);
      008DE9 90 9F            [ 1] 1521 	ld	a, yl
      008DEB C7 51 5B         [ 1] 1522 	ld	0x515b, a
                                   1523 ;	lib/src/stm8l15x_rtc.c: 1671: status = SUCCESS;
      008DEE A6 01            [ 1] 1524 	ld	a, #0x01
                                   1525 ;	lib/src/stm8l15x_rtc.c: 1675: status = ERROR;
      008DF0 21                    1526 	.byte 0x21
      008DF1                       1527 00108$:
      008DF1 4F               [ 1] 1528 	clr	a
      008DF2                       1529 00109$:
                                   1530 ;	lib/src/stm8l15x_rtc.c: 1679: RTC->WPR = 0xFF; 
      008DF2 35 FF 51 59      [ 1] 1531 	mov	0x5159+0, #0xff
                                   1532 ;	lib/src/stm8l15x_rtc.c: 1681: return (ErrorStatus)(status);
                                   1533 ;	lib/src/stm8l15x_rtc.c: 1682: }
      008DF6 5B 01            [ 2] 1534 	addw	sp, #1
      008DF8 81               [ 4] 1535 	ret
                                   1536 ;	lib/src/stm8l15x_rtc.c: 1717: ErrorStatus RTC_SmoothCalibConfig(RTC_SmoothCalibPeriod_TypeDef RTC_SmoothCalibPeriod,
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function RTC_SmoothCalibConfig
                                   1539 ;	-----------------------------------------
      008DF9                       1540 _RTC_SmoothCalibConfig:
      008DF9 88               [ 1] 1541 	push	a
      008DFA 90 97            [ 1] 1542 	ld	yl, a
                                   1543 ;	lib/src/stm8l15x_rtc.c: 1730: RTC->WPR = 0xCA;
      008DFC 35 CA 51 59      [ 1] 1544 	mov	0x5159+0, #0xca
                                   1545 ;	lib/src/stm8l15x_rtc.c: 1731: RTC->WPR = 0x53;
      008E00 35 53 51 59      [ 1] 1546 	mov	0x5159+0, #0x53
                                   1547 ;	lib/src/stm8l15x_rtc.c: 1734: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
      008E04 72 03 51 4C 0E   [ 2] 1548 	btjf	0x514c, #1, 00106$
                                   1549 ;	lib/src/stm8l15x_rtc.c: 1737: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
      008E09 5F               [ 1] 1550 	clrw	x
      008E0A                       1551 00102$:
      008E0A 72 03 51 4C 08   [ 2] 1552 	btjf	0x514c, #1, 00106$
      008E0F A3 FF FF         [ 2] 1553 	cpw	x, #0xffff
      008E12 27 03            [ 1] 1554 	jreq	00106$
                                   1555 ;	lib/src/stm8l15x_rtc.c: 1739: recalpfcount++;
      008E14 5C               [ 1] 1556 	incw	x
      008E15 20 F3            [ 2] 1557 	jra	00102$
      008E17                       1558 00106$:
                                   1559 ;	lib/src/stm8l15x_rtc.c: 1745: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
      008E17 72 02 51 4C 15   [ 2] 1560 	btjt	0x514c, #1, 00108$
                                   1561 ;	lib/src/stm8l15x_rtc.c: 1748: RTC->CALRH = (uint8_t)((uint8_t)((uint8_t)RTC_SmoothCalibPeriod | \
      008E1C 90 9F            [ 1] 1562 	ld	a, yl
      008E1E 1A 04            [ 1] 1563 	or	a, (0x04, sp)
      008E20 6B 01            [ 1] 1564 	ld	(0x01, sp), a
      008E22 7B 05            [ 1] 1565 	ld	a, (0x05, sp)
      008E24 1A 01            [ 1] 1566 	or	a, (0x01, sp)
      008E26 C7 51 6A         [ 1] 1567 	ld	0x516a, a
                                   1568 ;	lib/src/stm8l15x_rtc.c: 1751: RTC->CALRL = (uint8_t)(RTC_SmouthCalibMinusPulsesValue);
      008E29 7B 06            [ 1] 1569 	ld	a, (0x06, sp)
      008E2B C7 51 6B         [ 1] 1570 	ld	0x516b, a
                                   1571 ;	lib/src/stm8l15x_rtc.c: 1753: status = SUCCESS;
      008E2E A6 01            [ 1] 1572 	ld	a, #0x01
                                   1573 ;	lib/src/stm8l15x_rtc.c: 1757: status = ERROR;
      008E30 21                    1574 	.byte 0x21
      008E31                       1575 00108$:
      008E31 4F               [ 1] 1576 	clr	a
      008E32                       1577 00109$:
                                   1578 ;	lib/src/stm8l15x_rtc.c: 1761: RTC->WPR = 0xFF; 
      008E32 35 FF 51 59      [ 1] 1579 	mov	0x5159+0, #0xff
                                   1580 ;	lib/src/stm8l15x_rtc.c: 1763: return (ErrorStatus)(status);
                                   1581 ;	lib/src/stm8l15x_rtc.c: 1764: }
      008E36 1E 02            [ 2] 1582 	ldw	x, (2, sp)
      008E38 5B 06            [ 2] 1583 	addw	sp, #6
      008E3A FC               [ 2] 1584 	jp	(x)
                                   1585 ;	lib/src/stm8l15x_rtc.c: 1789: void RTC_CalibOutputConfig(RTC_CalibOutput_TypeDef RTC_CalibOutput)
                                   1586 ;	-----------------------------------------
                                   1587 ;	 function RTC_CalibOutputConfig
                                   1588 ;	-----------------------------------------
      008E3B                       1589 _RTC_CalibOutputConfig:
      008E3B 88               [ 1] 1590 	push	a
      008E3C 6B 01            [ 1] 1591 	ld	(0x01, sp), a
                                   1592 ;	lib/src/stm8l15x_rtc.c: 1795: RTC->WPR = 0xCA;
      008E3E 35 CA 51 59      [ 1] 1593 	mov	0x5159+0, #0xca
                                   1594 ;	lib/src/stm8l15x_rtc.c: 1796: RTC->WPR = 0x53;
      008E42 35 53 51 59      [ 1] 1595 	mov	0x5159+0, #0x53
                                   1596 ;	lib/src/stm8l15x_rtc.c: 1801: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
      008E46 C6 51 4A         [ 1] 1597 	ld	a, 0x514a
                                   1598 ;	lib/src/stm8l15x_rtc.c: 1798: if (RTC_CalibOutput != RTC_CalibOutput_512Hz)
      008E49 0D 01            [ 1] 1599 	tnz	(0x01, sp)
      008E4B 27 07            [ 1] 1600 	jreq	00102$
                                   1601 ;	lib/src/stm8l15x_rtc.c: 1801: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
      008E4D AA 08            [ 1] 1602 	or	a, #0x08
      008E4F C7 51 4A         [ 1] 1603 	ld	0x514a, a
      008E52 20 05            [ 2] 1604 	jra	00103$
      008E54                       1605 00102$:
                                   1606 ;	lib/src/stm8l15x_rtc.c: 1806: RTC->CR3 &= (uint8_t)~RTC_CR3_COSEL;
      008E54 A4 F7            [ 1] 1607 	and	a, #0xf7
      008E56 C7 51 4A         [ 1] 1608 	ld	0x514a, a
      008E59                       1609 00103$:
                                   1610 ;	lib/src/stm8l15x_rtc.c: 1810: RTC->WPR = 0xFF; 
      008E59 35 FF 51 59      [ 1] 1611 	mov	0x5159+0, #0xff
                                   1612 ;	lib/src/stm8l15x_rtc.c: 1811: }
      008E5D 84               [ 1] 1613 	pop	a
      008E5E 81               [ 4] 1614 	ret
                                   1615 ;	lib/src/stm8l15x_rtc.c: 1819: void RTC_CalibOutputCmd(FunctionalState NewState)
                                   1616 ;	-----------------------------------------
                                   1617 ;	 function RTC_CalibOutputCmd
                                   1618 ;	-----------------------------------------
      008E5F                       1619 _RTC_CalibOutputCmd:
      008E5F 88               [ 1] 1620 	push	a
      008E60 6B 01            [ 1] 1621 	ld	(0x01, sp), a
                                   1622 ;	lib/src/stm8l15x_rtc.c: 1825: RTC->WPR = 0xCA;
      008E62 35 CA 51 59      [ 1] 1623 	mov	0x5159+0, #0xca
                                   1624 ;	lib/src/stm8l15x_rtc.c: 1826: RTC->WPR = 0x53;
      008E66 35 53 51 59      [ 1] 1625 	mov	0x5159+0, #0x53
                                   1626 ;	lib/src/stm8l15x_rtc.c: 1831: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
      008E6A C6 51 4A         [ 1] 1627 	ld	a, 0x514a
                                   1628 ;	lib/src/stm8l15x_rtc.c: 1828: if (NewState != DISABLE)
      008E6D 0D 01            [ 1] 1629 	tnz	(0x01, sp)
      008E6F 27 07            [ 1] 1630 	jreq	00102$
                                   1631 ;	lib/src/stm8l15x_rtc.c: 1831: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
      008E71 AA 80            [ 1] 1632 	or	a, #0x80
      008E73 C7 51 4A         [ 1] 1633 	ld	0x514a, a
      008E76 20 05            [ 2] 1634 	jra	00103$
      008E78                       1635 00102$:
                                   1636 ;	lib/src/stm8l15x_rtc.c: 1836: RTC->CR3 &= (uint8_t)~RTC_CR3_COE;
      008E78 A4 7F            [ 1] 1637 	and	a, #0x7f
      008E7A C7 51 4A         [ 1] 1638 	ld	0x514a, a
      008E7D                       1639 00103$:
                                   1640 ;	lib/src/stm8l15x_rtc.c: 1840: RTC->WPR = 0xFF; 
      008E7D 35 FF 51 59      [ 1] 1641 	mov	0x5159+0, #0xff
                                   1642 ;	lib/src/stm8l15x_rtc.c: 1841: }
      008E81 84               [ 1] 1643 	pop	a
      008E82 81               [ 4] 1644 	ret
                                   1645 ;	lib/src/stm8l15x_rtc.c: 1870: void RTC_TamperLevelConfig(RTC_Tamper_TypeDef RTC_Tamper,
                                   1646 ;	-----------------------------------------
                                   1647 ;	 function RTC_TamperLevelConfig
                                   1648 ;	-----------------------------------------
      008E83                       1649 _RTC_TamperLevelConfig:
      008E83 88               [ 1] 1650 	push	a
      008E84 97               [ 1] 1651 	ld	xl, a
                                   1652 ;	lib/src/stm8l15x_rtc.c: 1878: RTC->WPR = 0xCA;
      008E85 35 CA 51 59      [ 1] 1653 	mov	0x5159+0, #0xca
                                   1654 ;	lib/src/stm8l15x_rtc.c: 1879: RTC->WPR = 0x53;
      008E89 35 53 51 59      [ 1] 1655 	mov	0x5159+0, #0x53
                                   1656 ;	lib/src/stm8l15x_rtc.c: 1884: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
      008E8D C6 51 6C         [ 1] 1657 	ld	a, 0x516c
      008E90 6B 01            [ 1] 1658 	ld	(0x01, sp), a
      008E92 9F               [ 1] 1659 	ld	a, xl
      008E93 48               [ 1] 1660 	sll	a
                                   1661 ;	lib/src/stm8l15x_rtc.c: 1881: if (RTC_TamperLevel != RTC_TamperLevel_Low)
      008E94 0D 04            [ 1] 1662 	tnz	(0x04, sp)
      008E96 27 07            [ 1] 1663 	jreq	00102$
                                   1664 ;	lib/src/stm8l15x_rtc.c: 1884: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
      008E98 1A 01            [ 1] 1665 	or	a, (0x01, sp)
      008E9A C7 51 6C         [ 1] 1666 	ld	0x516c, a
      008E9D 20 06            [ 2] 1667 	jra	00103$
      008E9F                       1668 00102$:
                                   1669 ;	lib/src/stm8l15x_rtc.c: 1889: RTC->TCR1 &= (uint8_t)~(uint8_t)(RTC_Tamper << 1);
      008E9F 43               [ 1] 1670 	cpl	a
      008EA0 14 01            [ 1] 1671 	and	a, (0x01, sp)
      008EA2 C7 51 6C         [ 1] 1672 	ld	0x516c, a
      008EA5                       1673 00103$:
                                   1674 ;	lib/src/stm8l15x_rtc.c: 1893: RTC->WPR = 0xFF; 
      008EA5 35 FF 51 59      [ 1] 1675 	mov	0x5159+0, #0xff
                                   1676 ;	lib/src/stm8l15x_rtc.c: 1894: }
      008EA9 84               [ 1] 1677 	pop	a
      008EAA 85               [ 2] 1678 	popw	x
      008EAB 84               [ 1] 1679 	pop	a
      008EAC FC               [ 2] 1680 	jp	(x)
                                   1681 ;	lib/src/stm8l15x_rtc.c: 1902: void RTC_TamperFilterConfig(RTC_TamperFilter_TypeDef RTC_TamperFilter)
                                   1682 ;	-----------------------------------------
                                   1683 ;	 function RTC_TamperFilterConfig
                                   1684 ;	-----------------------------------------
      008EAD                       1685 _RTC_TamperFilterConfig:
      008EAD 88               [ 1] 1686 	push	a
      008EAE 6B 01            [ 1] 1687 	ld	(0x01, sp), a
                                   1688 ;	lib/src/stm8l15x_rtc.c: 1909: RTC->WPR = 0xCA;
      008EB0 35 CA 51 59      [ 1] 1689 	mov	0x5159+0, #0xca
                                   1690 ;	lib/src/stm8l15x_rtc.c: 1910: RTC->WPR = 0x53;
      008EB4 35 53 51 59      [ 1] 1691 	mov	0x5159+0, #0x53
                                   1692 ;	lib/src/stm8l15x_rtc.c: 1913: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFLT);
      008EB8 C6 51 6D         [ 1] 1693 	ld	a, 0x516d
      008EBB A4 E7            [ 1] 1694 	and	a, #0xe7
      008EBD C7 51 6D         [ 1] 1695 	ld	0x516d, a
                                   1696 ;	lib/src/stm8l15x_rtc.c: 1916: RTC->TCR2 |= (uint8_t)RTC_TamperFilter;
      008EC0 C6 51 6D         [ 1] 1697 	ld	a, 0x516d
      008EC3 1A 01            [ 1] 1698 	or	a, (0x01, sp)
      008EC5 C7 51 6D         [ 1] 1699 	ld	0x516d, a
                                   1700 ;	lib/src/stm8l15x_rtc.c: 1919: RTC->WPR = 0xFF; 
      008EC8 35 FF 51 59      [ 1] 1701 	mov	0x5159+0, #0xff
                                   1702 ;	lib/src/stm8l15x_rtc.c: 1921: }
      008ECC 84               [ 1] 1703 	pop	a
      008ECD 81               [ 4] 1704 	ret
                                   1705 ;	lib/src/stm8l15x_rtc.c: 1930: void RTC_TamperSamplingFreqConfig(RTC_TamperSamplingFreq_TypeDef RTC_TamperSamplingFreq)
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function RTC_TamperSamplingFreqConfig
                                   1708 ;	-----------------------------------------
      008ECE                       1709 _RTC_TamperSamplingFreqConfig:
      008ECE 88               [ 1] 1710 	push	a
      008ECF 6B 01            [ 1] 1711 	ld	(0x01, sp), a
                                   1712 ;	lib/src/stm8l15x_rtc.c: 1936: RTC->WPR = 0xCA;
      008ED1 35 CA 51 59      [ 1] 1713 	mov	0x5159+0, #0xca
                                   1714 ;	lib/src/stm8l15x_rtc.c: 1937: RTC->WPR = 0x53;
      008ED5 35 53 51 59      [ 1] 1715 	mov	0x5159+0, #0x53
                                   1716 ;	lib/src/stm8l15x_rtc.c: 1940: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFREQ);
      008ED9 C6 51 6D         [ 1] 1717 	ld	a, 0x516d
      008EDC A4 F8            [ 1] 1718 	and	a, #0xf8
      008EDE C7 51 6D         [ 1] 1719 	ld	0x516d, a
                                   1720 ;	lib/src/stm8l15x_rtc.c: 1943: RTC->TCR2 |= (uint8_t)RTC_TamperSamplingFreq;
      008EE1 C6 51 6D         [ 1] 1721 	ld	a, 0x516d
      008EE4 1A 01            [ 1] 1722 	or	a, (0x01, sp)
      008EE6 C7 51 6D         [ 1] 1723 	ld	0x516d, a
                                   1724 ;	lib/src/stm8l15x_rtc.c: 1946: RTC->WPR = 0xFF; 
      008EE9 35 FF 51 59      [ 1] 1725 	mov	0x5159+0, #0xff
                                   1726 ;	lib/src/stm8l15x_rtc.c: 1947: }
      008EED 84               [ 1] 1727 	pop	a
      008EEE 81               [ 4] 1728 	ret
                                   1729 ;	lib/src/stm8l15x_rtc.c: 1957: void RTC_TamperPinsPrechargeDuration(RTC_TamperPrechargeDuration_TypeDef RTC_TamperPrechargeDuration)
                                   1730 ;	-----------------------------------------
                                   1731 ;	 function RTC_TamperPinsPrechargeDuration
                                   1732 ;	-----------------------------------------
      008EEF                       1733 _RTC_TamperPinsPrechargeDuration:
      008EEF 88               [ 1] 1734 	push	a
      008EF0 6B 01            [ 1] 1735 	ld	(0x01, sp), a
                                   1736 ;	lib/src/stm8l15x_rtc.c: 1963: RTC->WPR = 0xCA;
      008EF2 35 CA 51 59      [ 1] 1737 	mov	0x5159+0, #0xca
                                   1738 ;	lib/src/stm8l15x_rtc.c: 1964: RTC->WPR = 0x53;
      008EF6 35 53 51 59      [ 1] 1739 	mov	0x5159+0, #0x53
                                   1740 ;	lib/src/stm8l15x_rtc.c: 1967: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPPUDIS | RTC_TCR2_TAMPPRCH);
      008EFA C6 51 6D         [ 1] 1741 	ld	a, 0x516d
      008EFD A4 1F            [ 1] 1742 	and	a, #0x1f
      008EFF C7 51 6D         [ 1] 1743 	ld	0x516d, a
                                   1744 ;	lib/src/stm8l15x_rtc.c: 1970: RTC->TCR2 |= (uint8_t)RTC_TamperPrechargeDuration;
      008F02 C6 51 6D         [ 1] 1745 	ld	a, 0x516d
      008F05 1A 01            [ 1] 1746 	or	a, (0x01, sp)
      008F07 C7 51 6D         [ 1] 1747 	ld	0x516d, a
                                   1748 ;	lib/src/stm8l15x_rtc.c: 1973: RTC->WPR = 0xFF; 
      008F0A 35 FF 51 59      [ 1] 1749 	mov	0x5159+0, #0xff
                                   1750 ;	lib/src/stm8l15x_rtc.c: 1974: }
      008F0E 84               [ 1] 1751 	pop	a
      008F0F 81               [ 4] 1752 	ret
                                   1753 ;	lib/src/stm8l15x_rtc.c: 1986: void RTC_TamperCmd(RTC_Tamper_TypeDef RTC_Tamper,
                                   1754 ;	-----------------------------------------
                                   1755 ;	 function RTC_TamperCmd
                                   1756 ;	-----------------------------------------
      008F10                       1757 _RTC_TamperCmd:
      008F10 88               [ 1] 1758 	push	a
                                   1759 ;	lib/src/stm8l15x_rtc.c: 1995: RTC->WPR = 0xCA;
      008F11 35 CA 51 59      [ 1] 1760 	mov	0x5159+0, #0xca
                                   1761 ;	lib/src/stm8l15x_rtc.c: 1996: RTC->WPR = 0x53;
      008F15 35 53 51 59      [ 1] 1762 	mov	0x5159+0, #0x53
                                   1763 ;	lib/src/stm8l15x_rtc.c: 2002: RTC->TCR1 |= (uint8_t)RTC_Tamper;
      008F19 AE 51 6C         [ 2] 1764 	ldw	x, #0x516c
      008F1C 88               [ 1] 1765 	push	a
      008F1D F6               [ 1] 1766 	ld	a, (x)
      008F1E 6B 02            [ 1] 1767 	ld	(0x02, sp), a
      008F20 84               [ 1] 1768 	pop	a
                                   1769 ;	lib/src/stm8l15x_rtc.c: 1999: if (NewState != DISABLE)
      008F21 0D 04            [ 1] 1770 	tnz	(0x04, sp)
      008F23 27 07            [ 1] 1771 	jreq	00102$
                                   1772 ;	lib/src/stm8l15x_rtc.c: 2002: RTC->TCR1 |= (uint8_t)RTC_Tamper;
      008F25 1A 01            [ 1] 1773 	or	a, (0x01, sp)
      008F27 C7 51 6C         [ 1] 1774 	ld	0x516c, a
      008F2A 20 06            [ 2] 1775 	jra	00103$
      008F2C                       1776 00102$:
                                   1777 ;	lib/src/stm8l15x_rtc.c: 2007: RTC->TCR1 &= (uint8_t)~RTC_Tamper;
      008F2C 43               [ 1] 1778 	cpl	a
      008F2D 14 01            [ 1] 1779 	and	a, (0x01, sp)
      008F2F C7 51 6C         [ 1] 1780 	ld	0x516c, a
      008F32                       1781 00103$:
                                   1782 ;	lib/src/stm8l15x_rtc.c: 2012: RTC->WPR = 0xFF; 
      008F32 35 FF 51 59      [ 1] 1783 	mov	0x5159+0, #0xff
                                   1784 ;	lib/src/stm8l15x_rtc.c: 2013: }
      008F36 84               [ 1] 1785 	pop	a
      008F37 85               [ 2] 1786 	popw	x
      008F38 84               [ 1] 1787 	pop	a
      008F39 FC               [ 2] 1788 	jp	(x)
                                   1789 ;	lib/src/stm8l15x_rtc.c: 2057: void RTC_ITConfig(RTC_IT_TypeDef RTC_IT, FunctionalState NewState)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function RTC_ITConfig
                                   1792 ;	-----------------------------------------
      008F3A                       1793 _RTC_ITConfig:
      008F3A 52 03            [ 2] 1794 	sub	sp, #3
      008F3C 6B 03            [ 1] 1795 	ld	(0x03, sp), a
                                   1796 ;	lib/src/stm8l15x_rtc.c: 2064: RTC->WPR = 0xCA;
      008F3E 35 CA 51 59      [ 1] 1797 	mov	0x5159+0, #0xca
                                   1798 ;	lib/src/stm8l15x_rtc.c: 2065: RTC->WPR = 0x53;
      008F42 35 53 51 59      [ 1] 1799 	mov	0x5159+0, #0x53
                                   1800 ;	lib/src/stm8l15x_rtc.c: 2070: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
      008F46 C6 51 49         [ 1] 1801 	ld	a, 0x5149
      008F49 6B 02            [ 1] 1802 	ld	(0x02, sp), a
      008F4B 9F               [ 1] 1803 	ld	a, xl
      008F4C A4 F0            [ 1] 1804 	and	a, #0xf0
                                   1805 ;	lib/src/stm8l15x_rtc.c: 2071: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
      008F4E 88               [ 1] 1806 	push	a
      008F4F 9F               [ 1] 1807 	ld	a, xl
      008F50 A4 01            [ 1] 1808 	and	a, #0x01
      008F52 6B 02            [ 1] 1809 	ld	(0x02, sp), a
      008F54 84               [ 1] 1810 	pop	a
                                   1811 ;	lib/src/stm8l15x_rtc.c: 2067: if (NewState != DISABLE)
      008F55 0D 03            [ 1] 1812 	tnz	(0x03, sp)
      008F57 27 0F            [ 1] 1813 	jreq	00102$
                                   1814 ;	lib/src/stm8l15x_rtc.c: 2070: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
      008F59 1A 02            [ 1] 1815 	or	a, (0x02, sp)
      008F5B C7 51 49         [ 1] 1816 	ld	0x5149, a
                                   1817 ;	lib/src/stm8l15x_rtc.c: 2071: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
      008F5E C6 51 6C         [ 1] 1818 	ld	a, 0x516c
      008F61 1A 01            [ 1] 1819 	or	a, (0x01, sp)
      008F63 C7 51 6C         [ 1] 1820 	ld	0x516c, a
      008F66 20 13            [ 2] 1821 	jra	00103$
      008F68                       1822 00102$:
                                   1823 ;	lib/src/stm8l15x_rtc.c: 2076: RTC->CR2  &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
      008F68 43               [ 1] 1824 	cpl	a
      008F69 14 02            [ 1] 1825 	and	a, (0x02, sp)
      008F6B C7 51 49         [ 1] 1826 	ld	0x5149, a
                                   1827 ;	lib/src/stm8l15x_rtc.c: 2077: RTC->TCR1 &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)RTC_TCR1_TAMPIE);
      008F6E C6 51 6C         [ 1] 1828 	ld	a, 0x516c
      008F71 6B 02            [ 1] 1829 	ld	(0x02, sp), a
      008F73 7B 01            [ 1] 1830 	ld	a, (0x01, sp)
      008F75 43               [ 1] 1831 	cpl	a
      008F76 14 02            [ 1] 1832 	and	a, (0x02, sp)
      008F78 C7 51 6C         [ 1] 1833 	ld	0x516c, a
      008F7B                       1834 00103$:
                                   1835 ;	lib/src/stm8l15x_rtc.c: 2081: RTC->WPR = 0xFF; 
      008F7B 35 FF 51 59      [ 1] 1836 	mov	0x5159+0, #0xff
                                   1837 ;	lib/src/stm8l15x_rtc.c: 2082: }
      008F7F 5B 03            [ 2] 1838 	addw	sp, #3
      008F81 81               [ 4] 1839 	ret
                                   1840 ;	lib/src/stm8l15x_rtc.c: 2089: FlagStatus RTC_GetFlagStatus(RTC_Flag_TypeDef RTC_FLAG)
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function RTC_GetFlagStatus
                                   1843 ;	-----------------------------------------
      008F82                       1844 _RTC_GetFlagStatus:
      008F82 52 02            [ 2] 1845 	sub	sp, #2
      008F84 51               [ 1] 1846 	exgw	x, y
                                   1847 ;	lib/src/stm8l15x_rtc.c: 2099: tmpreg2 = (uint16_t)((uint16_t)RTC->ISR1 << 8);
      008F85 C6 51 4C         [ 1] 1848 	ld	a, 0x514c
      008F88 6B 01            [ 1] 1849 	ld	(0x01, sp), a
      008F8A 0F 02            [ 1] 1850 	clr	(0x02, sp)
                                   1851 ;	lib/src/stm8l15x_rtc.c: 2100: tmpreg1 = (uint16_t)((uint16_t)((uint16_t)(RTC->ISR2)) | tmpreg2);
      008F8C C6 51 4D         [ 1] 1852 	ld	a, 0x514d
      008F8F 5F               [ 1] 1853 	clrw	x
      008F90 1A 02            [ 1] 1854 	or	a, (0x02, sp)
      008F92 95               [ 1] 1855 	ld	xh, a
      008F93 9F               [ 1] 1856 	ld	a, xl
      008F94 1A 01            [ 1] 1857 	or	a, (0x01, sp)
                                   1858 ;	lib/src/stm8l15x_rtc.c: 2103: if ((tmpreg1 & (uint16_t)RTC_FLAG) != RESET)
      008F96 17 01            [ 2] 1859 	ldw	(0x01, sp), y
      008F98 14 01            [ 1] 1860 	and	a, (0x01, sp)
      008F9A 02               [ 1] 1861 	rlwa	x
      008F9B 14 02            [ 1] 1862 	and	a, (0x02, sp)
      008F9D 95               [ 1] 1863 	ld	xh, a
      008F9E 5D               [ 2] 1864 	tnzw	x
      008F9F 27 03            [ 1] 1865 	jreq	00102$
                                   1866 ;	lib/src/stm8l15x_rtc.c: 2105: flagstatus = SET;
      008FA1 A6 01            [ 1] 1867 	ld	a, #0x01
                                   1868 ;	lib/src/stm8l15x_rtc.c: 2109: flagstatus = RESET;
      008FA3 21                    1869 	.byte 0x21
      008FA4                       1870 00102$:
      008FA4 4F               [ 1] 1871 	clr	a
      008FA5                       1872 00103$:
                                   1873 ;	lib/src/stm8l15x_rtc.c: 2111: return (FlagStatus)flagstatus;
                                   1874 ;	lib/src/stm8l15x_rtc.c: 2112: }
      008FA5 5B 02            [ 2] 1875 	addw	sp, #2
      008FA7 81               [ 4] 1876 	ret
                                   1877 ;	lib/src/stm8l15x_rtc.c: 2121: void RTC_ClearFlag(RTC_Flag_TypeDef RTC_FLAG)
                                   1878 ;	-----------------------------------------
                                   1879 ;	 function RTC_ClearFlag
                                   1880 ;	-----------------------------------------
      008FA8                       1881 _RTC_ClearFlag:
                                   1882 ;	lib/src/stm8l15x_rtc.c: 2127: RTC->ISR2 = (uint8_t)~((uint8_t)RTC_FLAG) ;
      008FA8 9F               [ 1] 1883 	ld	a, xl
      008FA9 43               [ 1] 1884 	cpl	a
      008FAA C7 51 4D         [ 1] 1885 	ld	0x514d, a
                                   1886 ;	lib/src/stm8l15x_rtc.c: 2128: RTC->ISR1 = (uint8_t)(((uint8_t)~(uint8_t)((uint16_t)RTC_FLAG >> (uint8_t)8)) & ((uint8_t)~(uint8_t)(RTC_ISR1_INIT)));
      008FAD 9E               [ 1] 1887 	ld	a, xh
      008FAE 43               [ 1] 1888 	cpl	a
      008FAF A4 7F            [ 1] 1889 	and	a, #0x7f
      008FB1 C7 51 4C         [ 1] 1890 	ld	0x514c, a
                                   1891 ;	lib/src/stm8l15x_rtc.c: 2129: }
      008FB4 81               [ 4] 1892 	ret
                                   1893 ;	lib/src/stm8l15x_rtc.c: 2137: ITStatus RTC_GetITStatus(RTC_IT_TypeDef RTC_IT)
                                   1894 ;	-----------------------------------------
                                   1895 ;	 function RTC_GetITStatus
                                   1896 ;	-----------------------------------------
      008FB5                       1897 _RTC_GetITStatus:
      008FB5 88               [ 1] 1898 	push	a
                                   1899 ;	lib/src/stm8l15x_rtc.c: 2146: enablestatus = (uint8_t)(RTC->CR2 & (uint16_t)RTC_IT);
      008FB6 C6 51 49         [ 1] 1900 	ld	a, 0x5149
      008FB9 6B 01            [ 1] 1901 	ld	(0x01, sp), a
      008FBB 9F               [ 1] 1902 	ld	a, xl
      008FBC 14 01            [ 1] 1903 	and	a, (0x01, sp)
      008FBE 6B 01            [ 1] 1904 	ld	(0x01, sp), a
                                   1905 ;	lib/src/stm8l15x_rtc.c: 2149: tmpreg = (uint8_t)(RTC->ISR2 & (uint8_t)((uint16_t)RTC_IT >> 4));
      008FC0 C6 51 4D         [ 1] 1906 	ld	a, 0x514d
      008FC3 54               [ 2] 1907 	srlw	x
      008FC4 54               [ 2] 1908 	srlw	x
      008FC5 54               [ 2] 1909 	srlw	x
      008FC6 54               [ 2] 1910 	srlw	x
      008FC7 89               [ 2] 1911 	pushw	x
      008FC8 14 02            [ 1] 1912 	and	a, (2, sp)
      008FCA 85               [ 2] 1913 	popw	x
                                   1914 ;	lib/src/stm8l15x_rtc.c: 2152: if ((enablestatus != (uint8_t)RESET) && (tmpreg != (uint8_t)RESET))
      008FCB 0D 01            [ 1] 1915 	tnz	(0x01, sp)
      008FCD 27 06            [ 1] 1916 	jreq	00102$
      008FCF 4D               [ 1] 1917 	tnz	a
      008FD0 27 03            [ 1] 1918 	jreq	00102$
                                   1919 ;	lib/src/stm8l15x_rtc.c: 2154: itstatus = SET;
      008FD2 A6 01            [ 1] 1920 	ld	a, #0x01
                                   1921 ;	lib/src/stm8l15x_rtc.c: 2158: itstatus = RESET;
      008FD4 21                    1922 	.byte 0x21
      008FD5                       1923 00102$:
      008FD5 4F               [ 1] 1924 	clr	a
      008FD6                       1925 00103$:
                                   1926 ;	lib/src/stm8l15x_rtc.c: 2161: return (ITStatus)itstatus;
                                   1927 ;	lib/src/stm8l15x_rtc.c: 2162: }
      008FD6 5B 01            [ 2] 1928 	addw	sp, #1
      008FD8 81               [ 4] 1929 	ret
                                   1930 ;	lib/src/stm8l15x_rtc.c: 2171: void RTC_ClearITPendingBit(RTC_IT_TypeDef RTC_IT)
                                   1931 ;	-----------------------------------------
                                   1932 ;	 function RTC_ClearITPendingBit
                                   1933 ;	-----------------------------------------
      008FD9                       1934 _RTC_ClearITPendingBit:
                                   1935 ;	lib/src/stm8l15x_rtc.c: 2177: RTC->ISR2 = (uint8_t)~(uint8_t)((uint16_t)RTC_IT >> 4);
      008FD9 A6 10            [ 1] 1936 	ld	a, #0x10
      008FDB 62               [ 2] 1937 	div	x, a
      008FDC 9F               [ 1] 1938 	ld	a, xl
      008FDD 43               [ 1] 1939 	cpl	a
      008FDE C7 51 4D         [ 1] 1940 	ld	0x514d, a
                                   1941 ;	lib/src/stm8l15x_rtc.c: 2178: }
      008FE1 81               [ 4] 1942 	ret
                                   1943 ;	lib/src/stm8l15x_rtc.c: 2201: static uint8_t ByteToBcd2(uint8_t Value)
                                   1944 ;	-----------------------------------------
                                   1945 ;	 function ByteToBcd2
                                   1946 ;	-----------------------------------------
      008FE2                       1947 _ByteToBcd2:
                                   1948 ;	lib/src/stm8l15x_rtc.c: 2205: while (Value >= 10)
      008FE2 5F               [ 1] 1949 	clrw	x
      008FE3                       1950 00101$:
      008FE3 A1 0A            [ 1] 1951 	cp	a, #0x0a
      008FE5 25 05            [ 1] 1952 	jrc	00103$
                                   1953 ;	lib/src/stm8l15x_rtc.c: 2207: bcdhigh++;
      008FE7 5C               [ 1] 1954 	incw	x
                                   1955 ;	lib/src/stm8l15x_rtc.c: 2208: Value -= 10;
      008FE8 A0 0A            [ 1] 1956 	sub	a, #0x0a
      008FEA 20 F7            [ 2] 1957 	jra	00101$
      008FEC                       1958 00103$:
                                   1959 ;	lib/src/stm8l15x_rtc.c: 2211: return  (uint8_t)((uint8_t)(bcdhigh << 4) | Value);
      008FEC 58               [ 2] 1960 	sllw	x
      008FED 58               [ 2] 1961 	sllw	x
      008FEE 58               [ 2] 1962 	sllw	x
      008FEF 58               [ 2] 1963 	sllw	x
      008FF0 89               [ 2] 1964 	pushw	x
      008FF1 1A 02            [ 1] 1965 	or	a, (2, sp)
      008FF3 85               [ 2] 1966 	popw	x
                                   1967 ;	lib/src/stm8l15x_rtc.c: 2212: }
      008FF4 81               [ 4] 1968 	ret
                                   1969 ;	lib/src/stm8l15x_rtc.c: 2219: static uint8_t Bcd2ToByte(uint8_t Value)
                                   1970 ;	-----------------------------------------
                                   1971 ;	 function Bcd2ToByte
                                   1972 ;	-----------------------------------------
      008FF5                       1973 _Bcd2ToByte:
                                   1974 ;	lib/src/stm8l15x_rtc.c: 2223: tmp = (uint8_t)((uint8_t)((uint8_t)(Value & (uint8_t)0xF0) >> 4) * (uint8_t)10);
      008FF5 90 97            [ 1] 1975 	ld	yl, a
      008FF7 A4 F0            [ 1] 1976 	and	a, #0xf0
      008FF9 4E               [ 1] 1977 	swap	a
      008FFA A4 0F            [ 1] 1978 	and	a, #0x0f
      008FFC 97               [ 1] 1979 	ld	xl, a
      008FFD A6 0A            [ 1] 1980 	ld	a, #0x0a
      008FFF 42               [ 4] 1981 	mul	x, a
                                   1982 ;	lib/src/stm8l15x_rtc.c: 2225: return (uint8_t)(tmp + (Value & (uint8_t)0x0F));
      009000 90 9F            [ 1] 1983 	ld	a, yl
      009002 A4 0F            [ 1] 1984 	and	a, #0x0f
      009004 89               [ 2] 1985 	pushw	x
      009005 1B 02            [ 1] 1986 	add	a, (2, sp)
      009007 85               [ 2] 1987 	popw	x
                                   1988 ;	lib/src/stm8l15x_rtc.c: 2226: }
      009008 81               [ 4] 1989 	ret
                                   1990 	.area CODE
                                   1991 	.area CONST
                                   1992 	.area INITIALIZER
                                   1993 	.area CABS (ABS)
