#include "stm8l15x.h"
#include "delay.h"
#include "funcopy.h"

//将flash一段空间用来做数据存储
const uint8_t __at(32768+16384-1024) eeprom[1024] = {"Tliang\n\0"};

//测试中断函数
void RTC_Wakeup(void) __interrupt(4)
{
  RTC->ISR2 = (uint8_t)~(uint8_t)((uint16_t)RTC_IT_WUT >> 4);
  GPIOA->ODR ^= GPIO_Pin_6;
}

void main(void)
{
  uint8_t buf[128];
  CLK_SYSCLKDivConfig(CLK_RTCCLKDiv_1);
  
  //RTC时钟使能
  CLK_RTCClockConfig(CLK_RTCCLKSource_LSI, CLK_RTCCLKDiv_1);
  while ((CLK->ICKCR & (1<<(CLK_FLAG_LSIRDY & 0x0f))) == RESET);
  CLK_PeripheralClockConfig(CLK_Peripheral_RTC, ENABLE);	

  //设置rtc中断
  RTC_WakeUpClockConfig(RTC_WakeUpClock_RTCCLK_Div16);
	RTC_ITConfig(RTC_IT_WUT, ENABLE);
	enableInterrupts();
	RTC_SetWakeUpCounter(3088);
  RTC_WakeUpCmd(ENABLE);

  //开启串口发送
  GPIO_Init(GPIOC, GPIO_Pin_3, GPIO_Mode_Out_PP_High_Slow);
  CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
  USART_Init(USART1, 115200, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, USART_Mode_Tx);
  USART1->CR1 &= (uint8_t)(~USART_CR1_USARTD);			//USART1 enable

  //CLK->CKDIVR = 0x00;
  GPIO_Init(GPIOA, GPIO_Pin_6, GPIO_Mode_Out_PP_High_Slow);
  funcopy(buf);
  while(1)
  {
    (*(nprintf)buf)(eeprom);
    delay_ms(200);
  }
}