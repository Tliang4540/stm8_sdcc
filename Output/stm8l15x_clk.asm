;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8l15x_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SYSDivFactor
	.globl _CLK_DeInit
	.globl _CLK_HSICmd
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_LSICmd
	.globl _CLK_HSEConfig
	.globl _CLK_LSEConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_ClockSecuritySytemDeglitchCmd
	.globl _CLK_CCOConfig
	.globl _CLK_SYSCLKSourceConfig
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_SYSCLKDivConfig
	.globl _CLK_SYSCLKSourceSwitchCmd
	.globl _CLK_RTCClockConfig
	.globl _CLK_BEEPClockConfig
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_LSEClockSecuritySystemEnable
	.globl _CLK_RTCCLKSwitchOnLSEFailureEnable
	.globl _CLK_HaltConfig
	.globl _CLK_MainRegulatorCmd
	.globl _CLK_ITConfig
	.globl _CLK_GetFlagStatus
	.globl _CLK_ClearFlag
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
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
;	lib/src/stm8l15x_clk.c: 120: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
;	lib/src/stm8l15x_clk.c: 122: CLK->ICKCR = CLK_ICKCR_RESET_VALUE;
	mov	0x50c2+0, #0x11
;	lib/src/stm8l15x_clk.c: 123: CLK->ECKCR = CLK_ECKCR_RESET_VALUE;
	mov	0x50c6+0, #0x00
;	lib/src/stm8l15x_clk.c: 124: CLK->CRTCR = CLK_CRTCR_RESET_VALUE;
	mov	0x50c1+0, #0x00
;	lib/src/stm8l15x_clk.c: 125: CLK->CBEEPR = CLK_CBEEPR_RESET_VALUE;
	mov	0x50cb+0, #0x00
;	lib/src/stm8l15x_clk.c: 126: CLK->SWR  = CLK_SWR_RESET_VALUE;
	mov	0x50c8+0, #0x01
;	lib/src/stm8l15x_clk.c: 127: CLK->SWCR = CLK_SWCR_RESET_VALUE;
	mov	0x50c9+0, #0x00
;	lib/src/stm8l15x_clk.c: 128: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	mov	0x50c0+0, #0x03
;	lib/src/stm8l15x_clk.c: 129: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
	mov	0x50c3+0, #0x00
;	lib/src/stm8l15x_clk.c: 130: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
	mov	0x50c4+0, #0x80
;	lib/src/stm8l15x_clk.c: 131: CLK->PCKENR3 = CLK_PCKENR3_RESET_VALUE;
	mov	0x50d0+0, #0x00
;	lib/src/stm8l15x_clk.c: 132: CLK->CSSR  = CLK_CSSR_RESET_VALUE;
	mov	0x50ca+0, #0x00
;	lib/src/stm8l15x_clk.c: 133: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c5+0, #0x00
;	lib/src/stm8l15x_clk.c: 134: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
	mov	0x50cd+0, #0x00
;	lib/src/stm8l15x_clk.c: 135: CLK->HSICALR = CLK_HSICALR_RESET_VALUE;
	mov	0x50cc+0, #0x00
;	lib/src/stm8l15x_clk.c: 136: CLK->HSIUNLCKR = CLK_HSIUNLCKR_RESET_VALUE;
	mov	0x50ce+0, #0x00
;	lib/src/stm8l15x_clk.c: 137: CLK->REGCSR = CLK_REGCSR_RESET_VALUE;
	mov	0x50cf+0, #0xb9
;	lib/src/stm8l15x_clk.c: 138: }
	ret
;	lib/src/stm8l15x_clk.c: 160: void CLK_HSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
_CLK_HSICmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
	ld	a, 0x50c2
;	lib/src/stm8l15x_clk.c: 165: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 168: CLK->ICKCR |= CLK_ICKCR_HSION;
	or	a, #0x01
	ld	0x50c2, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 173: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_HSION);
	and	a, #0xfe
	ld	0x50c2, a
