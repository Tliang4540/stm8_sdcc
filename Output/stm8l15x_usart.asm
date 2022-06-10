;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8l15x_usart
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _USART_DeInit
	.globl _USART_Init
	.globl _USART_ClockInit
	.globl _USART_Cmd
	.globl _USART_SetPrescaler
	.globl _USART_SendBreak
	.globl _USART_ReceiveData8
	.globl _USART_ReceiveData9
	.globl _USART_SendData8
	.globl _USART_SendData9
	.globl _USART_ReceiverWakeUpCmd
	.globl _USART_SetAddress
	.globl _USART_WakeUpConfig
	.globl _USART_HalfDuplexCmd
	.globl _USART_SmartCardCmd
	.globl _USART_SmartCardNACKCmd
	.globl _USART_SetGuardTime
	.globl _USART_IrDAConfig
	.globl _USART_IrDACmd
	.globl _USART_DMACmd
	.globl _USART_ITConfig
	.globl _USART_GetFlagStatus
	.globl _USART_ClearFlag
	.globl _USART_GetITStatus
	.globl _USART_ClearITPendingBit
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
;	lib/src/stm8l15x_usart.c: 148: void USART_DeInit(USART_TypeDef* USARTx)
;	-----------------------------------------
;	 function USART_DeInit
;	-----------------------------------------
_USART_DeInit:
;	lib/src/stm8l15x_usart.c: 154: (void) USARTx->DR;
	ldw	y, x
	ld	a, (0x1, x)
;	lib/src/stm8l15x_usart.c: 156: USARTx->BRR2 = USART_BRR2_RESET_VALUE;  /* Set USART_BRR2 to reset value 0x00 */
	ldw	x, y
	clr	(0x0003, x)
;	lib/src/stm8l15x_usart.c: 157: USARTx->BRR1 = USART_BRR1_RESET_VALUE;  /* Set USART_BRR1 to reset value 0x00 */
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	lib/src/stm8l15x_usart.c: 159: USARTx->CR1 = USART_CR1_RESET_VALUE;  /* Set USART_CR1 to reset value 0x00 */
	ldw	x, y
	clr	(0x0004, x)
;	lib/src/stm8l15x_usart.c: 160: USARTx->CR2 = USART_CR2_RESET_VALUE;  /* Set USART_CR2 to reset value 0x00 */
	ldw	x, y
	clr	(0x0005, x)
;	lib/src/stm8l15x_usart.c: 161: USARTx->CR3 = USART_CR3_RESET_VALUE;  /* Set USART_CR3 to reset value 0x00 */
	ldw	x, y
	clr	(0x0006, x)
;	lib/src/stm8l15x_usart.c: 162: USARTx->CR4 = USART_CR4_RESET_VALUE;  /* Set USART_CR4 to reset value 0x00 */
	ldw	x, y
	clr	(0x0007, x)
;	lib/src/stm8l15x_usart.c: 163: }
	ret
