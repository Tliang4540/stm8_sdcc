#ifndef _FUNSEG_H_
#define _FUNSEG_H_

#include "stm8l15x.h"

typedef void(*nprintf)(uint8_t *);
void _nprintf(uint8_t *buf);

#endif