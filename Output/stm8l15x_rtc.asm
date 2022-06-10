;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8l15x_rtc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RTC_DeInit
	.globl _RTC_Init
	.globl _RTC_StructInit
	.globl _RTC_WriteProtectionCmd
	.globl _RTC_EnterInitMode
	.globl _RTC_ExitInitMode
	.globl _RTC_WaitForSynchro
	.globl _RTC_RatioCmd
	.globl _RTC_BypassShadowCmd
	.globl _RTC_SetTime
	.globl _RTC_TimeStructInit
	.globl _RTC_GetTime
	.globl _RTC_GetSubSecond
	.globl _RTC_SetDate
	.globl _RTC_DateStructInit
	.globl _RTC_GetDate
	.globl _RTC_SetAlarm
	.globl _RTC_AlarmStructInit
	.globl _RTC_GetAlarm
	.globl _RTC_AlarmCmd
	.globl _RTC_AlarmSubSecondConfig
	.globl _RTC_WakeUpClockConfig
	.globl _RTC_SetWakeUpCounter
	.globl _RTC_GetWakeUpCounter
	.globl _RTC_WakeUpCmd
	.globl _RTC_DayLightSavingConfig
	.globl _RTC_GetStoreOperation
	.globl _RTC_OutputConfig
	.globl _RTC_SynchroShiftConfig
	.globl _RTC_SmoothCalibConfig
	.globl _RTC_CalibOutputConfig
	.globl _RTC_CalibOutputCmd
	.globl _RTC_TamperLevelConfig
	.globl _RTC_TamperFilterConfig
	.globl _RTC_TamperSamplingFreqConfig
	.globl _RTC_TamperPinsPrechargeDuration
	.globl _RTC_TamperCmd
	.globl _RTC_ITConfig
	.globl _RTC_GetFlagStatus
	.globl _RTC_ClearFlag
	.globl _RTC_GetITStatus
	.globl _RTC_ClearITPendingBit
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
;	lib/src/stm8l15x_rtc.c: 232: ErrorStatus RTC_DeInit(void)
;	-----------------------------------------
;	 function RTC_DeInit
;	-----------------------------------------
_RTC_DeInit:
;	lib/src/stm8l15x_rtc.c: 239: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 240: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 243: if (RTC_EnterInitMode() == ERROR)
	call	_RTC_EnterInitMode
	tnz	a
	jrne	00121$
;	lib/src/stm8l15x_rtc.c: 245: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 247: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
	ret
00121$:
;	lib/src/stm8l15x_rtc.c: 252: RTC->TR1 = RTC_TR1_RESET_VALUE;
	mov	0x5140+0, #0x00
;	lib/src/stm8l15x_rtc.c: 253: RTC->TR2 = RTC_TR2_RESET_VALUE;
	mov	0x5141+0, #0x00
;	lib/src/stm8l15x_rtc.c: 254: RTC->TR3 = RTC_TR3_RESET_VALUE;
	mov	0x5142+0, #0x00
;	lib/src/stm8l15x_rtc.c: 257: RTC->DR1 = RTC_DR1_RESET_VALUE;
	mov	0x5144+0, #0x01
;	lib/src/stm8l15x_rtc.c: 258: RTC->DR2 = RTC_DR2_RESET_VALUE;
	mov	0x5145+0, #0x21
;	lib/src/stm8l15x_rtc.c: 259: RTC->DR3 = RTC_DR3_RESET_VALUE;
	mov	0x5146+0, #0x00
;	lib/src/stm8l15x_rtc.c: 262: RTC->SPRERH = RTC_SPRERH_RESET_VALUE;
	mov	0x5150+0, #0x00
;	lib/src/stm8l15x_rtc.c: 263: RTC->SPRERL = RTC_SPRERL_RESET_VALUE;
	mov	0x5151+0, #0xff
;	lib/src/stm8l15x_rtc.c: 264: RTC->APRER  = RTC_APRER_RESET_VALUE;
	mov	0x5152+0, #0x7f
;	lib/src/stm8l15x_rtc.c: 266: RTC->TCR1 = RTC_TCR1_RESET_VALUE;
	mov	0x516c+0, #0x00
;	lib/src/stm8l15x_rtc.c: 267: RTC->TCR2 = RTC_TCR2_RESET_VALUE;
	mov	0x516d+0, #0x00
;	lib/src/stm8l15x_rtc.c: 271: RTC->CR1 = RTC_CR1_RESET_VALUE;
	mov	0x5148+0, #0x00
;	lib/src/stm8l15x_rtc.c: 272: RTC->CR2 = RTC_CR2_RESET_VALUE;
	mov	0x5149+0, #0x00
;	lib/src/stm8l15x_rtc.c: 273: RTC->CR3 = RTC_CR3_RESET_VALUE;
	mov	0x514a+0, #0x00
;	lib/src/stm8l15x_rtc.c: 276: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
	clrw	x
00102$:
	btjt	0x514c, #2, 00104$
	cpw	x, #0xffff
	jreq	00104$
;	lib/src/stm8l15x_rtc.c: 278: wutwfcount++;
	incw	x
;	lib/src/stm8l15x_rtc.c: 279: RTC->ISR1 = 0;
	mov	0x514c+0, #0x00
	jra	00102$
00104$:
;	lib/src/stm8l15x_rtc.c: 282: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
	btjt	0x514c, #2, 00118$
;	lib/src/stm8l15x_rtc.c: 284: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 286: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
	ret
00118$:
;	lib/src/stm8l15x_rtc.c: 291: RTC->CR1 = RTC_CR1_RESET_VALUE;
	mov	0x5148+0, #0x00
;	lib/src/stm8l15x_rtc.c: 294: RTC->WUTRH = RTC_WUTRH_RESET_VALUE;
	mov	0x5154+0, #0xff
;	lib/src/stm8l15x_rtc.c: 295: RTC->WUTRL = RTC_WUTRL_RESET_VALUE;
	mov	0x5155+0, #0xff
;	lib/src/stm8l15x_rtc.c: 298: RTC->ALRMAR1 = RTC_ALRMAR1_RESET_VALUE;
	mov	0x515c+0, #0x00
;	lib/src/stm8l15x_rtc.c: 299: RTC->ALRMAR2 = RTC_ALRMAR2_RESET_VALUE;
	mov	0x515d+0, #0x00
;	lib/src/stm8l15x_rtc.c: 300: RTC->ALRMAR3 = RTC_ALRMAR3_RESET_VALUE;
	mov	0x515e+0, #0x00
;	lib/src/stm8l15x_rtc.c: 301: RTC->ALRMAR4 = RTC_ALRMAR4_RESET_VALUE;
	mov	0x515f+0, #0x00
;	lib/src/stm8l15x_rtc.c: 303: RTC->ALRMASSRH = RTC_ALRMASSRH_RESET_VALUE;
	mov	0x5164+0, #0x00
;	lib/src/stm8l15x_rtc.c: 304: RTC->ALRMASSRL = RTC_ALRMASSRL_RESET_VALUE;
	mov	0x5165+0, #0x00
;	lib/src/stm8l15x_rtc.c: 305: RTC->ALRMASSMSKR = RTC_ALRMASSMSKR_RESET_VALUE;
	mov	0x5166+0, #0x00
;	lib/src/stm8l15x_rtc.c: 308: RTC->ISR1 = (uint8_t)0x00;
	mov	0x514c+0, #0x00
;	lib/src/stm8l15x_rtc.c: 309: RTC->ISR2 = RTC_ISR2_RESET_VALUE;
	mov	0x514d+0, #0x00
;	lib/src/stm8l15x_rtc.c: 311: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
	btjf	0x514c, #1, 00110$
;	lib/src/stm8l15x_rtc.c: 313: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
	clrw	x
00106$:
	btjf	0x514c, #1, 00110$
	cpw	x, #0xffff
	jreq	00110$
;	lib/src/stm8l15x_rtc.c: 315: recalpfcount++;
	incw	x
	jra	00106$
00110$:
;	lib/src/stm8l15x_rtc.c: 318: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
	ld	a, 0x514c
	bcp	a, #0x02
	jrne	00115$
;	lib/src/stm8l15x_rtc.c: 320: RTC->CALRH = RTC_CALRH_RESET_VALUE;
	mov	0x516a+0, #0x00
;	lib/src/stm8l15x_rtc.c: 321: RTC->CALRL = RTC_CALRL_RESET_VALUE;
	mov	0x516b+0, #0x00
;	lib/src/stm8l15x_rtc.c: 323: if (RTC_WaitForSynchro() == ERROR)
	call	_RTC_WaitForSynchro
	tnz	a
	jrne	00112$
;	lib/src/stm8l15x_rtc.c: 325: status = ERROR;
	clr	a
	jra	00116$
00112$:
;	lib/src/stm8l15x_rtc.c: 329: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 334: status = ERROR;
	.byte 0x21
00115$:
	clr	a
00116$:
;	lib/src/stm8l15x_rtc.c: 338: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 343: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 344: }
	ret
;	lib/src/stm8l15x_rtc.c: 359: ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct)
;	-----------------------------------------
;	 function RTC_Init
;	-----------------------------------------
_RTC_Init:
	sub	sp, #3
	ldw	(0x02, sp), x