;	lib/src/stm8l15x_usart.c: 192: void USART_Init(USART_TypeDef* USARTx, uint32_t BaudRate, USART_WordLength_TypeDef
;	-----------------------------------------
;	 function USART_Init
;	-----------------------------------------
_USART_Init:
	sub	sp, #11
;	lib/src/stm8l15x_usart.c: 210: USARTx->CR1 &= (uint8_t)(~(USART_CR1_PCEN | USART_CR1_PS | USART_CR1_M));
	ldw	(0x0a, sp), x
	addw	x, #0x0004
	ld	a, (x)
	and	a, #0xe9
	ld	(0x09, sp), a
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 213: USARTx->CR1 |= (uint8_t)((uint8_t)USART_WordLength | (uint8_t)USART_Parity);
	ld	a, (x)
	ld	a, (0x12, sp)
	or	a, (0x14, sp)
	or	a, (0x09, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 216: USARTx->CR3 &= (uint8_t)(~USART_CR3_STOP);
	ldw	x, (0x0a, sp)
	addw	x, #0x0006
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 218: USARTx->CR3 |= (uint8_t)USART_StopBits;
	push	a
	ld	a, (x)
	pop	a
	or	a, (0x13, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 221: USARTx->BRR1 &= (uint8_t)(~USART_BRR1_DIVM);
	ldw	x, (0x0a, sp)
	incw	x
	incw	x
	ldw	(0x01, sp), x
	ld	a, (x)
	ldw	x, (0x01, sp)
	clr	(x)
;	lib/src/stm8l15x_usart.c: 223: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVM);
	ldw	x, (0x0a, sp)
	addw	x, #0x0003
	ldw	(0x03, sp), x
	ld	a, (x)
	and	a, #0x0f
	ldw	x, (0x03, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 225: USARTx->BRR2 &= (uint8_t)(~USART_BRR2_DIVF);
	ldw	x, (0x03, sp)
	push	a
	ld	a, (x)
	pop	a
	and	a, #0xf0
	ldw	x, (0x03, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 227: BaudRate_Mantissa  = (uint32_t)(CLK_GetClockFreq() / BaudRate );
	call	_CLK_GetClockFreq
	ldw	(0x08, sp), x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x05, sp), y
;	lib/src/stm8l15x_usart.c: 229: USARTx->BRR2 = (uint8_t)((BaudRate_Mantissa >> (uint8_t)8) & (uint8_t)0xF0);
	ld	a, xh
	and	a, #0xf0
	ld	(0x09, sp), a
	ldw	y, (0x03, sp)
	ld	a, (0x09, sp)
	ld	(y), a
;	lib/src/stm8l15x_usart.c: 231: USARTx->BRR2 |= (uint8_t)(BaudRate_Mantissa & (uint8_t)0x0F);
	ldw	y, (0x03, sp)
	ld	a, (y)
	ld	a, xl
	and	a, #0x0f
	or	a, (0x09, sp)
	ldw	y, (0x03, sp)
	ld	(y), a
;	lib/src/stm8l15x_usart.c: 233: USARTx->BRR1 = (uint8_t)(BaudRate_Mantissa >> (uint8_t)4);
	ld	a, #0x10
	div	x, a
	ld	a, xl
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 236: USARTx->CR2 &= (uint8_t)~(USART_CR2_TEN | USART_CR2_REN);
	ldw	x, (0x0a, sp)
	addw	x, #0x0005
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 238: USARTx->CR2 |= (uint8_t)USART_Mode;
	push	a
	ld	a, (x)
	pop	a
	or	a, (0x15, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 239: }
	ldw	x, (12, sp)
	addw	sp, #21
	jp	(x)
;	lib/src/stm8l15x_usart.c: 264: void USART_ClockInit(USART_TypeDef* USARTx, USART_Clock_TypeDef USART_Clock,
;	-----------------------------------------
;	 function USART_ClockInit
;	-----------------------------------------
_USART_ClockInit:
	sub	sp, #4
	ld	(0x04, sp), a
;	lib/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
	addw	x, #0x0006
	ldw	(0x01, sp), x
	ld	a, (x)
	and	a, #0xf8
	ld	(0x03, sp), a
	ldw	x, (0x01, sp)
	ld	a, (0x03, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 277: USARTx->CR3 |= (uint8_t)((uint8_t)((uint8_t)(USART_CPOL | (uint8_t)USART_CPHA ) | USART_LastBit));
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
	or	a, (0x09, sp)
	or	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 275: USARTx->CR3 &= (uint8_t)~(USART_CR3_CPOL | USART_CR3_CPHA | USART_CR3_LBCL);
	ldw	x, (0x01, sp)
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 279: if (USART_Clock != USART_Clock_Disable)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 281: USARTx->CR3 |= (uint8_t)(USART_CR3_CLKEN); /* Set the Clock Enable bit */
	or	a, #0x08
	ldw	x, (0x01, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 285: USARTx->CR3 &= (uint8_t)(~USART_CR3_CLKEN); /* Clear the Clock Enable bit */
	and	a, #0xf7
	ldw	x, (0x01, sp)
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 287: }
	ldw	x, (5, sp)
	addw	sp, #9
	jp	(x)
;	lib/src/stm8l15x_usart.c: 296: void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_Cmd
;	-----------------------------------------
_USART_Cmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
	addw	x, #0x0004
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 298: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 300: USARTx->CR1 &= (uint8_t)(~USART_CR1_USARTD); /**< USART Enable */
	and	a, #0xdf
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 304: USARTx->CR1 |= USART_CR1_USARTD;  /**< USART Disable (for low power consumption) */
	or	a, #0x20
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 306: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 329: void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
;	-----------------------------------------
;	 function USART_SetPrescaler
;	-----------------------------------------
_USART_SetPrescaler:
;	lib/src/stm8l15x_usart.c: 332: USARTx->PSCR = USART_Prescaler;
	addw	x, #0x000a
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 333: }
	ret
;	lib/src/stm8l15x_usart.c: 340: void USART_SendBreak(USART_TypeDef* USARTx)
;	-----------------------------------------
;	 function USART_SendBreak
;	-----------------------------------------
_USART_SendBreak:
;	lib/src/stm8l15x_usart.c: 342: USARTx->CR2 |= USART_CR2_SBK;
	addw	x, #0x0005
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 343: }
	ret
;	lib/src/stm8l15x_usart.c: 382: uint8_t USART_ReceiveData8(USART_TypeDef* USARTx)
;	-----------------------------------------
;	 function USART_ReceiveData8
;	-----------------------------------------
_USART_ReceiveData8:
;	lib/src/stm8l15x_usart.c: 384: return USARTx->DR;
	ld	a, (0x1, x)
;	lib/src/stm8l15x_usart.c: 385: }
	ret
;	lib/src/stm8l15x_usart.c: 392: uint16_t USART_ReceiveData9(USART_TypeDef* USARTx)
;	-----------------------------------------
;	 function USART_ReceiveData9
;	-----------------------------------------
_USART_ReceiveData9:
	sub	sp, #2
;	lib/src/stm8l15x_usart.c: 396: temp = ((uint16_t)(((uint16_t)((uint16_t)USARTx->CR1 & (uint16_t)USART_CR1_R8)) << 1));
	ldw	y, x
	ld	a, (0x4, x)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
;	lib/src/stm8l15x_usart.c: 397: return (uint16_t)( ((uint16_t)((uint16_t)USARTx->DR) | temp) & ((uint16_t)0x01FF));
	ld	a, (0x1, y)
	clrw	x
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
;	lib/src/stm8l15x_usart.c: 398: }
	addw	sp, #2
	ret
;	lib/src/stm8l15x_usart.c: 405: void USART_SendData8(USART_TypeDef* USARTx, uint8_t Data)
;	-----------------------------------------
;	 function USART_SendData8
;	-----------------------------------------
_USART_SendData8:
;	lib/src/stm8l15x_usart.c: 408: USARTx->DR = Data;
	incw	x
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 409: }
	ret