00104$:
;	lib/src/stm8l15x_clk.c: 175: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 188: void CLK_AdjustHSICalibrationValue(uint8_t CLK_HSICalibrationValue)
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
_CLK_AdjustHSICalibrationValue:
;	lib/src/stm8l15x_clk.c: 191: CLK->HSIUNLCKR = 0xAC;
	mov	0x50ce+0, #0xac
;	lib/src/stm8l15x_clk.c: 192: CLK->HSIUNLCKR = 0x35;
	mov	0x50ce+0, #0x35
;	lib/src/stm8l15x_clk.c: 195: CLK->HSITRIMR = (uint8_t)CLK_HSICalibrationValue;
	ld	0x50cd, a
;	lib/src/stm8l15x_clk.c: 196: }
	ret
;	lib/src/stm8l15x_clk.c: 212: void CLK_LSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
_CLK_LSICmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
	ld	a, 0x50c2
;	lib/src/stm8l15x_clk.c: 218: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 221: CLK->ICKCR |= CLK_ICKCR_LSION;
	or	a, #0x04
	ld	0x50c2, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 226: CLK->ICKCR &= (uint8_t)(~CLK_ICKCR_LSION);
	and	a, #0xfb
	ld	0x50c2, a
00104$:
;	lib/src/stm8l15x_clk.c: 228: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 249: void CLK_HSEConfig(CLK_HSE_TypeDef CLK_HSE)
;	-----------------------------------------
;	 function CLK_HSEConfig
;	-----------------------------------------
_CLK_HSEConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 256: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEON;
	bres	0x50c6, #0
;	lib/src/stm8l15x_clk.c: 259: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_HSEBYP;
	bres	0x50c6, #4
;	lib/src/stm8l15x_clk.c: 262: CLK->ECKCR |= (uint8_t)CLK_HSE;
	ld	a, 0x50c6
	or	a, (0x01, sp)
	ld	0x50c6, a
;	lib/src/stm8l15x_clk.c: 263: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 280: void CLK_LSEConfig(CLK_LSE_TypeDef CLK_LSE)
;	-----------------------------------------
;	 function CLK_LSEConfig
;	-----------------------------------------
_CLK_LSEConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 287: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEON;
	bres	0x50c6, #2
;	lib/src/stm8l15x_clk.c: 290: CLK->ECKCR &= (uint8_t)~CLK_ECKCR_LSEBYP;
	bres	0x50c6, #5
;	lib/src/stm8l15x_clk.c: 293: CLK->ECKCR |= (uint8_t)CLK_LSE;
	ld	a, 0x50c6
	or	a, (0x01, sp)
	ld	0x50c6, a
;	lib/src/stm8l15x_clk.c: 295: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 306: void CLK_ClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
_CLK_ClockSecuritySystemEnable:
;	lib/src/stm8l15x_clk.c: 309: CLK->CSSR |= CLK_CSSR_CSSEN;
	bset	0x50ca, #0
;	lib/src/stm8l15x_clk.c: 310: }
	ret
;	lib/src/stm8l15x_clk.c: 317: void CLK_ClockSecuritySytemDeglitchCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ClockSecuritySytemDeglitchCmd
;	-----------------------------------------
_CLK_ClockSecuritySytemDeglitchCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
	ld	a, 0x50ca
;	lib/src/stm8l15x_clk.c: 322: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 325: CLK->CSSR |= CLK_CSSR_CSSDGON;
	or	a, #0x10
	ld	0x50ca, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 330: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDGON);
	and	a, #0xef
	ld	0x50ca, a
00104$:
;	lib/src/stm8l15x_clk.c: 332: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 356: void CLK_CCOConfig(CLK_CCOSource_TypeDef CLK_CCOSource, CLK_CCODiv_TypeDef CLK_CCODiv)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
;	lib/src/stm8l15x_clk.c: 363: CLK->CCOR = (uint8_t)((uint8_t)CLK_CCOSource | (uint8_t)CLK_CCODiv);
	or	a, (0x03, sp)
	ld	0x50c5, a