;	lib/src/stm8l15x_rtc.c: 369: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 370: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 373: if (RTC_EnterInitMode() == ERROR)
	call	_RTC_EnterInitMode
	tnz	a
	jrne	00102$
;	lib/src/stm8l15x_rtc.c: 375: status = ERROR;
	clr	a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 380: RTC->CR1 &= ((uint8_t)~( RTC_CR1_FMT ));
	bres	0x5148, #6
;	lib/src/stm8l15x_rtc.c: 383: RTC->CR1 |=  ((uint8_t)(RTC_InitStruct->RTC_HourFormat));
	ld	a, 0x5148
	ld	(0x01, sp), a
	ldw	x, (0x02, sp)
	ld	a, (x)
	or	a, (0x01, sp)
	ld	0x5148, a
;	lib/src/stm8l15x_rtc.c: 386: RTC->SPRERH = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv >> 8);
	ldw	x, (0x02, sp)
	incw	x
	incw	x
	ld	a, (0x1, x)
	ld	a, (x)
	ld	0x5150, a
;	lib/src/stm8l15x_rtc.c: 387: RTC->SPRERL = (uint8_t)(RTC_InitStruct->RTC_SynchPrediv);
	ld	a, (0x1, x)
	ld	0x5151, a
;	lib/src/stm8l15x_rtc.c: 388: RTC->APRER =  (uint8_t)(RTC_InitStruct->RTC_AsynchPrediv);
	ldw	x, (0x02, sp)
	ld	a, (0x1, x)
	ld	0x5152, a
;	lib/src/stm8l15x_rtc.c: 391: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
	bres	0x514c, #7
;	lib/src/stm8l15x_rtc.c: 393: status = SUCCESS;
	ld	a, #0x01
00103$:
;	lib/src/stm8l15x_rtc.c: 397: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 400: return (ErrorStatus)(status);
;	lib/src/stm8l15x_rtc.c: 401: }
	addw	sp, #3
	ret
;	lib/src/stm8l15x_rtc.c: 410: void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct)
;	-----------------------------------------
;	 function RTC_StructInit
;	-----------------------------------------
_RTC_StructInit:
	exgw	x, y
;	lib/src/stm8l15x_rtc.c: 413: RTC_InitStruct->RTC_HourFormat = RTC_HourFormat_24;
	clr	(y)
;	lib/src/stm8l15x_rtc.c: 416: RTC_InitStruct->RTC_AsynchPrediv = RTC_APRER_RESET_VALUE;
	ldw	x, y
	incw	x
	ld	a, #0x7f
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 419: RTC_InitStruct->RTC_SynchPrediv = RTC_SPRERL_RESET_VALUE;
	ldw	x, y
	ldw	y, #0x00ff
	ldw	(0x02, x), y
;	lib/src/stm8l15x_rtc.c: 420: }
	ret
;	lib/src/stm8l15x_rtc.c: 430: void RTC_WriteProtectionCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_WriteProtectionCmd
;	-----------------------------------------
_RTC_WriteProtectionCmd:
;	lib/src/stm8l15x_rtc.c: 435: if (NewState != DISABLE)
	tnz	a
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 438: RTC->WPR = RTC_WPR_EnableKey;
	mov	0x5159+0, #0xff
	ret
00102$:
;	lib/src/stm8l15x_rtc.c: 443: RTC->WPR = RTC_WPR_DisableKey1;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 444: RTC->WPR = RTC_WPR_DisableKey2;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 446: }
	ret
;	lib/src/stm8l15x_rtc.c: 458: ErrorStatus RTC_EnterInitMode(void)
;	-----------------------------------------
;	 function RTC_EnterInitMode
;	-----------------------------------------
_RTC_EnterInitMode:
;	lib/src/stm8l15x_rtc.c: 464: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
	btjt	0x514c, #6, 00106$
;	lib/src/stm8l15x_rtc.c: 467: RTC->ISR1 = (uint8_t)RTC_ISR1_INIT;
	mov	0x514c+0, #0x80
;	lib/src/stm8l15x_rtc.c: 470: while (((RTC->ISR1 & RTC_ISR1_INITF) == RESET) && ( initfcount != INITF_TIMEOUT))
	clrw	x
00102$:
	btjt	0x514c, #6, 00106$
	cpw	x, #0xffff
	jreq	00106$
;	lib/src/stm8l15x_rtc.c: 472: initfcount++;
	incw	x
	jra	00102$
00106$:
;	lib/src/stm8l15x_rtc.c: 476: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
	btjt	0x514c, #6, 00108$
;	lib/src/stm8l15x_rtc.c: 478: status = ERROR;
	clr	a
	ret
00108$:
;	lib/src/stm8l15x_rtc.c: 482: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 485: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 486: }
	ret
;	lib/src/stm8l15x_rtc.c: 498: void RTC_ExitInitMode(void)
;	-----------------------------------------
;	 function RTC_ExitInitMode
;	-----------------------------------------
_RTC_ExitInitMode:
;	lib/src/stm8l15x_rtc.c: 501: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
	bres	0x514c, #7
;	lib/src/stm8l15x_rtc.c: 502: }
	ret
;	lib/src/stm8l15x_rtc.c: 527: ErrorStatus RTC_WaitForSynchro(void)
;	-----------------------------------------
;	 function RTC_WaitForSynchro
;	-----------------------------------------
_RTC_WaitForSynchro:
;	lib/src/stm8l15x_rtc.c: 533: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 534: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 537: RTC->ISR1 &= (uint8_t)~(RTC_ISR1_RSF | RTC_ISR1_INIT);
	ld	a, 0x514c
	and	a, #0x5f
	ld	0x514c, a
;	lib/src/stm8l15x_rtc.c: 540: while (((RTC->ISR1 & RTC_ISR1_RSF) == RESET) && ( rsfcount != RSF_TIMEOUT))
	clrw	x
00102$:
	btjt	0x514c, #5, 00104$
	cpw	x, #0xffff
	jreq	00104$
;	lib/src/stm8l15x_rtc.c: 542: rsfcount++;
	incw	x
	jra	00102$
00104$:
;	lib/src/stm8l15x_rtc.c: 546: if ((RTC->ISR1 & RTC_ISR1_RSF) != RESET)
	btjf	0x514c, #5, 00106$
;	lib/src/stm8l15x_rtc.c: 548: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 552: status = ERROR;
	.byte 0x21
00106$:
	clr	a
00107$:
;	lib/src/stm8l15x_rtc.c: 556: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 558: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 559: }
	ret
;	lib/src/stm8l15x_rtc.c: 568: void RTC_RatioCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_RatioCmd
;	-----------------------------------------
_RTC_RatioCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 574: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 575: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
	ld	a, 0x5148
;	lib/src/stm8l15x_rtc.c: 577: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 580: RTC->CR1 |= (uint8_t)RTC_CR1_RATIO;
	or	a, #0x20
	ld	0x5148, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 585: RTC->CR1 &= (uint8_t)~RTC_CR1_RATIO;
	and	a, #0xdf
	ld	0x5148, a
00103$:
;	lib/src/stm8l15x_rtc.c: 589: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 590: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 598: void RTC_BypassShadowCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_BypassShadowCmd
;	-----------------------------------------
_RTC_BypassShadowCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 604: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 605: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
	ld	a, 0x5148
;	lib/src/stm8l15x_rtc.c: 607: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 610: RTC->CR1 |= (uint8_t)RTC_CR1_BYPSHAD;
	or	a, #0x10
	ld	0x5148, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 615: RTC->CR1 &= (uint8_t)~RTC_CR1_BYPSHAD;
	and	a, #0xef
	ld	0x5148, a
00103$:
;	lib/src/stm8l15x_rtc.c: 619: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 620: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 659: ErrorStatus RTC_SetTime(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_SetTime
;	-----------------------------------------
_RTC_SetTime:
	sub	sp, #6
	ld	(0x06, sp), a
	ldw	(0x04, sp), x
;	lib/src/stm8l15x_rtc.c: 701: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 702: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 705: if (RTC_EnterInitMode() == ERROR)
	call	_RTC_EnterInitMode
	tnz	a
	jrne	00114$
;	lib/src/stm8l15x_rtc.c: 707: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 709: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
	jra	00115$
00114$:
;	lib/src/stm8l15x_rtc.c: 714: if ((RTC->CR1 & RTC_CR1_FMT) != RESET)
	btjf	0x5148, #6, 00102$
;	lib/src/stm8l15x_rtc.c: 717: temp = RTC_TimeStruct->RTC_H12;
	ldw	x, (0x04, sp)
	ld	a, (0x3, x)
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 721: temp = 0;
	.byte 0xc5
00102$:
	clr	(0x01, sp)
00103$:
;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
	ldw	x, (0x04, sp)
;	lib/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
	ldw	y, (0x04, sp)
	incw	y
	ldw	(0x02, sp), y
;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
	ld	a, (0x2, x)
;	lib/src/stm8l15x_rtc.c: 724: if (RTC_Format != RTC_Format_BIN)
	tnz	(0x06, sp)
	jreq	00105$
;	lib/src/stm8l15x_rtc.c: 726: RTC->TR1 = (uint8_t)(RTC_TimeStruct->RTC_Seconds);
	ld	0x5140, a
;	lib/src/stm8l15x_rtc.c: 727: RTC->TR2 = (uint8_t)(RTC_TimeStruct->RTC_Minutes) ;
	ldw	x, (0x02, sp)
	ld	a, (x)
	ld	0x5141, a
;	lib/src/stm8l15x_rtc.c: 728: RTC->TR3 = (uint8_t)( temp | RTC_TimeStruct->RTC_Hours) ;
	ldw	x, (0x04, sp)
	ld	a, (x)
	or	a, (0x01, sp)
	ld	0x5142, a
	jra	00106$
00105$:
;	lib/src/stm8l15x_rtc.c: 732: RTC->TR1 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Seconds));
	call	_ByteToBcd2
	ld	0x5140, a