;	lib/src/stm8l15x_usart.c: 418: void USART_SendData9(USART_TypeDef* USARTx, uint16_t Data)
;	-----------------------------------------
;	 function USART_SendData9
;	-----------------------------------------
_USART_SendData9:
	sub	sp, #3
;	lib/src/stm8l15x_usart.c: 423: USARTx->CR1 &= ((uint8_t)~USART_CR1_T8);
	ldw	(0x02, sp), x
	addw	x, #0x0004
	ld	a, (x)
	and	a, #0xbf
	ld	(0x01, sp), a
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 426: USARTx->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & USART_CR1_T8);
	ld	a, (x)
	ldw	y, (0x06, sp)
	srlw	y
	srlw	y
	ld	a, yl
	and	a, #0x40
	or	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 429: USARTx->DR   = (uint8_t)(Data);
	ldw	x, (0x02, sp)
	incw	x
	ld	a, (0x07, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 430: }
	ldw	x, (4, sp)
	addw	sp, #7
	jp	(x)
;	lib/src/stm8l15x_usart.c: 473: void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_ReceiverWakeUpCmd
;	-----------------------------------------
_USART_ReceiverWakeUpCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
	addw	x, #0x0005
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 477: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 480: USARTx->CR2 |= USART_CR2_RWU;
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 485: USARTx->CR2 &= ((uint8_t)~USART_CR2_RWU);
	and	a, #0xfd
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 487: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 496: void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
;	-----------------------------------------
;	 function USART_SetAddress
;	-----------------------------------------
_USART_SetAddress:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 502: USARTx->CR4 &= ((uint8_t)~USART_CR4_ADD);
	addw	x, #0x0007
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 504: USARTx->CR4 |= USART_Address;
	push	a
	ld	a, (x)
	pop	a
	or	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 505: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 515: void USART_WakeUpConfig(USART_TypeDef* USARTx, USART_WakeUp_TypeDef USART_WakeUp)
;	-----------------------------------------
;	 function USART_WakeUpConfig
;	-----------------------------------------
_USART_WakeUpConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 519: USARTx->CR1 &= ((uint8_t)~USART_CR1_WAKE);
	addw	x, #0x0004
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 520: USARTx->CR1 |= (uint8_t)USART_WakeUp;
	push	a
	ld	a, (x)
	pop	a
	or	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 521: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 566: void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_HalfDuplexCmd
