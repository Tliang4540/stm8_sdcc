#include "delay.h"
//16mhz
void delay_ms(uint16_t ms)  
{
  uint8_t i;
  if(ms > 64) 
  {
    i = (uint8_t)(ms / 64);
    do{
      delay_us(64000);
    } while (--i);
    
    ms = ms % 64;
  }
  delay_us(ms * 1000);
}

void delay_us(uint16_t us)  
{
  uint8_t i;
  do{//ldw	x, (0x03, sp)
    i = 2;//00109$:ld	a, #0x02
    do{
      __asm__("nop");
    }while(--i);//dec	a\n tnz	a\n jrne	00101$
  }while(--us);//decw	x\n tnzw	x\n jrne	00109$
}