;	lib/src/stm8l15x_rtc.c: 733: RTC->TR2 = (uint8_t)(ByteToBcd2(RTC_TimeStruct->RTC_Minutes)) ;
	ldw	x, (0x02, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	0x5141, a
;	lib/src/stm8l15x_rtc.c: 734: RTC->TR3 = (uint8_t)( temp | ByteToBcd2(RTC_TimeStruct->RTC_Hours));
	ldw	x, (0x04, sp)
	ld	a, (x)
	call	_ByteToBcd2
	or	a, (0x01, sp)
	ld	0x5142, a
00106$:
;	lib/src/stm8l15x_rtc.c: 737: (void)(RTC->DR3);
	ld	a, 0x5146
;	lib/src/stm8l15x_rtc.c: 740: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
	bres	0x514c, #7
;	lib/src/stm8l15x_rtc.c: 743: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 746: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
	ld	a, 0x5148
	bcp	a, #0x10
	jrne	00111$
;	lib/src/stm8l15x_rtc.c: 748: if (RTC_WaitForSynchro() == ERROR)
	call	_RTC_WaitForSynchro
	tnz	a
	jrne	00108$
;	lib/src/stm8l15x_rtc.c: 750: status = ERROR;
	clr	a
	jra	00115$
00108$:
;	lib/src/stm8l15x_rtc.c: 754: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 759: status = SUCCESS;
	.byte 0xc5
00111$:
	ld	a, #0x01
00115$:
;	lib/src/stm8l15x_rtc.c: 763: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 764: }
	addw	sp, #6
	ret
;	lib/src/stm8l15x_rtc.c: 775: void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct)
;	-----------------------------------------
;	 function RTC_TimeStructInit
;	-----------------------------------------
_RTC_TimeStructInit:
;	lib/src/stm8l15x_rtc.c: 778: RTC_TimeStruct->RTC_H12 = RTC_H12_AM;
	ldw	y, x
	clr	(0x0003, x)
;	lib/src/stm8l15x_rtc.c: 779: RTC_TimeStruct->RTC_Hours = 0;
	clr	(y)
;	lib/src/stm8l15x_rtc.c: 780: RTC_TimeStruct->RTC_Minutes = 0;
	ldw	x, y
	incw	x
	clr	(x)
;	lib/src/stm8l15x_rtc.c: 781: RTC_TimeStruct->RTC_Seconds = 0;
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	lib/src/stm8l15x_rtc.c: 782: }
	ret
;	lib/src/stm8l15x_rtc.c: 798: void RTC_GetTime(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_GetTime
;	-----------------------------------------
_RTC_GetTime:
	sub	sp, #6
	ld	(0x06, sp), a
;	lib/src/stm8l15x_rtc.c: 808: RTC_TimeStruct->RTC_Seconds = RTC->TR1;
	ldw	y, x
	incw	x
	incw	x
	ldw	(0x01, sp), x
	ld	a, 0x5140
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 811: RTC_TimeStruct->RTC_Minutes = RTC->TR2;
	ldw	x, y
	incw	x
	ldw	(0x03, sp), x
	ld	a, 0x5141
	ldw	x, (0x03, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 814: tmpreg = (uint8_t)RTC->TR3;
	ld	a, 0x5142
	ld	(0x05, sp), a
;	lib/src/stm8l15x_rtc.c: 817: (void) (RTC->DR3) ;
	ld	a, 0x5146
;	lib/src/stm8l15x_rtc.c: 821: RTC_TimeStruct->RTC_Hours = (uint8_t)(tmpreg & (uint8_t)~(RTC_TR3_PM));
	ld	a, (0x05, sp)
	and	a, #0xbf
	ld	(y), a
;	lib/src/stm8l15x_rtc.c: 824: RTC_TimeStruct->RTC_H12 = (RTC_H12_TypeDef)(tmpreg & RTC_TR3_PM);
	ldw	x, y
	addw	x, #0x0003
	ld	a, (0x05, sp)
	and	a, #0x40
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 827: if (RTC_Format == RTC_Format_BIN)
	tnz	(0x06, sp)
	jrne	00103$
;	lib/src/stm8l15x_rtc.c: 830: RTC_TimeStruct->RTC_Hours = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Hours);
	ld	a, (y)
	pushw	y
	call	_Bcd2ToByte
	popw	y
	ld	(y), a
;	lib/src/stm8l15x_rtc.c: 831: RTC_TimeStruct->RTC_Minutes = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Minutes);
	ldw	x, (0x03, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x03, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 832: RTC_TimeStruct->RTC_Seconds = (uint8_t)Bcd2ToByte(RTC_TimeStruct->RTC_Seconds);
	ldw	x, (0x01, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x01, sp)
	ld	(x), a
00103$:
;	lib/src/stm8l15x_rtc.c: 834: }
	addw	sp, #6
	ret
;	lib/src/stm8l15x_rtc.c: 845: uint16_t RTC_GetSubSecond(void)
;	-----------------------------------------
;	 function RTC_GetSubSecond
;	-----------------------------------------
_RTC_GetSubSecond:
	sub	sp, #4
;	lib/src/stm8l15x_rtc.c: 851: ssrhreg = RTC->SSRH;
	ld	a, 0x5157
	ld	xh, a
;	lib/src/stm8l15x_rtc.c: 852: ssrlreg = RTC->SSRL;
	ld	a, 0x5158
	ld	xl, a
;	lib/src/stm8l15x_rtc.c: 855: (void) (RTC->DR3);
	ld	a, 0x5146
;	lib/src/stm8l15x_rtc.c: 858: ssrreg = (uint16_t)((uint16_t)((uint16_t)ssrhreg << 8) | (uint16_t)(ssrlreg));
	clr	(0x02, sp)
	ld	a, xl
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
;	lib/src/stm8l15x_rtc.c: 859: return (uint16_t)(ssrreg);
	ld	xh, a
;	lib/src/stm8l15x_rtc.c: 860: }
	addw	sp, #4
	ret
;	lib/src/stm8l15x_rtc.c: 876: ErrorStatus RTC_SetDate(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_SetDate
;	-----------------------------------------
_RTC_SetDate:
	sub	sp, #8
	ld	(0x08, sp), a
;	lib/src/stm8l15x_rtc.c: 881: if ((RTC_Format == RTC_Format_BIN) && ((RTC_DateStruct->RTC_Month & TEN_VALUE_BCD) == TEN_VALUE_BCD))
	ldw	(0x06, sp), x
	incw	x
	ldw	(0x01, sp), x
	tnz	(0x08, sp)
	jrne	00102$
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	xl, a
	and	a, #0x10
	cp	a, #0x10
	jrne	00102$
;	lib/src/stm8l15x_rtc.c: 883: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)((RTC_DateStruct->RTC_Month & (uint8_t)~(TEN_VALUE_BCD)) + TEN_VALUE_BIN);
	ld	a, xl
	and	a, #0xef
	add	a, #0x0a
	ldw	x, (0x01, sp)
	ld	(x), a
00102$:
;	lib/src/stm8l15x_rtc.c: 907: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 908: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 911: if (RTC_EnterInitMode() == ERROR)
	call	_RTC_EnterInitMode
	tnz	a
	jrne	00114$
;	lib/src/stm8l15x_rtc.c: 913: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 915: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
	jra	00115$
00114$:
;	lib/src/stm8l15x_rtc.c: 919: (void)(RTC->TR1);
	ld	a, 0x5140
;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
	ldw	x, (0x06, sp)
;	lib/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
	ldw	y, (0x06, sp)
	addw	y, #0x0003
	ldw	(0x03, sp), y
;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
	ld	a, (0x2, x)
;	lib/src/stm8l15x_rtc.c: 922: if (RTC_Format != RTC_Format_BIN)
	tnz	(0x08, sp)
	jreq	00105$
;	lib/src/stm8l15x_rtc.c: 924: RTC->DR1 = (uint8_t)(RTC_DateStruct->RTC_Date);
	ld	0x5144, a
;	lib/src/stm8l15x_rtc.c: 925: RTC->DR2 = (uint8_t)((RTC_DateStruct->RTC_Month) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x05, sp), a
	ldw	x, (0x06, sp)
	ld	a, (x)
	swap	a
	and	a, #0xf0
	sll	a
	or	a, (0x05, sp)
	ld	0x5145, a
;	lib/src/stm8l15x_rtc.c: 926: RTC->DR3 = (uint8_t)((RTC_DateStruct->RTC_Year));
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	0x5146, a
	jra	00106$
00105$:
;	lib/src/stm8l15x_rtc.c: 930: RTC->DR1 = (uint8_t)(ByteToBcd2 ((uint8_t)RTC_DateStruct->RTC_Date));
	call	_ByteToBcd2
	ld	0x5144, a