;	-----------------------------------------
_USART_HalfDuplexCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
	addw	x, #0x0008
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 570: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 572: USARTx->CR5 |= USART_CR5_HDSEL;  /**< USART Half Duplex Enable  */
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 576: USARTx->CR5 &= (uint8_t)~USART_CR5_HDSEL; /**< USART Half Duplex Disable */
	and	a, #0xf7
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 578: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 644: void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_SmartCardCmd
;	-----------------------------------------
_USART_SmartCardCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
	addw	x, #0x0008
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 648: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 651: USARTx->CR5 |= USART_CR5_SCEN;
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 656: USARTx->CR5 &= ((uint8_t)(~USART_CR5_SCEN));
	and	a, #0xdf
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 658: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 667: void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_SmartCardNACKCmd
;	-----------------------------------------
_USART_SmartCardNACKCmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
	addw	x, #0x0008
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 671: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 674: USARTx->CR5 |= USART_CR5_NACK;
	or	a, #0x10
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 679: USARTx->CR5 &= ((uint8_t)~(USART_CR5_NACK));
	and	a, #0xef
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 681: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 690: void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
;	-----------------------------------------
;	 function USART_SetGuardTime
;	-----------------------------------------
_USART_SetGuardTime:
;	lib/src/stm8l15x_usart.c: 693: USARTx->GTR = USART_GuardTime;
	addw	x, #0x0009
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 694: }
	ret
;	lib/src/stm8l15x_usart.c: 751: void USART_IrDAConfig(USART_TypeDef* USARTx, USART_IrDAMode_TypeDef USART_IrDAMode)
;	-----------------------------------------
;	 function USART_IrDAConfig
;	-----------------------------------------
_USART_IrDAConfig:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
	addw	x, #0x0008
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 755: if (USART_IrDAMode != USART_IrDAMode_Normal)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 757: USARTx->CR5 |= USART_CR5_IRLP;
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 761: USARTx->CR5 &= ((uint8_t)~USART_CR5_IRLP);
	and	a, #0xfb
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 763: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 772: void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_IrDACmd
;	-----------------------------------------
_USART_IrDACmd:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
	addw	x, #0x0008
	ld	a, (x)
;	lib/src/stm8l15x_usart.c: 778: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 781: USARTx->CR5 |= USART_CR5_IREN;
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 786: USARTx->CR5 &= ((uint8_t)~USART_CR5_IREN);
	and	a, #0xfd
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 788: }
	pop	a
	ret
