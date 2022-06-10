#ifndef _FUNCOPY_H_
#define _FUNCOPY_H_

#include "funseg.h"

//如果函数大小超过255字节，设置为1
#define FUN_LONG_16BYTE         0

void funcopy(unsigned char *dest);

#endif