;	lib/src/stm8l15x_rtc.c: 931: RTC->DR2 = (uint8_t)((ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Month)) | (uint8_t)((RTC_DateStruct->RTC_WeekDay) << 5));
	ldw	x, (0x01, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	(0x05, sp), a
	ldw	x, (0x06, sp)
	ld	a, (x)
	swap	a
	and	a, #0xf0
	sll	a
	or	a, (0x05, sp)
	ld	0x5145, a
;	lib/src/stm8l15x_rtc.c: 932: RTC->DR3 = (uint8_t)(ByteToBcd2((uint8_t)RTC_DateStruct->RTC_Year));
	ldw	x, (0x03, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	0x5146, a
00106$:
;	lib/src/stm8l15x_rtc.c: 936: RTC->ISR1 &= (uint8_t)~RTC_ISR1_INIT;
	bres	0x514c, #7
;	lib/src/stm8l15x_rtc.c: 939: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 942: if ((RTC->CR1 & RTC_CR1_BYPSHAD) == RESET)
	ld	a, 0x5148
	bcp	a, #0x10
	jrne	00111$
;	lib/src/stm8l15x_rtc.c: 944: if (RTC_WaitForSynchro() == ERROR)
	call	_RTC_WaitForSynchro
	tnz	a
	jrne	00108$
;	lib/src/stm8l15x_rtc.c: 946: status = ERROR;
	clr	a
	jra	00115$
00108$:
;	lib/src/stm8l15x_rtc.c: 950: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 955: status = SUCCESS;
	.byte 0xc5
00111$:
	ld	a, #0x01
00115$:
;	lib/src/stm8l15x_rtc.c: 959: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 960: }
	addw	sp, #8
	ret
;	lib/src/stm8l15x_rtc.c: 968: void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct)
;	-----------------------------------------
;	 function RTC_DateStructInit
;	-----------------------------------------
_RTC_DateStructInit:
	exgw	x, y
;	lib/src/stm8l15x_rtc.c: 971: RTC_DateStruct->RTC_WeekDay = RTC_Weekday_Monday;
	ld	a, #0x01
	ld	(y), a
;	lib/src/stm8l15x_rtc.c: 972: RTC_DateStruct->RTC_Date = 1;
	ldw	x, y
	incw	x
	incw	x
	ld	a, #0x01
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 973: RTC_DateStruct->RTC_Month = RTC_Month_January;
	ldw	x, y
	incw	x
	ld	a, #0x01
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 974: RTC_DateStruct->RTC_Year = 0;
	ldw	x, y
	clr	(0x0003, x)
;	lib/src/stm8l15x_rtc.c: 975: }
	ret
;	lib/src/stm8l15x_rtc.c: 988: void RTC_GetDate(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_GetDate
;	-----------------------------------------
_RTC_GetDate:
	sub	sp, #6
	ld	(0x06, sp), a
	exgw	x, y
;	lib/src/stm8l15x_rtc.c: 997: (void) (RTC->TR1) ;
	ld	a, 0x5140
;	lib/src/stm8l15x_rtc.c: 998: RTC_DateStruct->RTC_Date = (uint8_t)(RTC->DR1);
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x01, sp), x
	ld	a, 0x5144
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 999: tmpreg = (uint8_t)RTC->DR2;
	ld	a, 0x5145
	ld	(0x03, sp), a
;	lib/src/stm8l15x_rtc.c: 1000: RTC_DateStruct->RTC_Year = (uint8_t)(RTC->DR3);
	ldw	x, y
	addw	x, #0x0003
	ldw	(0x04, sp), x
	ld	a, 0x5146
	ldw	x, (0x04, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1003: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)(tmpreg & (uint8_t)(RTC_DR2_MT | RTC_DR2_MU));
	ldw	x, y
	incw	x
	ld	a, (0x03, sp)
	and	a, #0x1f
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1004: RTC_DateStruct->RTC_WeekDay = (RTC_Weekday_TypeDef)((uint8_t)((uint8_t)tmpreg & (uint8_t)(RTC_DR2_WDU)) >> (uint8_t)5);
	ld	a, (0x03, sp)
	and	a, #0xe0
	swap	a
	and	a, #0x0f
	srl	a
	ld	(y), a
;	lib/src/stm8l15x_rtc.c: 1007: if (RTC_Format == RTC_Format_BIN)
	tnz	(0x06, sp)
	jrne	00103$
;	lib/src/stm8l15x_rtc.c: 1010: RTC_DateStruct->RTC_Year = (uint8_t)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Year);
	ldw	y, (0x04, sp)
	ld	a, (y)
	pushw	x
	call	_Bcd2ToByte
	popw	x
	ldw	y, (0x04, sp)
	ld	(y), a
;	lib/src/stm8l15x_rtc.c: 1011: RTC_DateStruct->RTC_Month = (RTC_Month_TypeDef)Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Month);
	ld	a, (x)
	pushw	x
	call	_Bcd2ToByte
	popw	x
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1012: RTC_DateStruct->RTC_Date = (uint8_t)(Bcd2ToByte((uint8_t)RTC_DateStruct->RTC_Date));
	ldw	x, (0x01, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x01, sp)
	ld	(x), a
00103$:
;	lib/src/stm8l15x_rtc.c: 1014: }
	addw	sp, #6
	ret
;	lib/src/stm8l15x_rtc.c: 1044: void RTC_SetAlarm(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_SetAlarm
;	-----------------------------------------
_RTC_SetAlarm:
	sub	sp, #16
	ld	(0x10, sp), a
	ldw	(0x0e, sp), x
;	lib/src/stm8l15x_rtc.c: 1107: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1108: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
	ldw	y, (0x0e, sp)
	ldw	x, (0x0e, sp)
	addw	x, #0x0004
	ldw	(0x0a, sp), x
;	lib/src/stm8l15x_rtc.c: 1117: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
	ldw	x, (0x0e, sp)
	incw	x
	ldw	(0x01, sp), x
;	lib/src/stm8l15x_rtc.c: 1120: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
	ldw	x, (0x0e, sp)
	addw	x, #0x0003
	ldw	(0x03, sp), x
;	lib/src/stm8l15x_rtc.c: 1124: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
	ldw	x, (0x0e, sp)
	addw	x, #0x0006
	ldw	(0x05, sp), x
	ldw	x, (0x0e, sp)
	addw	x, #0x0005
	ldw	(0x07, sp), x
;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
	ld	a, (0x2, y)
	ld	(0x0c, sp), a
;	lib/src/stm8l15x_rtc.c: 1112: if (RTC_Format != RTC_Format_BIN)
	tnz	(0x10, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 1114: tmpreg1 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds) | \
	ldw	x, (0x0a, sp)
	ld	a, (x)
	ld	(0x0d, sp), a
	and	a, #0x80
	or	a, (0x0c, sp)
	ld	(0x09, sp), a
;	lib/src/stm8l15x_rtc.c: 1117: tmpreg2 = (uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes) | \
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x0b, sp), a
	ld	a, (0x0d, sp)
	ld	(0x0a, sp), a
	sll	a
	ld	(0x0d, sp), a
	and	a, #0x80
	ld	(0x0d, sp), a
	ld	a, (0x0b, sp)
	or	a, (0x0d, sp)
	ld	(0x0d, sp), a
	ld	(0x0c, sp), a
;	lib/src/stm8l15x_rtc.c: 1120: tmpreg3 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours) | \
	ldw	x, (0x0e, sp)
	ld	a, (x)
	ld	(0x0b, sp), a
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	(0x0d, sp), a
	ld	a, (0x0b, sp)
	or	a, (0x0d, sp)
	ld	(0x0b, sp), a
	ld	a, (0x0a, sp)
	sll	a
	sll	a
	ld	(0x0d, sp), a
	and	a, #0x80
	ld	(0x0d, sp), a
	ld	a, (0x0b, sp)
	or	a, (0x0d, sp)
	ld	(0x0d, sp), a
;	lib/src/stm8l15x_rtc.c: 1124: tmpreg4 = (uint8_t)((uint8_t)((uint8_t)(RTC_AlarmStruct->RTC_AlarmDateWeekDay) | \
	ldw	x, (0x05, sp)
	ld	a, (x)
	ld	(0x0b, sp), a
	ldw	x, (0x07, sp)
	ld	a, (x)
	ld	(0x06, sp), a
	ld	a, (0x0b, sp)
	or	a, (0x06, sp)
	ld	(0x0b, sp), a
	sll	(0x0a, sp)
	sll	(0x0a, sp)
	sll	(0x0a, sp)
	ld	a, (0x0a, sp)
	and	a, #0x80
	ld	(0x0a, sp), a
	ld	a, (0x0b, sp)
	or	a, (0x0a, sp)
	ld	(0x0b, sp), a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 1131: tmpreg1 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds)) | \
	ld	a, (0x0c, sp)
	call	_ByteToBcd2
	ld	(0x0d, sp), a
	ldw	x, (0x0a, sp)
	ld	a, (x)
	and	a, #0x80
	or	a, (0x0d, sp)
	ld	(0x09, sp), a
