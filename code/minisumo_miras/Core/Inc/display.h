#ifndef DISPLAY_H
#define DISPLAY_H

#include "stm32f4xx_hal.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>

#include "display_fonts.h"

#define DISPLAY_ADDRESS			0x3C
#define DISPLAY_WIDTH			128		// px
#define DISPLAY_HEIGHT			64		// px
//#define DISPLAY_FLIP

typedef enum {
	DISPLAY_COLOR_BLACK,
	DISPLAY_COLOR_WHITE
} display_color_t;

void display_init();
void display_fill(const display_color_t);
void display_render();
void display_line(int16_t, int16_t, const int16_t, const int16_t, const display_color_t);
void display_rect(const int16_t, const int16_t, const int16_t, const int16_t, const display_color_t);
void display_inverse(const int16_t, const int16_t, const int16_t, const int16_t);
void display_bitmap(const int16_t, const int16_t, const display_color_t, const void *, const int16_t, const int16_t);
void display_printf(const int16_t, const int16_t, const display_color_t, const display_font_t, const char *, ...);

#endif
