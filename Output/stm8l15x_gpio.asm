;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module stm8l15x_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_ExternalPullUpConfig
	.globl _GPIO_Write
	.globl _GPIO_WriteBit
	.globl _GPIO_SetBits
	.globl _GPIO_ResetBits
	.globl _GPIO_ToggleBits
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputDataBit
	.globl _GPIO_ReadOutputDataBit
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
;	lib/src/stm8l15x_gpio.c: 96: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
;	lib/src/stm8l15x_gpio.c: 98: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	y, x
	clr	(0x0004, x)
;	lib/src/stm8l15x_gpio.c: 99: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	clr	(y)
;	lib/src/stm8l15x_gpio.c: 100: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, y
	incw	x
	incw	x
	clr	(x)
;	lib/src/stm8l15x_gpio.c: 101: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, y
	clr	(0x0003, x)
;	lib/src/stm8l15x_gpio.c: 102: }
	ret
;	lib/src/stm8l15x_gpio.c: 133: void GPIO_Init(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	sub	sp, #6
	exgw	x, y
	ld	(0x06, sp), a
;	lib/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x01, sp), x
	ld	a, (x)
	push	a
	ld	a, (0x07, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
;	lib/src/stm8l15x_gpio.c: 149: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x09, sp)
	jrpl	00105$
;	lib/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
	ld	a, (y)
;	lib/src/stm8l15x_gpio.c: 151: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x10
	pop	a
	jreq	00102$
;	lib/src/stm8l15x_gpio.c: 153: GPIOx->ODR |= GPIO_Pin;
	or	a, (0x06, sp)
	ld	(y), a
	jra	00103$
00102$:
;	lib/src/stm8l15x_gpio.c: 156: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(y), a
00103$:
;	lib/src/stm8l15x_gpio.c: 159: GPIOx->DDR |= GPIO_Pin;
	ldw	x, (0x04, sp)
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
	jra	00106$
00105$:
;	lib/src/stm8l15x_gpio.c: 163: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x04, sp)
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
00106$:
;	lib/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
	ldw	x, y
	addw	x, #0x0003
	ld	a, (x)
;	lib/src/stm8l15x_gpio.c: 170: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x40
	pop	a
	jreq	00108$
;	lib/src/stm8l15x_gpio.c: 172: GPIOx->CR1 |= GPIO_Pin;
	or	a, (0x06, sp)
	ld	(x), a
	jra	00109$
00108$:
;	lib/src/stm8l15x_gpio.c: 175: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(x), a
00109$:
;	lib/src/stm8l15x_gpio.c: 143: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x01, sp)
	ld	a, (x)
;	lib/src/stm8l15x_gpio.c: 182: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	push	a
	ld	a, (0x0a, sp)
	bcp	a, #0x20
	pop	a
	jreq	00111$
;	lib/src/stm8l15x_gpio.c: 184: GPIOx->CR2 |= GPIO_Pin;
	or	a, (0x06, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	jra	00113$
00111$:
;	lib/src/stm8l15x_gpio.c: 187: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
00113$:
;	lib/src/stm8l15x_gpio.c: 190: }
	addw	sp, #6
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_gpio.c: 209: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
_GPIO_ExternalPullUpConfig:
	push	a
;	lib/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
	addw	x, #0x0003
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_gpio.c: 215: if (NewState != DISABLE) /* External Pull-Up Set*/
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_gpio.c: 217: GPIOx->CR1 |= GPIO_Pin;
	or	a, (0x01, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_gpio.c: 220: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
;	lib/src/stm8l15x_gpio.c: 222: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_gpio.c: 248: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t GPIO_PortVal)
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
_GPIO_Write:
;	lib/src/stm8l15x_gpio.c: 250: GPIOx->ODR = GPIO_PortVal;
	ld	(x), a
;	lib/src/stm8l15x_gpio.c: 251: }
	ret
;	lib/src/stm8l15x_gpio.c: 270: void GPIO_WriteBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, BitAction GPIO_BitVal)
;	-----------------------------------------
;	 function GPIO_WriteBit
;	-----------------------------------------
_GPIO_WriteBit:
	push	a
;	lib/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	lib/src/stm8l15x_gpio.c: 276: if (GPIO_BitVal != RESET)
	tnz	(0x04, sp)
	jreq	00102$
;	lib/src/stm8l15x_gpio.c: 278: GPIOx->ODR |= GPIO_Pin;
	or	a, (0x01, sp)
	ld	(x), a
	jra	00104$
00102$:
;	lib/src/stm8l15x_gpio.c: 283: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
;	lib/src/stm8l15x_gpio.c: 285: }
	pop	a
	popw	x
	pop	a
	jp	(x)
;	lib/src/stm8l15x_gpio.c: 303: void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_SetBits
;	-----------------------------------------
_GPIO_SetBits:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_gpio.c: 305: GPIOx->ODR |= GPIO_Pin;
	ld	a, (x)
	or	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_gpio.c: 306: }
	pop	a
	ret
;	lib/src/stm8l15x_gpio.c: 324: void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ResetBits
;	-----------------------------------------
_GPIO_ResetBits:
	push	a
;	lib/src/stm8l15x_gpio.c: 326: GPIOx->ODR &= (uint8_t)(~GPIO_Pin);
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_gpio.c: 327: }
	pop	a
	ret
;	lib/src/stm8l15x_gpio.c: 336: void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint8_t GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ToggleBits
;	-----------------------------------------
_GPIO_ToggleBits:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_gpio.c: 338: GPIOx->ODR ^= GPIO_Pin;
	ld	a, (x)
	xor	a, (0x01, sp)
	ld	(x), a
;	lib/src/stm8l15x_gpio.c: 339: }
	pop	a
	ret
;	lib/src/stm8l15x_gpio.c: 347: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
_GPIO_ReadInputData:
;	lib/src/stm8l15x_gpio.c: 349: return ((uint8_t)GPIOx->IDR);
	ld	a, (0x1, x)
;	lib/src/stm8l15x_gpio.c: 350: }
	ret
;	lib/src/stm8l15x_gpio.c: 358: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
_GPIO_ReadOutputData:
;	lib/src/stm8l15x_gpio.c: 360: return ((uint8_t)GPIOx->ODR);
	ld	a, (x)
;	lib/src/stm8l15x_gpio.c: 361: }
	ret
;	lib/src/stm8l15x_gpio.c: 378: BitStatus GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputDataBit
;	-----------------------------------------
_GPIO_ReadInputDataBit:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_gpio.c: 380: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ld	a, (0x1, x)
	and	a, (0x01, sp)
;	lib/src/stm8l15x_gpio.c: 381: }
	addw	sp, #1
	ret
;	lib/src/stm8l15x_gpio.c: 389: BitStatus GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadOutputDataBit
;	-----------------------------------------
_GPIO_ReadOutputDataBit:
	push	a
	ld	(0x01, sp), a
;	lib/src/stm8l15x_gpio.c: 391: return ((BitStatus)(GPIOx->ODR & (uint8_t)GPIO_Pin));
	ld	a, (x)
	and	a, (0x01, sp)
;	lib/src/stm8l15x_gpio.c: 392: }
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