;	lib/src/stm8l15x_rtc.c: 1134: tmpreg2 = (uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes)) | \
	ldw	x, (0x01, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	(0x0d, sp), a
	ldw	x, (0x0a, sp)
	ld	a, (x)
	sll	a
	and	a, #0x80
	or	a, (0x0d, sp)
	ld	(0x0c, sp), a
;	lib/src/stm8l15x_rtc.c: 1137: tmpreg3 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours)) | \
	ldw	x, (0x0e, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	(0x0d, sp), a
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x0d, sp)
	ld	(0x0d, sp), a
	ldw	x, (0x0a, sp)
	ld	a, (x)
	sll	a
	sll	a
	and	a, #0x80
	or	a, (0x0d, sp)
	ld	(0x0d, sp), a
;	lib/src/stm8l15x_rtc.c: 1141: tmpreg4 = (uint8_t)((uint8_t)((ByteToBcd2(RTC_AlarmStruct->RTC_AlarmDateWeekDay)) | \
	ldw	x, (0x05, sp)
	ld	a, (x)
	call	_ByteToBcd2
	ld	(0x06, sp), a
	ldw	x, (0x07, sp)
	ld	a, (x)
	or	a, (0x06, sp)
	ld	(0x08, sp), a
	ldw	x, (0x0a, sp)
	ld	a, (x)
	sll	a
	sll	a
	sll	a
	and	a, #0x80
	or	a, (0x08, sp)
00103$:
;	lib/src/stm8l15x_rtc.c: 1147: RTC->ALRMAR1 = tmpreg1;
	ldw	x, #0x515c
	push	a
	ld	a, (0x0a, sp)
	ld	(x), a
	pop	a
;	lib/src/stm8l15x_rtc.c: 1148: RTC->ALRMAR2 = tmpreg2;
	ldw	x, #0x515d
	push	a
	ld	a, (0x0d, sp)
	ld	(x), a
	pop	a
;	lib/src/stm8l15x_rtc.c: 1149: RTC->ALRMAR3 = tmpreg3;
	ldw	x, #0x515e
	push	a
	ld	a, (0x0e, sp)
	ld	(x), a
	pop	a
;	lib/src/stm8l15x_rtc.c: 1150: RTC->ALRMAR4 = tmpreg4;
	ld	0x515f, a
;	lib/src/stm8l15x_rtc.c: 1153: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1154: }
	addw	sp, #16
	ret
;	lib/src/stm8l15x_rtc.c: 1164: void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct)
;	-----------------------------------------
;	 function RTC_AlarmStructInit
;	-----------------------------------------
_RTC_AlarmStructInit:
;	lib/src/stm8l15x_rtc.c: 1167: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = RTC_H12_AM;
	ldw	y, x
	clr	(0x0003, x)
;	lib/src/stm8l15x_rtc.c: 1168: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = 0;
	clr	(y)
;	lib/src/stm8l15x_rtc.c: 1169: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = 0;
	ldw	x, y
	incw	x
	clr	(x)
;	lib/src/stm8l15x_rtc.c: 1170: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = 0;
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	lib/src/stm8l15x_rtc.c: 1173: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = RTC_AlarmDateWeekDaySel_Date;
	ldw	x, y
	clr	(0x0005, x)
;	lib/src/stm8l15x_rtc.c: 1174: RTC_AlarmStruct->RTC_AlarmDateWeekDay = 1;
	ld	a, #0x01
	ld	(0x0006, y), a
;	lib/src/stm8l15x_rtc.c: 1177: RTC_AlarmStruct->RTC_AlarmMask = RTC_AlarmMask_All;
	ld	a, #0xf0
	ld	(0x0004, y), a
;	lib/src/stm8l15x_rtc.c: 1178: }
	ret
;	lib/src/stm8l15x_rtc.c: 1187: void RTC_GetAlarm(RTC_Format_TypeDef RTC_Format,
;	-----------------------------------------
;	 function RTC_GetAlarm
;	-----------------------------------------
_RTC_GetAlarm:
	sub	sp, #11
	ld	(0x0b, sp), a
	ldw	(0x09, sp), x
;	lib/src/stm8l15x_rtc.c: 1200: tmpreg1 = (uint8_t)RTC->ALRMAR1;
	ld	a, 0x515c
	ld	(0x08, sp), a
;	lib/src/stm8l15x_rtc.c: 1201: tmpreg2 = (uint8_t)RTC->ALRMAR2;
	ld	a, 0x515d
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1202: tmpreg3 = (uint8_t)RTC->ALRMAR3;
	ld	a, 0x515e
	ld	(0x02, sp), a
;	lib/src/stm8l15x_rtc.c: 1203: tmpreg4 = (uint8_t)RTC->ALRMAR4;
	ld	a, 0x515f
	ld	(0x03, sp), a
;	lib/src/stm8l15x_rtc.c: 1206: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = (uint8_t)((uint8_t)tmpreg1 & (uint8_t)((uint8_t)RTC_ALRMAR1_ST | (uint8_t)RTC_ALRMAR1_SU));
	ldw	x, (0x09, sp)
	incw	x
	incw	x
	ldw	(0x04, sp), x
	ld	a, (0x08, sp)
	and	a, #0x7f
	ldw	x, (0x04, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1207: alarmmask = (uint8_t)(tmpreg1 & RTC_ALRMAR1_MSK1);
	ld	a, (0x08, sp)
	and	a, #0x80
	ld	(0x08, sp), a
;	lib/src/stm8l15x_rtc.c: 1210: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = (uint8_t)((uint8_t)tmpreg2 & (uint8_t)((uint8_t)RTC_ALRMAR2_MNT | (uint8_t)RTC_ALRMAR2_MNU));
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x06, sp), x
	ld	a, (0x01, sp)
	and	a, #0x7f
	ldw	x, (0x06, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1211: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)(tmpreg2 & RTC_ALRMAR2_MSK2) >> 1));
	ld	a, (0x01, sp)
	and	a, #0x80
	srl	a
	or	a, (0x08, sp)
	ld	(0x08, sp), a
;	lib/src/stm8l15x_rtc.c: 1214: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = (uint8_t)((uint8_t)tmpreg3 & (uint8_t)((uint8_t)RTC_ALRMAR3_HT | (uint8_t)RTC_ALRMAR3_HU));
	ld	a, (0x02, sp)
	and	a, #0x3f
	ldw	x, (0x09, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1215: RTC_AlarmStruct->RTC_AlarmTime.RTC_H12 = (RTC_H12_TypeDef)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_PM);
	ldw	x, (0x09, sp)
	addw	x, #0x0003
	ld	a, (0x02, sp)
	and	a, #0x40
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1216: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg3 & (uint8_t)RTC_ALRMAR3_MSK3) >> 2));
	ld	a, (0x02, sp)
	and	a, #0x80
	srl	a
	srl	a
	or	a, (0x08, sp)
	ld	(0x08, sp), a
;	lib/src/stm8l15x_rtc.c: 1219: RTC_AlarmStruct->RTC_AlarmDateWeekDay = (uint8_t)((uint8_t)tmpreg4 & (uint8_t)((uint8_t)RTC_ALRMAR4_DT | (uint8_t)RTC_ALRMAR4_DU));
	ldw	x, (0x09, sp)
	addw	x, #0x0006
	ldw	(0x01, sp), x
	ld	a, (0x03, sp)
	and	a, #0x3f
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1220: RTC_AlarmStruct->RTC_AlarmDateWeekDaySel = (RTC_AlarmDateWeekDaySel_TypeDef)((uint8_t)tmpreg4 & (uint8_t)RTC_ALRMAR4_WDSEL);
	ldw	x, (0x09, sp)
	addw	x, #0x0005
	ld	a, (0x03, sp)
	and	a, #0x40
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1221: alarmmask = (uint8_t)((alarmmask) | (uint8_t)((uint8_t)((uint8_t)tmpreg4 & RTC_ALRMAR4_MSK4) >> 3));
	ld	a, (0x03, sp)
	and	a, #0x80
	srl	a
	srl	a
	srl	a
	or	a, (0x08, sp)
;	lib/src/stm8l15x_rtc.c: 1223: RTC_AlarmStruct->RTC_AlarmMask = alarmmask;
	ldw	x, (0x09, sp)
	addw	x, #0x0004
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1225: if (RTC_Format == RTC_Format_BIN)
	tnz	(0x0b, sp)
	jrne	00103$
;	lib/src/stm8l15x_rtc.c: 1227: RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Hours);
	ldw	x, (0x09, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x09, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1228: RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Minutes);
	ldw	x, (0x06, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x06, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1229: RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmTime.RTC_Seconds);
	ldw	x, (0x04, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x04, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1230: RTC_AlarmStruct->RTC_AlarmDateWeekDay = Bcd2ToByte(RTC_AlarmStruct->RTC_AlarmDateWeekDay);
	ldw	x, (0x01, sp)
	ld	a, (x)
	call	_Bcd2ToByte
	ldw	x, (0x01, sp)
	ld	(x), a
00103$:
;	lib/src/stm8l15x_rtc.c: 1232: }
	addw	sp, #11
	ret
;	lib/src/stm8l15x_rtc.c: 1241: ErrorStatus RTC_AlarmCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_AlarmCmd
;	-----------------------------------------
_RTC_AlarmCmd:
	sub	sp, #3
	ld	(0x03, sp), a
;	lib/src/stm8l15x_rtc.c: 1243: __IO uint16_t alrawfcount = 0;
	clrw	x
	ldw	(0x01, sp), x
