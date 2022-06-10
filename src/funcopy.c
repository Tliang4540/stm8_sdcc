#include "funcopy.h"

#if(FUN_LONG_16BYTE == 0)

volatile unsigned char FUN_SIZE;

inline void get_section_size(void)
{
    __asm__("mov _FUN_SIZE, #l_FUN_SEG");
}

/******************************************************************************
* 功能: 将funseg中的函数复制到ram中
* 参数: ram区
******************************************************************************/
void funcopy(unsigned char *dest)
{
    unsigned char *p_dest = (unsigned char*)dest;
    const unsigned char *p_src = (const unsigned char*)_nprintf;
    unsigned char i = 0;
    get_section_size();
    for (i = 0; i < FUN_SIZE; i++)
    {
        *p_dest++ = *p_src++;
    }
}

#else

volatile unsigned int FUN_SIZE;

inline void get_section_size(void)
{
    __asm__("pushw x\n  \
             ldw x, #l_FUN_SEG\n    \
             ldw _FUN_SIZE, x\n     \
             popw x");
}

void funcopy(void *dest, const void *src)
{
    unsigned char *p_dest = (unsigned char*)dest;
    const unsigned char *p_src = (const unsigned char*)src;
    unsigned int i = 0;
    get_section_size();
    for (i = 0; i < FUN_SIZE; i++)
    {
        *p_dest++ = *p_src++;
    }
}

#endif