;	lib/src/stm8l15x_clk.c: 364: }
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_clk.c: 416: void CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_TypeDef CLK_SYSCLKSource)
;	-----------------------------------------
;	 function CLK_SYSCLKSourceConfig
;	-----------------------------------------
_CLK_SYSCLKSourceConfig:
;	lib/src/stm8l15x_clk.c: 422: CLK->SWR = (uint8_t)CLK_SYSCLKSource;
	ld	0x50c8, a
;	lib/src/stm8l15x_clk.c: 423: }
	ret
;	lib/src/stm8l15x_clk.c: 435: CLK_SYSCLKSource_TypeDef CLK_GetSYSCLKSource(void)
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
_CLK_GetSYSCLKSource:
;	lib/src/stm8l15x_clk.c: 437: return ((CLK_SYSCLKSource_TypeDef)(CLK->SCSR));
	ld	a, 0x50c7
;	lib/src/stm8l15x_clk.c: 438: }
	ret
;	lib/src/stm8l15x_clk.c: 478: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #4
;	lib/src/stm8l15x_clk.c: 481: uint32_t sourcefrequency = 0;
	clrw	x
	ldw	(0x03, sp), x
	ldw	(0x01, sp), x
;	lib/src/stm8l15x_clk.c: 486: clocksource = (CLK_SYSCLKSource_TypeDef)CLK->SCSR;
	ld	a, 0x50c7
;	lib/src/stm8l15x_clk.c: 488: if ( clocksource == CLK_SYSCLKSource_HSI)
	cp	a, #0x01
	jrne	00108$
;	lib/src/stm8l15x_clk.c: 490: sourcefrequency = HSI_VALUE;
	ldw	x, #0x2400
	ldw	(0x03, sp), x
	ldw	x, #0x00f4
	ldw	(0x01, sp), x
	jra	00109$
00108$:
;	lib/src/stm8l15x_clk.c: 492: else if ( clocksource == CLK_SYSCLKSource_LSI)
	cp	a, #0x02
	jrne	00105$
;	lib/src/stm8l15x_clk.c: 494: sourcefrequency = LSI_VALUE;
	ldw	x, #0x9470
	ldw	(0x03, sp), x
	clrw	x
	ldw	(0x01, sp), x
	jra	00109$
00105$:
;	lib/src/stm8l15x_clk.c: 496: else if ( clocksource == CLK_SYSCLKSource_HSE)
	cp	a, #0x04
	jrne	00109$
;	lib/src/stm8l15x_clk.c: 498: sourcefrequency = HSE_VALUE;
	ldw	x, #0x2400
	ldw	(0x03, sp), x
	ldw	x, #0x00f4
	ldw	(0x01, sp), x
;	lib/src/stm8l15x_clk.c: 502: clockfrequency = LSE_VALUE;
00109$:
;	lib/src/stm8l15x_clk.c: 506: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_CKM);
	ld	a, 0x50c0
	and	a, #0x07
;	lib/src/stm8l15x_clk.c: 507: presc = SYSDivFactor[tmp];
	clrw	x
	ld	xl, a
	ld	a, (_SYSDivFactor+0, x)
;	lib/src/stm8l15x_clk.c: 510: clockfrequency = sourcefrequency / presc;
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__divulong
;	lib/src/stm8l15x_clk.c: 512: return((uint32_t)clockfrequency);
;	lib/src/stm8l15x_clk.c: 513: }
	addw	sp, #12
	ret
;	lib/src/stm8l15x_clk.c: 528: void CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_TypeDef CLK_SYSCLKDiv)
;	-----------------------------------------
;	 function CLK_SYSCLKDivConfig
;	-----------------------------------------
_CLK_SYSCLKDivConfig:
;	lib/src/stm8l15x_clk.c: 533: CLK->CKDIVR = (uint8_t)(CLK_SYSCLKDiv);
	ld	0x50c0, a