;	lib/src/stm8l15x_rtc.c: 1251: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1252: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1257: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
	ld	a, 0x5149
;	lib/src/stm8l15x_rtc.c: 1255: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00109$
;	lib/src/stm8l15x_rtc.c: 1257: RTC->CR2 |= (uint8_t)(RTC_CR2_ALRAE);
	or	a, #0x01
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 1258: status = SUCCESS;
	ld	a, #0x01
	jra	00110$
00109$:
;	lib/src/stm8l15x_rtc.c: 1262: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE) ;
	and	a, #0xfe
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 1265: temp1 = (uint8_t)(RTC->ISR1 & RTC_ISR1_ALRAWF);
	ld	a, 0x514c
	and	a, #0x01
;	lib/src/stm8l15x_rtc.c: 1266: while ((alrawfcount != ALRAWF_TIMEOUT) && (temp1 == RESET))
00102$:
	ldw	x, (0x01, sp)
	incw	x
	jreq	00104$
	tnz	a
	jrne	00104$
;	lib/src/stm8l15x_rtc.c: 1268: alrawfcount++;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	jra	00102$
00104$:
;	lib/src/stm8l15x_rtc.c: 1271: if ((RTC->ISR1 &  RTC_ISR1_ALRAWF) == RESET)
	btjt	0x514c, #0, 00106$
;	lib/src/stm8l15x_rtc.c: 1273: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 1277: status = SUCCESS;
	.byte 0xc5
00106$:
	ld	a, #0x01
00110$:
;	lib/src/stm8l15x_rtc.c: 1282: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1285: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 1286: }
	addw	sp, #3
	ret
;	lib/src/stm8l15x_rtc.c: 1297: ErrorStatus RTC_AlarmSubSecondConfig(uint16_t RTC_AlarmSubSecondValue,
;	-----------------------------------------
;	 function RTC_AlarmSubSecondConfig
;	-----------------------------------------
_RTC_AlarmSubSecondConfig:
	sub	sp, #2
	ld	(0x02, sp), a
;	lib/src/stm8l15x_rtc.c: 1308: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1309: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1312: if ((RTC->ISR1 & RTC_ISR1_INITF) == RESET)
	btjt	0x514c, #6, 00102$
;	lib/src/stm8l15x_rtc.c: 1315: alarmstatus = (uint8_t)(RTC->CR2 | RTC_CR2_ALRAE);
	ld	a, 0x5149
	or	a, #0x01
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1318: RTC->CR2 &= (uint8_t)~(RTC_CR2_ALRAE);
	bres	0x5149, #0
;	lib/src/stm8l15x_rtc.c: 1321: RTC->ALRMASSRH = (uint8_t)(RTC_AlarmSubSecondValue >> 8);
	ld	a, xh
	ld	0x5164, a
;	lib/src/stm8l15x_rtc.c: 1322: RTC->ALRMASSRL = (uint8_t)(RTC_AlarmSubSecondValue);
	ld	a, xl
	ld	0x5165, a
;	lib/src/stm8l15x_rtc.c: 1323: RTC->ALRMASSMSKR = (uint8_t)RTC_AlarmSubSecondMask;
	ldw	x, #0x5166
	ld	a, (0x02, sp)
	ld	(x), a
;	lib/src/stm8l15x_rtc.c: 1326: RTC->CR2 |= alarmstatus;
	ld	a, 0x5149
	or	a, (0x01, sp)
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 1328: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 1332: status = ERROR;
	.byte 0x21
00102$:
	clr	a
00103$:
;	lib/src/stm8l15x_rtc.c: 1336: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1338: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 1339: }
	addw	sp, #2
	ret
;	lib/src/stm8l15x_rtc.c: 1368: void RTC_WakeUpClockConfig(RTC_WakeUpClock_TypeDef RTC_WakeUpClock)
;	-----------------------------------------
;	 function RTC_WakeUpClockConfig
;	-----------------------------------------
_RTC_WakeUpClockConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1375: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1376: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1379: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
	bres	0x5149, #2
;	lib/src/stm8l15x_rtc.c: 1382: RTC->CR1 &= (uint8_t)~RTC_CR1_WUCKSEL;
	ld	a, 0x5148
	and	a, #0xf8
	ld	0x5148, a
;	lib/src/stm8l15x_rtc.c: 1385: RTC->CR1 |= (uint8_t)RTC_WakeUpClock;
	ld	a, 0x5148
	or	a, (0x01, sp)
	ld	0x5148, a
;	lib/src/stm8l15x_rtc.c: 1388: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1389: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1399: void RTC_SetWakeUpCounter(uint16_t RTC_WakeupCounter)
;	-----------------------------------------
;	 function RTC_SetWakeUpCounter
;	-----------------------------------------
_RTC_SetWakeUpCounter:
;	lib/src/stm8l15x_rtc.c: 1402: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1403: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1407: RTC->WUTRH = (uint8_t)(RTC_WakeupCounter >> 8);
	ld	a, xh
	ld	0x5154, a
;	lib/src/stm8l15x_rtc.c: 1408: RTC->WUTRL = (uint8_t)(RTC_WakeupCounter);
	ld	a, xl
	ld	0x5155, a
;	lib/src/stm8l15x_rtc.c: 1411: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1412: }
	ret
;	lib/src/stm8l15x_rtc.c: 1419: uint16_t RTC_GetWakeUpCounter(void)
;	-----------------------------------------
;	 function RTC_GetWakeUpCounter
;	-----------------------------------------
_RTC_GetWakeUpCounter:
	sub	sp, #4
;	lib/src/stm8l15x_rtc.c: 1424: tmpreg = ((uint16_t)RTC->WUTRH) << 8;
	ld	a, 0x5154
	ld	xh, a
	clr	(0x02, sp)
;	lib/src/stm8l15x_rtc.c: 1425: tmpreg |= RTC->WUTRL;
	ld	a, 0x5155
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
;	lib/src/stm8l15x_rtc.c: 1428: return (uint16_t)tmpreg;
	ld	xh, a
;	lib/src/stm8l15x_rtc.c: 1429: }
	addw	sp, #4
	ret
;	lib/src/stm8l15x_rtc.c: 1439: ErrorStatus RTC_WakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_WakeUpCmd
;	-----------------------------------------
_RTC_WakeUpCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1448: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1449: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1454: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
	ld	a, 0x5149
;	lib/src/stm8l15x_rtc.c: 1451: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00109$
;	lib/src/stm8l15x_rtc.c: 1454: RTC->CR2 |= (uint8_t)RTC_CR2_WUTE;
	or	a, #0x04
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 1456: status = SUCCESS;
	ld	a, #0x01
	jra	00110$
