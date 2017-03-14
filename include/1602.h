#ifndef _1602_H
#define _1602_H
#include "std.h"
#define RS P1_2
#define RW P1_1
#define CS P1_0
#define DB P2

#define CLEAR 0x01
#define RESET 0x02

#define MODE_LEFT     0x04  /*move cursor left after write new date*/ 
#define MODE_RIGHT    0x06  /*move cursor right after write new date*/
#define MODE_MOVE     0x05  /*move all screen after write new date*/
#define MODE_STILL    0x04  /*not move all screen after write new date*/

#define SWITCH_ON     0x0c  /*turn on display*/
#define SWITCH_OFF    0x08  /*turn off display*/
#define SWITCH_CURSOR 0x0a  /*display cursor*/
#define SWITCH_BLINK  0x08  /*cursor blink*/
#define SWITCH_UBLINK 0x09  /*cursor no blink*/

#define MOVE_LEFT1    0x10
#define MOVE_RIGHT1   0x14
#define MOVE_LEFT     0x18
#define MOVE_RIGHT    0x1a

#define SET_WIDE4     0x20  /*4bit wide wire*/
#define SET_WIDE8     0x30  /*8bit wide wire*/
#define SET_LINE1     0x20  /*display one line*/
#define SET_LINE2     0x28  /*display two line*/
#define SET_57        0x20  /*show 5x7*/
#define SET_510       0x24  /*show 5x10*/

void display_char(uchar x, uchar y, uchar date);
void display_string(uchar* str);
void lcd_init(void);
#endif