;	lib/src/stm8l15x_clk.c: 534: }
	ret
;	lib/src/stm8l15x_clk.c: 541: void CLK_SYSCLKSourceSwitchCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_SYSCLKSourceSwitchCmd
;	-----------------------------------------
_CLK_SYSCLKSourceSwitchCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c9
;	lib/src/stm8l15x_clk.c: 546: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 549: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c9, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 554: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
	and	a, #0xfd
	ld	0x50c9, a
00104$:
;	lib/src/stm8l15x_clk.c: 556: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 616: void CLK_RTCClockConfig(CLK_RTCCLKSource_TypeDef CLK_RTCCLKSource, CLK_RTCCLKDiv_TypeDef CLK_RTCCLKDiv)
;	-----------------------------------------
;	 function CLK_RTCClockConfig
;	-----------------------------------------
_CLK_RTCClockConfig:
;	lib/src/stm8l15x_clk.c: 623: CLK->CRTCR = (uint8_t)((uint8_t)CLK_RTCCLKSource | (uint8_t)CLK_RTCCLKDiv);
	or	a, (0x03, sp)
	ld	0x50c1, a
;	lib/src/stm8l15x_clk.c: 624: }
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_clk.c: 635: void CLK_BEEPClockConfig(CLK_BEEPCLKSource_TypeDef CLK_BEEPCLKSource)
;	-----------------------------------------
;	 function CLK_BEEPClockConfig
;	-----------------------------------------
_CLK_BEEPClockConfig:
;	lib/src/stm8l15x_clk.c: 641: CLK->CBEEPR = (uint8_t)(CLK_BEEPCLKSource);
	ld	0x50cb, a
;	lib/src/stm8l15x_clk.c: 643: }
	ret
;	lib/src/stm8l15x_clk.c: 677: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	sub	sp, #2
;	lib/src/stm8l15x_clk.c: 686: reg = (uint8_t)((uint8_t)CLK_Peripheral & (uint8_t)0xF0);
	push	a
	and	a, #0xf0
	ld	xl, a
	pop	a
	ldw	y, x
;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00144$
00143$:
	sll	(0x01, sp)
	dec	a
	jrne	00143$
00144$:
;	lib/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	lib/src/stm8l15x_clk.c: 688: if ( reg == 0x00)
	ld	a, xl
	tnz	a
	jrne	00114$
;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50c3
;	lib/src/stm8l15x_clk.c: 690: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 693: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50c3, a
	jra	00116$
00102$:
;	lib/src/stm8l15x_clk.c: 698: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	and	a, (0x02, sp)
	ld	0x50c3, a
	jra	00116$
00114$:
;	lib/src/stm8l15x_clk.c: 701: else if (reg == 0x10)
	ld	a, yl
	cp	a, #0x10
	jrne	00111$
;	lib/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50c4
;	lib/src/stm8l15x_clk.c: 703: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00105$
;	lib/src/stm8l15x_clk.c: 706: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50c4, a
	jra	00116$
00105$:
;	lib/src/stm8l15x_clk.c: 711: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	and	a, (0x02, sp)
	ld	0x50c4, a
	jra	00116$
00111$:
;	lib/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50d0
;	lib/src/stm8l15x_clk.c: 716: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00108$
;	lib/src/stm8l15x_clk.c: 719: CLK->PCKENR3 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50d0, a
	jra	00116$
00108$:
;	lib/src/stm8l15x_clk.c: 724: CLK->PCKENR3 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	and	a, (0x02, sp)
	ld	0x50d0, a
00116$:
;	lib/src/stm8l15x_clk.c: 727: }
	addw	sp, #2
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_clk.c: 765: void CLK_LSEClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_LSEClockSecuritySystemEnable
;	-----------------------------------------
_CLK_LSEClockSecuritySystemEnable:
;	lib/src/stm8l15x_clk.c: 768: CSSLSE->CSR |= CSSLSE_CSR_CSSEN;
	bset	0x5190, #0