00109$:
;	lib/src/stm8l15x_rtc.c: 1461: RTC->CR2 &= (uint8_t)~RTC_CR2_WUTE;
	and	a, #0xfb
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 1464: while (((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET) && ( wutwfcount != WUTWF_TIMEOUT))
	clrw	x
00102$:
	btjt	0x514c, #2, 00104$
	cpw	x, #0xffff
	jreq	00104$
;	lib/src/stm8l15x_rtc.c: 1466: wutwfcount++;
	incw	x
	jra	00102$
00104$:
;	lib/src/stm8l15x_rtc.c: 1470: if ((RTC->ISR1 & RTC_ISR1_WUTWF) == RESET)
	btjt	0x514c, #2, 00106$
;	lib/src/stm8l15x_rtc.c: 1472: status = ERROR;
	clr	a
;	lib/src/stm8l15x_rtc.c: 1476: status = SUCCESS;
	.byte 0xc5
00106$:
	ld	a, #0x01
00110$:
;	lib/src/stm8l15x_rtc.c: 1481: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1484: return (ErrorStatus)status;
;	lib/src/stm8l15x_rtc.c: 1485: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_rtc.c: 1521: void RTC_DayLightSavingConfig(RTC_DayLightSaving_TypeDef RTC_DayLightSaving,
;	-----------------------------------------
;	 function RTC_DayLightSavingConfig
;	-----------------------------------------
_RTC_DayLightSavingConfig:
	push	a
	ld	xl, a
;	lib/src/stm8l15x_rtc.c: 1529: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1530: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1533: RTC->CR3 &= (uint8_t)~(RTC_CR3_BCK);
	ld	a, 0x514a
	and	a, #0xfb
	ld	0x514a, a
;	lib/src/stm8l15x_rtc.c: 1536: RTC->CR3 |= (uint8_t)((uint8_t)RTC_DayLightSaving | (uint8_t)RTC_StoreOperation);
	ld	a, 0x514a
	ld	(0x01, sp), a
	ld	a, xl
	or	a, (0x04, sp)
	or	a, (0x01, sp)
	ld	0x514a, a
;	lib/src/stm8l15x_rtc.c: 1539: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1540: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_rtc.c: 1548: RTC_StoreOperation_TypeDef  RTC_GetStoreOperation(void)
;	-----------------------------------------
;	 function RTC_GetStoreOperation
;	-----------------------------------------
_RTC_GetStoreOperation:
;	lib/src/stm8l15x_rtc.c: 1551: return (RTC_StoreOperation_TypeDef)(RTC->CR3 & RTC_CR3_BCK);
	ld	a, 0x514a
	and	a, #0x04
;	lib/src/stm8l15x_rtc.c: 1552: }
	ret
;	lib/src/stm8l15x_rtc.c: 1586: void RTC_OutputConfig(RTC_Output_TypeDef RTC_Output,
;	-----------------------------------------
;	 function RTC_OutputConfig
;	-----------------------------------------
_RTC_OutputConfig:
	push	a
	ld	xl, a
;	lib/src/stm8l15x_rtc.c: 1594: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1595: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1598: RTC->CR3 &= (uint8_t)~(RTC_CR3_OSEL | RTC_CR3_POL);
	ld	a, 0x514a
	and	a, #0x8f
	ld	0x514a, a
;	lib/src/stm8l15x_rtc.c: 1601: RTC->CR3 |= (uint8_t)((uint8_t)RTC_Output | (uint8_t)RTC_OutputPolarity);
	ld	a, 0x514a
	ld	(0x01, sp), a
	ld	a, xl
	or	a, (0x04, sp)
	or	a, (0x01, sp)
	ld	0x514a, a
;	lib/src/stm8l15x_rtc.c: 1604: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1605: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_rtc.c: 1638: ErrorStatus RTC_SynchroShiftConfig(RTC_ShiftAdd1S_TypeDef RTC_ShiftAdd1S,
;	-----------------------------------------
;	 function RTC_SynchroShiftConfig
;	-----------------------------------------
_RTC_SynchroShiftConfig:
	push	a
	ld	(0x01, sp), a
	exgw	x, y
;	lib/src/stm8l15x_rtc.c: 1650: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1651: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1654: if ((RTC->ISR1 & RTC_ISR1_SHPF) != RESET)
	btjf	0x514c, #3, 00106$
;	lib/src/stm8l15x_rtc.c: 1657: while (((RTC->ISR1 & RTC_ISR1_SHPF) != RESET) && (shpfcount != SHPF_TIMEOUT))
	clrw	x
00102$:
	btjf	0x514c, #3, 00106$
	cpw	x, #0xffff
	jreq	00106$
;	lib/src/stm8l15x_rtc.c: 1659: shpfcount++;
	incw	x
	jra	00102$
00106$:
;	lib/src/stm8l15x_rtc.c: 1664: if ((RTC->ISR1 & RTC_ISR1_SHPF) == RESET)
	btjt	0x514c, #3, 00108$
;	lib/src/stm8l15x_rtc.c: 1667: shiftrhreg = (uint8_t)((uint8_t)(RTC_ShiftSubFS >> 8) | (uint8_t)(RTC_ShiftAdd1S));
	ld	a, yh
	or	a, (0x01, sp)
;	lib/src/stm8l15x_rtc.c: 1668: RTC->SHIFTRH = (uint8_t)(shiftrhreg);
	ld	0x515a, a
;	lib/src/stm8l15x_rtc.c: 1669: RTC->SHIFTRL = (uint8_t)(RTC_ShiftSubFS);
	ld	a, yl
	ld	0x515b, a
;	lib/src/stm8l15x_rtc.c: 1671: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 1675: status = ERROR;
	.byte 0x21
00108$:
	clr	a
00109$:
;	lib/src/stm8l15x_rtc.c: 1679: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1681: return (ErrorStatus)(status);
;	lib/src/stm8l15x_rtc.c: 1682: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_rtc.c: 1717: ErrorStatus RTC_SmoothCalibConfig(RTC_SmoothCalibPeriod_TypeDef RTC_SmoothCalibPeriod,
;	-----------------------------------------
;	 function RTC_SmoothCalibConfig
;	-----------------------------------------
_RTC_SmoothCalibConfig:
	push	a
	ld	yl, a
;	lib/src/stm8l15x_rtc.c: 1730: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1731: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1734: if ((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET)
	btjf	0x514c, #1, 00106$
;	lib/src/stm8l15x_rtc.c: 1737: while (((RTC->ISR1 & RTC_ISR1_RECALPF) != RESET) && (recalpfcount != RECALPF_TIMEOUT))
	clrw	x
00102$:
	btjf	0x514c, #1, 00106$
	cpw	x, #0xffff
	jreq	00106$
;	lib/src/stm8l15x_rtc.c: 1739: recalpfcount++;
	incw	x
	jra	00102$
00106$:
;	lib/src/stm8l15x_rtc.c: 1745: if ((RTC->ISR1 & RTC_ISR1_RECALPF) == RESET)
	btjt	0x514c, #1, 00108$
;	lib/src/stm8l15x_rtc.c: 1748: RTC->CALRH = (uint8_t)((uint8_t)((uint8_t)RTC_SmoothCalibPeriod | \
	ld	a, yl
	or	a, (0x04, sp)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x516a, a
;	lib/src/stm8l15x_rtc.c: 1751: RTC->CALRL = (uint8_t)(RTC_SmouthCalibMinusPulsesValue);
	ld	a, (0x06, sp)
	ld	0x516b, a
;	lib/src/stm8l15x_rtc.c: 1753: status = SUCCESS;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 1757: status = ERROR;
	.byte 0x21
00108$:
	clr	a
00109$:
;	lib/src/stm8l15x_rtc.c: 1761: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1763: return (ErrorStatus)(status);
;	lib/src/stm8l15x_rtc.c: 1764: }
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
;	lib/src/stm8l15x_rtc.c: 1789: void RTC_CalibOutputConfig(RTC_CalibOutput_TypeDef RTC_CalibOutput)
;	-----------------------------------------
;	 function RTC_CalibOutputConfig
;	-----------------------------------------
_RTC_CalibOutputConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1795: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1796: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1801: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
	ld	a, 0x514a
;	lib/src/stm8l15x_rtc.c: 1798: if (RTC_CalibOutput != RTC_CalibOutput_512Hz)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 1801: RTC->CR3 |= (uint8_t)RTC_CR3_COSEL;
	or	a, #0x08
	ld	0x514a, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 1806: RTC->CR3 &= (uint8_t)~RTC_CR3_COSEL;
	and	a, #0xf7
	ld	0x514a, a
00103$:
;	lib/src/stm8l15x_rtc.c: 1810: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1811: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1819: void RTC_CalibOutputCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_CalibOutputCmd
;	-----------------------------------------
_RTC_CalibOutputCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1825: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1826: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1831: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
	ld	a, 0x514a
;	lib/src/stm8l15x_rtc.c: 1828: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 1831: RTC->CR3 |= (uint8_t)RTC_CR3_COE;
	or	a, #0x80
	ld	0x514a, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 1836: RTC->CR3 &= (uint8_t)~RTC_CR3_COE;
	and	a, #0x7f
	ld	0x514a, a
00103$:
;	lib/src/stm8l15x_rtc.c: 1840: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1841: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1870: void RTC_TamperLevelConfig(RTC_Tamper_TypeDef RTC_Tamper,
;	-----------------------------------------
;	 function RTC_TamperLevelConfig
;	-----------------------------------------
_RTC_TamperLevelConfig:
	push	a
	ld	xl, a
;	lib/src/stm8l15x_rtc.c: 1878: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1879: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1884: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
	ld	a, 0x516c
	ld	(0x01, sp), a
	ld	a, xl
	sll	a
;	lib/src/stm8l15x_rtc.c: 1881: if (RTC_TamperLevel != RTC_TamperLevel_Low)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 1884: RTC->TCR1 |= (uint8_t)(RTC_Tamper << 1);
	or	a, (0x01, sp)
	ld	0x516c, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 1889: RTC->TCR1 &= (uint8_t)~(uint8_t)(RTC_Tamper << 1);
	cpl	a
	and	a, (0x01, sp)
	ld	0x516c, a
00103$:
;	lib/src/stm8l15x_rtc.c: 1893: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1894: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_rtc.c: 1902: void RTC_TamperFilterConfig(RTC_TamperFilter_TypeDef RTC_TamperFilter)
;	-----------------------------------------
;	 function RTC_TamperFilterConfig
;	-----------------------------------------
_RTC_TamperFilterConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1909: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1910: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1913: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFLT);
	ld	a, 0x516d
	and	a, #0xe7
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1916: RTC->TCR2 |= (uint8_t)RTC_TamperFilter;
	ld	a, 0x516d
	or	a, (0x01, sp)
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1919: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1921: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1930: void RTC_TamperSamplingFreqConfig(RTC_TamperSamplingFreq_TypeDef RTC_TamperSamplingFreq)
;	-----------------------------------------
;	 function RTC_TamperSamplingFreqConfig
;	-----------------------------------------
_RTC_TamperSamplingFreqConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1936: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1937: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1940: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPFREQ);
	ld	a, 0x516d
	and	a, #0xf8
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1943: RTC->TCR2 |= (uint8_t)RTC_TamperSamplingFreq;
	ld	a, 0x516d
	or	a, (0x01, sp)
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1946: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1947: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1957: void RTC_TamperPinsPrechargeDuration(RTC_TamperPrechargeDuration_TypeDef RTC_TamperPrechargeDuration)
;	-----------------------------------------
;	 function RTC_TamperPinsPrechargeDuration
;	-----------------------------------------
_RTC_TamperPinsPrechargeDuration:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 1963: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1964: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 1967: RTC->TCR2 &= (uint8_t)~(RTC_TCR2_TAMPPUDIS | RTC_TCR2_TAMPPRCH);
	ld	a, 0x516d
	and	a, #0x1f
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1970: RTC->TCR2 |= (uint8_t)RTC_TamperPrechargeDuration;
	ld	a, 0x516d
	or	a, (0x01, sp)
	ld	0x516d, a
;	lib/src/stm8l15x_rtc.c: 1973: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 1974: }
	pop	a
	ret
;	lib/src/stm8l15x_rtc.c: 1986: void RTC_TamperCmd(RTC_Tamper_TypeDef RTC_Tamper,
;	-----------------------------------------
;	 function RTC_TamperCmd
;	-----------------------------------------
_RTC_TamperCmd:
	push	a
;	lib/src/stm8l15x_rtc.c: 1995: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 1996: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 2002: RTC->TCR1 |= (uint8_t)RTC_Tamper;
	ldw	x, #0x516c
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_rtc.c: 1999: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 2002: RTC->TCR1 |= (uint8_t)RTC_Tamper;
	or	a, (0x01, sp)
	ld	0x516c, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 2007: RTC->TCR1 &= (uint8_t)~RTC_Tamper;
	cpl	a
	and	a, (0x01, sp)
	ld	0x516c, a
00103$:
;	lib/src/stm8l15x_rtc.c: 2012: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 2013: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_rtc.c: 2057: void RTC_ITConfig(RTC_IT_TypeDef RTC_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function RTC_ITConfig
;	-----------------------------------------
_RTC_ITConfig:
	sub	sp, #3
	ld	(0x03, sp), a
;	lib/src/stm8l15x_rtc.c: 2064: RTC->WPR = 0xCA;
	mov	0x5159+0, #0xca
;	lib/src/stm8l15x_rtc.c: 2065: RTC->WPR = 0x53;
	mov	0x5159+0, #0x53
;	lib/src/stm8l15x_rtc.c: 2070: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
	ld	a, 0x5149
	ld	(0x02, sp), a
	ld	a, xl
	and	a, #0xf0
;	lib/src/stm8l15x_rtc.c: 2071: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
	push	a
	ld	a, xl
	and	a, #0x01
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_rtc.c: 2067: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 2070: RTC->CR2 |= (uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
	or	a, (0x02, sp)
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 2071: RTC->TCR1 |= (uint8_t)((uint16_t)RTC_IT & RTC_TCR1_TAMPIE);
	ld	a, 0x516c
	or	a, (0x01, sp)
	ld	0x516c, a
	jra	00103$
00102$:
;	lib/src/stm8l15x_rtc.c: 2076: RTC->CR2  &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)0x00F0);
	cpl	a
	and	a, (0x02, sp)
	ld	0x5149, a
;	lib/src/stm8l15x_rtc.c: 2077: RTC->TCR1 &= (uint8_t)~(uint8_t)((uint16_t)RTC_IT & (uint16_t)RTC_TCR1_TAMPIE);
	ld	a, 0x516c
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x02, sp)
	ld	0x516c, a
00103$:
;	lib/src/stm8l15x_rtc.c: 2081: RTC->WPR = 0xFF; 
	mov	0x5159+0, #0xff
;	lib/src/stm8l15x_rtc.c: 2082: }
	addw	sp, #3
	ret
;	lib/src/stm8l15x_rtc.c: 2089: FlagStatus RTC_GetFlagStatus(RTC_Flag_TypeDef RTC_FLAG)
;	-----------------------------------------
;	 function RTC_GetFlagStatus
;	-----------------------------------------
_RTC_GetFlagStatus:
	sub	sp, #2
	exgw	x, y
;	lib/src/stm8l15x_rtc.c: 2099: tmpreg2 = (uint16_t)((uint16_t)RTC->ISR1 << 8);
	ld	a, 0x514c
	ld	(0x01, sp), a
	clr	(0x02, sp)
;	lib/src/stm8l15x_rtc.c: 2100: tmpreg1 = (uint16_t)((uint16_t)((uint16_t)(RTC->ISR2)) | tmpreg2);
	ld	a, 0x514d
	clrw	x
	or	a, (0x02, sp)
	ld	xh, a
	ld	a, xl
	or	a, (0x01, sp)
;	lib/src/stm8l15x_rtc.c: 2103: if ((tmpreg1 & (uint16_t)RTC_FLAG) != RESET)
	ldw	(0x01, sp), y
	and	a, (0x01, sp)
	rlwa	x
	and	a, (0x02, sp)
	ld	xh, a
	tnzw	x
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 2105: flagstatus = SET;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 2109: flagstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	lib/src/stm8l15x_rtc.c: 2111: return (FlagStatus)flagstatus;
;	lib/src/stm8l15x_rtc.c: 2112: }
	addw	sp, #2
	ret
;	lib/src/stm8l15x_rtc.c: 2121: void RTC_ClearFlag(RTC_Flag_TypeDef RTC_FLAG)
;	-----------------------------------------
;	 function RTC_ClearFlag
;	-----------------------------------------
_RTC_ClearFlag:
;	lib/src/stm8l15x_rtc.c: 2127: RTC->ISR2 = (uint8_t)~((uint8_t)RTC_FLAG) ;
	ld	a, xl
	cpl	a
	ld	0x514d, a
;	lib/src/stm8l15x_rtc.c: 2128: RTC->ISR1 = (uint8_t)(((uint8_t)~(uint8_t)((uint16_t)RTC_FLAG >> (uint8_t)8)) & ((uint8_t)~(uint8_t)(RTC_ISR1_INIT)));
	ld	a, xh
	cpl	a
	and	a, #0x7f
	ld	0x514c, a
;	lib/src/stm8l15x_rtc.c: 2129: }
	ret
;	lib/src/stm8l15x_rtc.c: 2137: ITStatus RTC_GetITStatus(RTC_IT_TypeDef RTC_IT)
;	-----------------------------------------
;	 function RTC_GetITStatus
;	-----------------------------------------
_RTC_GetITStatus:
	push	a
;	lib/src/stm8l15x_rtc.c: 2146: enablestatus = (uint8_t)(RTC->CR2 & (uint16_t)RTC_IT);
	ld	a, 0x5149
	ld	(0x01, sp), a
	ld	a, xl
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	lib/src/stm8l15x_rtc.c: 2149: tmpreg = (uint8_t)(RTC->ISR2 & (uint8_t)((uint16_t)RTC_IT >> 4));
	ld	a, 0x514d
	srlw	x
	srlw	x
	srlw	x
	srlw	x
	pushw	x
	and	a, (2, sp)
	popw	x
;	lib/src/stm8l15x_rtc.c: 2152: if ((enablestatus != (uint8_t)RESET) && (tmpreg != (uint8_t)RESET))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	lib/src/stm8l15x_rtc.c: 2154: itstatus = SET;
	ld	a, #0x01
;	lib/src/stm8l15x_rtc.c: 2158: itstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	lib/src/stm8l15x_rtc.c: 2161: return (ITStatus)itstatus;
;	lib/src/stm8l15x_rtc.c: 2162: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_rtc.c: 2171: void RTC_ClearITPendingBit(RTC_IT_TypeDef RTC_IT)
;	-----------------------------------------
;	 function RTC_ClearITPendingBit
;	-----------------------------------------
_RTC_ClearITPendingBit:
;	lib/src/stm8l15x_rtc.c: 2177: RTC->ISR2 = (uint8_t)~(uint8_t)((uint16_t)RTC_IT >> 4);
	ld	a, #0x10
	div	x, a
	ld	a, xl
	cpl	a
	ld	0x514d, a
;	lib/src/stm8l15x_rtc.c: 2178: }
	ret