;	lib/src/stm8l15x_usart.c: 818: void USART_DMACmd(USART_TypeDef* USARTx, USART_DMAReq_TypeDef USART_DMAReq,
;	-----------------------------------------
;	 function USART_DMACmd
;	-----------------------------------------
_USART_DMACmd:
	push	a
;	lib/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
	addw	x, #0x0008
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_usart.c: 825: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 829: USARTx->CR5 |= (uint8_t) USART_DMAReq;
	or	a, (0x01, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_usart.c: 835: USARTx->CR5 &= (uint8_t)~USART_DMAReq;
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
;	lib/src/stm8l15x_usart.c: 837: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_usart.c: 939: void USART_ITConfig(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function USART_ITConfig
;	-----------------------------------------
_USART_ITConfig:
	sub	sp, #9
	ldw	(0x08, sp), x
;	lib/src/stm8l15x_usart.c: 946: usartreg = (uint8_t)((uint16_t)USART_IT >> 0x08);
	ldw	x, (0x0c, sp)
;	lib/src/stm8l15x_usart.c: 948: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
	ld	a, (0x0d, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x08, sp), a
	pop	a
	tnz	a
	jreq	00144$
00143$:
	sll	(0x07, sp)
	dec	a
	jrne	00143$
00144$:
;	lib/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
	ld	a, xh
	dec	a
	jrne	00146$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00146$:
	clr	(0x01, sp)
00147$:
;	lib/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
	ldw	y, (0x08, sp)
	addw	y, #0x0004
	ldw	(0x02, sp), y
;	lib/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
	ld	a, xh
	sub	a, #0x05
	jrne	00149$
	inc	a
	ld	(0x04, sp), a
	.byte 0xc5
00149$:
	clr	(0x04, sp)
00150$:
;	lib/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
	ldw	x, (0x08, sp)
	addw	x, #0x0008
	ldw	(0x05, sp), x
;	lib/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
	ldw	x, (0x08, sp)
	addw	x, #0x0005
;	lib/src/stm8l15x_usart.c: 950: if (NewState != DISABLE)
	tnz	(0x0e, sp)
	jreq	00114$
;	lib/src/stm8l15x_usart.c: 953: if (usartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00105$
;	lib/src/stm8l15x_usart.c: 955: USARTx->CR1 |= itpos;
	ldw	x, (0x02, sp)
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, (0x02, sp)
	ld	(x), a
	jra	00116$
00105$:
;	lib/src/stm8l15x_usart.c: 957: else if (usartreg == 0x05)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 959: USARTx->CR5 |= itpos;
	ldw	x, (0x05, sp)
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, (0x05, sp)
	ld	(x), a
	jra	00116$
00102$:
;	lib/src/stm8l15x_usart.c: 964: USARTx->CR2 |= itpos;
	ld	a, (x)
	or	a, (0x07, sp)
	ld	(x), a
	jra	00116$
00114$:
;	lib/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
	cpl	(0x07, sp)
;	lib/src/stm8l15x_usart.c: 970: if (usartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00111$
;	lib/src/stm8l15x_usart.c: 972: USARTx->CR1 &= (uint8_t)(~itpos);
	ldw	x, (0x02, sp)
	ld	a, (x)
	and	a, (0x07, sp)
	ldw	x, (0x02, sp)
	ld	(x), a
	jra	00116$
00111$:
;	lib/src/stm8l15x_usart.c: 974: else if (usartreg == 0x05)
	tnz	(0x04, sp)
	jreq	00108$
;	lib/src/stm8l15x_usart.c: 976: USARTx->CR5 &= (uint8_t)(~itpos);
	ldw	x, (0x05, sp)
	ld	a, (x)
	and	a, (0x07, sp)
	ldw	x, (0x05, sp)
	ld	(x), a
	jra	00116$
00108$:
;	lib/src/stm8l15x_usart.c: 981: USARTx->CR2 &= (uint8_t)(~itpos);
	ld	a, (x)
	and	a, (0x07, sp)
	ld	(x), a
00116$:
;	lib/src/stm8l15x_usart.c: 984: }
	ldw	x, (10, sp)
	addw	sp, #14
	jp	(x)
;	lib/src/stm8l15x_usart.c: 1002: FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
;	-----------------------------------------
;	 function USART_GetFlagStatus
;	-----------------------------------------
_USART_GetFlagStatus:
	push	a
;	lib/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
	ldw	y, (0x04, sp)
;	lib/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ld	a, (0x05, sp)
	ld	(0x01, sp), a
;	lib/src/stm8l15x_usart.c: 1009: if (USART_FLAG == USART_FLAG_SBK)
	cpw	y, #0x0101
	jrne	00108$
;	lib/src/stm8l15x_usart.c: 1011: if ((USARTx->CR2 & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ld	a, (0x5, x)
	and	a, (0x01, sp)
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 1014: status = SET;
	ld	a, #0x01
	jra	00109$
00102$:
;	lib/src/stm8l15x_usart.c: 1019: status = RESET;
	clr	a
	jra	00109$
00108$:
;	lib/src/stm8l15x_usart.c: 1024: if ((USARTx->SR & (uint8_t)USART_FLAG) != (uint8_t)0x00)
	ld	a, (x)
	and	a, (0x01, sp)
	jreq	00105$
;	lib/src/stm8l15x_usart.c: 1027: status = SET;
	ld	a, #0x01
;	lib/src/stm8l15x_usart.c: 1032: status = RESET;
	.byte 0x21
00105$:
	clr	a
00109$:
;	lib/src/stm8l15x_usart.c: 1036: return status;
;	lib/src/stm8l15x_usart.c: 1037: }
	ldw	x, (2, sp)
	addw	sp, #5
	jp	(x)
;	lib/src/stm8l15x_usart.c: 1060: void USART_ClearFlag(USART_TypeDef* USARTx, USART_FLAG_TypeDef USART_FLAG)
;	-----------------------------------------
;	 function USART_ClearFlag
;	-----------------------------------------
_USART_ClearFlag:
;	lib/src/stm8l15x_usart.c: 1065: USARTx->SR = (uint8_t)((uint16_t)~((uint16_t)USART_FLAG));
	ldw	y, (0x03, sp)
	cplw	y
	ld	a, yl
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 1066: }
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
;	lib/src/stm8l15x_usart.c: 1083: ITStatus USART_GetITStatus(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
;	-----------------------------------------
;	 function USART_GetITStatus
;	-----------------------------------------
_USART_GetITStatus:
	sub	sp, #6
	ldw	(0x05, sp), x
;	lib/src/stm8l15x_usart.c: 1096: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)USART_IT & (uint8_t)0x0F));
	ld	a, (0x0a, sp)
	ld	xl, a
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00163$
00162$:
	sll	(0x04, sp)
	dec	a
	jrne	00162$
00163$:
;	lib/src/stm8l15x_usart.c: 1098: itmask1 = (uint8_t)((uint8_t)USART_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
;	lib/src/stm8l15x_usart.c: 1100: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00165$
00164$:
	sll	(0x01, sp)
	dec	a
	jrne	00164$
00165$:
;	lib/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
	ldw	y, (0x09, sp)
	ldw	(0x02, sp), y
;	lib/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, (0x05, sp)
	ld	a, (x)
	and	a, (0x04, sp)
	ld	(0x04, sp), a
;	lib/src/stm8l15x_usart.c: 1103: if (USART_IT == USART_IT_PE)
	ldw	x, (0x02, sp)
	cpw	x, #0x0100
	jrne	00118$
;	lib/src/stm8l15x_usart.c: 1106: enablestatus = (uint8_t)((uint8_t)USARTx->CR1 & itmask2);
	ldw	y, (0x05, sp)
	ldw	(0x02, sp), y
	ldw	x, y
	ld	a, (0x4, x)
	and	a, (0x01, sp)
;	lib/src/stm8l15x_usart.c: 1109: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
	tnz	(0x04, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	lib/src/stm8l15x_usart.c: 1112: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00119$
00102$:
;	lib/src/stm8l15x_usart.c: 1117: pendingbitstatus = RESET;
	clr	a
	jra	00119$
00118$:
;	lib/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
	ldw	x, (0x05, sp)
	ld	a, (0x5, x)
	and	a, (0x01, sp)
;	lib/src/stm8l15x_usart.c: 1121: else if (USART_IT == USART_IT_OR)
	ldw	x, (0x02, sp)
	cpw	x, #0x0235
	jrne	00115$
;	lib/src/stm8l15x_usart.c: 1124: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
	ld	(0x03, sp), a
;	lib/src/stm8l15x_usart.c: 1127: temp = (uint8_t)(USARTx->CR5 & USART_CR5_EIE);
	ldw	x, (0x05, sp)
	ld	a, (0x8, x)
	and	a, #0x01
;	lib/src/stm8l15x_usart.c: 1129: if (( (USARTx->SR & itpos) != 0x00) && ((enablestatus || temp)))
	tnz	(0x04, sp)
	jreq	00106$
	tnz	(0x03, sp)
	jrne	00105$
	tnz	a
	jreq	00106$
00105$:
;	lib/src/stm8l15x_usart.c: 1132: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00119$
00106$:
;	lib/src/stm8l15x_usart.c: 1137: pendingbitstatus = RESET;
	clr	a
	jra	00119$
00115$:
;	lib/src/stm8l15x_usart.c: 1144: enablestatus = (uint8_t)((uint8_t)USARTx->CR2 & itmask2);
;	lib/src/stm8l15x_usart.c: 1146: if (((USARTx->SR & itpos) != (uint8_t)0x00) && enablestatus)
	tnz	(0x04, sp)
	jreq	00111$
	tnz	a
	jreq	00111$
;	lib/src/stm8l15x_usart.c: 1149: pendingbitstatus = SET;
	ld	a, #0x01
;	lib/src/stm8l15x_usart.c: 1154: pendingbitstatus = RESET;
	.byte 0x21
00111$:
	clr	a
00119$:
;	lib/src/stm8l15x_usart.c: 1159: return  pendingbitstatus;
;	lib/src/stm8l15x_usart.c: 1160: }
	ldw	x, (7, sp)
	addw	sp, #10
	jp	(x)
;	lib/src/stm8l15x_usart.c: 1183: void USART_ClearITPendingBit(USART_TypeDef* USARTx, USART_IT_TypeDef USART_IT)
;	-----------------------------------------
;	 function USART_ClearITPendingBit
;	-----------------------------------------
_USART_ClearITPendingBit:
;	lib/src/stm8l15x_usart.c: 1188: USARTx->SR &= (uint8_t)(~USART_SR_TC);
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
;	lib/src/stm8l15x_usart.c: 1189: }
	ldw	x, (1, sp)
	addw	sp, #4
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
