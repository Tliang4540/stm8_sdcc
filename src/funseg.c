#include "funseg.h"

#pragma codeseg FUN_SEG

//��copy��ram��ram���еĴ����������
void _nprintf(uint8_t *buf)
{
  while (*buf != 0x00)
  {
    while((USART1->SR & (uint8_t)USART_FLAG_TXE) == (uint8_t)0x00);
    USART1->DR = *buf++;
  }
}