;	lib/src/stm8l15x_clk.c: 769: }
	ret
;	lib/src/stm8l15x_clk.c: 777: void CLK_RTCCLKSwitchOnLSEFailureEnable(void)
;	-----------------------------------------
;	 function CLK_RTCCLKSwitchOnLSEFailureEnable
;	-----------------------------------------
_CLK_RTCCLKSwitchOnLSEFailureEnable:
;	lib/src/stm8l15x_clk.c: 780: CSSLSE->CSR |= CSSLSE_CSR_SWITCHEN;
	bset	0x5190, #1
;	lib/src/stm8l15x_clk.c: 781: }
	ret
;	lib/src/stm8l15x_clk.c: 807: void CLK_HaltConfig(CLK_Halt_TypeDef CLK_Halt, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HaltConfig
;	-----------------------------------------
_CLK_HaltConfig:
	push	a
;	lib/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
	ldw	x, #0x50c2
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_clk.c: 813: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 815: CLK->ICKCR |= (uint8_t)(CLK_Halt);
	or	a, (0x01, sp)
	ld	0x50c2, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 819: CLK->ICKCR &= (uint8_t)(~CLK_Halt);
	cpl	a
	and	a, (0x01, sp)
	ld	0x50c2, a
00104$:
;	lib/src/stm8l15x_clk.c: 821: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_clk.c: 831: void CLK_MainRegulatorCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_MainRegulatorCmd
;	-----------------------------------------
_CLK_MainRegulatorCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
	ld	a, 0x50cf
;	lib/src/stm8l15x_clk.c: 836: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 839: CLK->REGCSR &= (uint8_t)(~CLK_REGCSR_REGOFF);
	and	a, #0xfd
	ld	0x50cf, a
	jra	00104$
00102$:
;	lib/src/stm8l15x_clk.c: 844: CLK->REGCSR |= CLK_REGCSR_REGOFF;
	or	a, #0x02
	ld	0x50cf, a
00104$:
;	lib/src/stm8l15x_clk.c: 846: }
	pop	a
	ret
;	lib/src/stm8l15x_clk.c: 875: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
_CLK_ITConfig:
	push	a
;	lib/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
	cp	a, #0x1c
	jrne	00144$
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	.byte 0xc5
00144$:
	clr	(0x01, sp)
00145$:
;	lib/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
	sub	a, #0x2c
	jrne	00147$
	inc	a
	.byte 0x21
00147$:
	clr	a
00148$:
;	lib/src/stm8l15x_clk.c: 882: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00114$
;	lib/src/stm8l15x_clk.c: 884: if (CLK_IT == CLK_IT_SWIF)
	tnz	(0x01, sp)
	jreq	00105$
;	lib/src/stm8l15x_clk.c: 887: CLK->SWCR |= CLK_SWCR_SWIEN;
	ld	a, 0x50c9
	or	a, #0x04
	ld	0x50c9, a
	jra	00116$
00105$:
;	lib/src/stm8l15x_clk.c: 889: else if (CLK_IT == CLK_IT_LSECSSF)
	tnz	a
	jreq	00102$
;	lib/src/stm8l15x_clk.c: 892: CSSLSE->CSR |= CSSLSE_CSR_CSSIE;
	ld	a, 0x5190
	or	a, #0x04
	ld	0x5190, a
	jra	00116$
00102$:
;	lib/src/stm8l15x_clk.c: 897: CLK->CSSR |= CLK_CSSR_CSSDIE;
	ld	a, 0x50ca
	or	a, #0x04
	ld	0x50ca, a
	jra	00116$
00114$:
;	lib/src/stm8l15x_clk.c: 902: if (CLK_IT == CLK_IT_SWIF)
	tnz	(0x01, sp)
	jreq	00111$
;	lib/src/stm8l15x_clk.c: 905: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
	ld	a, 0x50c9
	and	a, #0xfb
	ld	0x50c9, a
	jra	00116$
