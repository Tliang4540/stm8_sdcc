#ifndef _USERLIST_H_
#define _USERLIST_H_

#include "stm8l15x.h"

typedef struct
{
    uint8_t user_type;      //0:fingerprint 1:password 2:card 3:fingervein 4:face
    uint8_t user_addr;      //memory address
} user_list_type;

#define USER_LIST_START      0
#define USER_LIST_END        400

typedef struct 
{
    uint8_t user_id;        //fingerprint user id
}fp_list_type;

#define FP_LIST_START       400
#define FP_LIST_END         500

typedef struct 
{
    uint8_t user_id;        //card user id
    uint8_t card_uid[4];    //card uid
}card_list_type;

#define CARD_LIST_START     500
#define CARD_LIST_END       1000

typedef struct 
{
    uint8_t user_id;        //password user id
    uint8_t pwd_length;     //password length
    uint8_t password[12];   //password
}pwd_list_type;

#define PWD_LIST_START      1000
#define PWD_LIST_END        1280

#endif