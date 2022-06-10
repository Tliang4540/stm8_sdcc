#include "funseg.h"

#pragma codeseg FUN_SEG

//被copy到ram从ram运行的代码放在以下
void _nprintf(uint8_t *buf)
{
  while (*buf != 0x00)
  {
    while((USART1->SR & (uint8_t)USART_FLAG_TXE) == (uint8_t)0x00);
    USART1->DR = *buf++;
  }
}