00111$:
;	lib/src/stm8l15x_clk.c: 907: else if (CLK_IT == CLK_IT_LSECSSF)
	tnz	a
	jreq	00108$
;	lib/src/stm8l15x_clk.c: 910: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSIE);
	ld	a, 0x5190
	and	a, #0xfb
	ld	0x5190, a
	jra	00116$
00108$:
;	lib/src/stm8l15x_clk.c: 915: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
	ld	a, 0x50ca
	and	a, #0xfb
	ld	0x50ca, a
00116$:
;	lib/src/stm8l15x_clk.c: 918: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_clk.c: 945: FlagStatus CLK_GetFlagStatus(CLK_FLAG_TypeDef CLK_FLAG)
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
_CLK_GetFlagStatus:
	push	a
;	lib/src/stm8l15x_clk.c: 955: reg = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0xF0);
	ld	xl, a
	and	a, #0xf0
;	lib/src/stm8l15x_clk.c: 958: pos = (uint8_t)((uint8_t)CLK_FLAG & (uint8_t)0x0F);
	push	a
	ld	a, xl
	and	a, #0x0f
	ld	xl, a
	pop	a
;	lib/src/stm8l15x_clk.c: 960: if (reg == 0x00) /* The flag to check is in CRTC Rregister */
	tnz	a
	jrne	00123$
;	lib/src/stm8l15x_clk.c: 962: reg = CLK->CRTCR;
	ld	a, 0x50c1
	jra	00124$
00123$:
;	lib/src/stm8l15x_clk.c: 964: else if (reg == 0x10) /* The flag to check is in ICKCR register */
	cp	a, #0x10
	jrne	00120$
;	lib/src/stm8l15x_clk.c: 966: reg = CLK->ICKCR;
	ld	a, 0x50c2
	jra	00124$
00120$:
;	lib/src/stm8l15x_clk.c: 968: else if (reg == 0x20) /* The flag to check is in CCOR register */
	cp	a, #0x20
	jrne	00117$
;	lib/src/stm8l15x_clk.c: 970: reg = CLK->CCOR;
	ld	a, 0x50c5
	jra	00124$
00117$:
;	lib/src/stm8l15x_clk.c: 972: else if (reg == 0x30) /* The flag to check is in ECKCR register */
	cp	a, #0x30
	jrne	00114$
;	lib/src/stm8l15x_clk.c: 974: reg = CLK->ECKCR;
	ld	a, 0x50c6
	jra	00124$
00114$:
;	lib/src/stm8l15x_clk.c: 976: else if (reg == 0x40) /* The flag to check is in SWCR register */
	cp	a, #0x40
	jrne	00111$
;	lib/src/stm8l15x_clk.c: 978: reg = CLK->SWCR;
	ld	a, 0x50c9
	jra	00124$
00111$:
;	lib/src/stm8l15x_clk.c: 980: else if (reg == 0x50) /* The flag to check is in CSSR register */
	cp	a, #0x50
	jrne	00108$
;	lib/src/stm8l15x_clk.c: 982: reg = CLK->CSSR;
	ld	a, 0x50ca
	jra	00124$
00108$:
;	lib/src/stm8l15x_clk.c: 984: else if (reg == 0x70) /* The flag to check is in REGCSR register */
	cp	a, #0x70
	jrne	00105$
;	lib/src/stm8l15x_clk.c: 986: reg = CLK->REGCSR;
	ld	a, 0x50cf
	jra	00124$
00105$:
;	lib/src/stm8l15x_clk.c: 988: else if (reg == 0x80) /* The flag to check is in CSSLSE_CSRregister */
	cp	a, #0x80
	jrne	00102$
;	lib/src/stm8l15x_clk.c: 990: reg = CSSLSE->CSR;
	ld	a, 0x5190
	jra	00124$
00102$:
;	lib/src/stm8l15x_clk.c: 994: reg = CLK->CBEEPR;
	ld	a, 0x50cb