;	lib/src/stm8l15x_rtc.c: 2201: static uint8_t ByteToBcd2(uint8_t Value)
;	-----------------------------------------
;	 function ByteToBcd2
;	-----------------------------------------
_ByteToBcd2:
;	lib/src/stm8l15x_rtc.c: 2205: while (Value >= 10)
	clrw	x
00101$:
	cp	a, #0x0a
	jrc	00103$
;	lib/src/stm8l15x_rtc.c: 2207: bcdhigh++;
	incw	x
;	lib/src/stm8l15x_rtc.c: 2208: Value -= 10;
	sub	a, #0x0a
	jra	00101$
00103$:
;	lib/src/stm8l15x_rtc.c: 2211: return  (uint8_t)((uint8_t)(bcdhigh << 4) | Value);
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	pushw	x
	or	a, (2, sp)
	popw	x
;	lib/src/stm8l15x_rtc.c: 2212: }
	ret
;	lib/src/stm8l15x_rtc.c: 2219: static uint8_t Bcd2ToByte(uint8_t Value)
;	-----------------------------------------
;	 function Bcd2ToByte
;	-----------------------------------------
_Bcd2ToByte:
;	lib/src/stm8l15x_rtc.c: 2223: tmp = (uint8_t)((uint8_t)((uint8_t)(Value & (uint8_t)0xF0) >> 4) * (uint8_t)10);
	ld	yl, a
	and	a, #0xf0
	swap	a
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x0a
	mul	x, a
;	lib/src/stm8l15x_rtc.c: 2225: return (uint8_t)(tmp + (Value & (uint8_t)0x0F));
	ld	a, yl
	and	a, #0x0f
	pushw	x
	add	a, (2, sp)
	popw	x
;	lib/src/stm8l15x_rtc.c: 2226: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
