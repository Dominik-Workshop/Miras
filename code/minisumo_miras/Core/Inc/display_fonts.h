/**
 * @file display_fonts.h
 * @author Eryk
 * @brief
 * @version 0.1
 * @date 2023-04-27
 *
 * @copyright Copyright (c) 2023
 *
 */

#ifndef DISPLAY_FONTS_H
#define DISPLAY_FONTS_H

#include <stdint.h>

typedef struct {
	uint8_t width;
	uint8_t height;
	const uint16_t *data;
} display_font_t;

extern const display_font_t display_font_6x8;
extern const display_font_t display_font_7x10;
extern const display_font_t display_font_11x18;
extern const display_font_t display_font_16x26;

#endif