00124$:
;	lib/src/stm8l15x_clk.c: 998: if ((reg & (uint8_t)((uint8_t)1 << (uint8_t)pos)) != (uint8_t)RESET)
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00198$
00197$:
	sll	(0x02, sp)
	dec	a
	jrne	00197$
00198$:
	pop	a
	and	a, (0x01, sp)
	jreq	00126$
;	lib/src/stm8l15x_clk.c: 1000: bitstatus = SET;
	ld	a, #0x01
;	lib/src/stm8l15x_clk.c: 1004: bitstatus = RESET;
	.byte 0x21
00126$:
	clr	a
00127$:
;	lib/src/stm8l15x_clk.c: 1008: return((FlagStatus)bitstatus);
;	lib/src/stm8l15x_clk.c: 1009: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_clk.c: 1016: void CLK_ClearFlag(void)
;	-----------------------------------------
;	 function CLK_ClearFlag
;	-----------------------------------------
_CLK_ClearFlag:
;	lib/src/stm8l15x_clk.c: 1020: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
	bres	0x5190, #3
;	lib/src/stm8l15x_clk.c: 1021: }
	ret
;	lib/src/stm8l15x_clk.c: 1032: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
_CLK_GetITStatus:
	push	a
;	lib/src/stm8l15x_clk.c: 1040: if (CLK_IT == CLK_IT_SWIF)
	ld	(0x01, sp), a
	cp	a, #0x1c
	jrne	00114$
;	lib/src/stm8l15x_clk.c: 1043: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50c9
	and	a, (0x01, sp)
;	lib/src/stm8l15x_clk.c: 1045: bitstatus = SET;
	sub	a, #0x0c
	jrne	00102$
	inc	a
	jra	00115$
00102$:
;	lib/src/stm8l15x_clk.c: 1049: bitstatus = RESET;
	clr	a
	jra	00115$
00114$:
;	lib/src/stm8l15x_clk.c: 1052: else if (CLK_IT == CLK_IT_LSECSSF)
	ld	a, (0x01, sp)
	cp	a, #0x2c
	jrne	00111$
;	lib/src/stm8l15x_clk.c: 1055: if ((CSSLSE->CSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x5190
	and	a, (0x01, sp)
;	lib/src/stm8l15x_clk.c: 1057: bitstatus = SET;
	sub	a, #0x0c
	jrne	00105$
	inc	a
	jra	00115$
00105$:
;	lib/src/stm8l15x_clk.c: 1061: bitstatus = RESET;
	clr	a
	jra	00115$
00111$:
;	lib/src/stm8l15x_clk.c: 1067: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50ca
	and	a, (0x01, sp)
;	lib/src/stm8l15x_clk.c: 1069: bitstatus = SET;
	sub	a, #0x0c
	jrne	00108$
	inc	a
;	lib/src/stm8l15x_clk.c: 1073: bitstatus = RESET;
	.byte 0x21
00108$:
	clr	a
00115$:
;	lib/src/stm8l15x_clk.c: 1078: return bitstatus;
;	lib/src/stm8l15x_clk.c: 1079: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_clk.c: 1089: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
_CLK_ClearITPendingBit:
;	lib/src/stm8l15x_clk.c: 1095: if ((uint8_t)((uint8_t)CLK_IT & (uint8_t)0xF0) == (uint8_t)0x20)
	and	a, #0xf0
	cp	a, #0x20
	jrne	00102$
;	lib/src/stm8l15x_clk.c: 1098: CSSLSE->CSR &= (uint8_t)(~CSSLSE_CSR_CSSF);
	bres	0x5190, #3
	ret
00102$:
;	lib/src/stm8l15x_clk.c: 1103: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
	bres	0x50c9, #3
;	lib/src/stm8l15x_clk.c: 1105: }
	ret
	.area CODE
	.area CONST
_SYSDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.area INITIALIZER
	.area CABS (ABS)
