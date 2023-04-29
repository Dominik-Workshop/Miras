#include "display.h"

extern I2C_HandleTypeDef hi2c2;

static uint8_t buffer[DISPLAY_WIDTH*DISPLAY_HEIGHT/8] = {0};

static inline void write_cmd(const uint8_t byte) {
	//i2c1_write_8(DISPLAY_ADDRESS, 0x00, &byte, 1, 100);
	HAL_I2C_Mem_Write(&hi2c2, DISPLAY_ADDRESS << 1, 0x00, 1, (uint8_t *) &byte, 1, HAL_MAX_DELAY);
}

static inline void write_buffer(const void *src, const uint32_t size) {
	//i2c1_write_8(DISPLAY_ADDRESS, 0x40, src, size, 100);
	HAL_I2C_Mem_Write(&hi2c2, DISPLAY_ADDRESS << 1, 0x40, 1, (uint8_t *) src, size, HAL_MAX_DELAY);
}

static void set(int16_t x, int16_t y, const display_color_t color) {
	if(x<0 || x>=DISPLAY_WIDTH || y<0 || y>=DISPLAY_HEIGHT)
		return;

	#ifdef DISPLAY_FLIP
		x = DISPLAY_WIDTH - x - 1;
		y = DISPLAY_HEIGHT - y - 1;
	#endif

	if(color) {
		buffer[x + (y/8)*DISPLAY_WIDTH] |=(1<<(y%8));
	} else {
		buffer[x + (y/8)*DISPLAY_WIDTH] &=~(1<<(y%8));
	}
}

static display_color_t get(int16_t x, int16_t y) {
	if(x<0 || x>=DISPLAY_WIDTH || y<0 || y>=DISPLAY_HEIGHT)
		return DISPLAY_COLOR_BLACK;

	#ifdef DISPLAY_FLIP
		x = DISPLAY_WIDTH - x - 1;
		y = DISPLAY_HEIGHT - y - 1;
	#endif

	return ((buffer[x + (y/8)*DISPLAY_WIDTH] & (1<<(y%8)))>0);
}

void display_init() {

	write_cmd(0xAE);	// display off
	write_cmd(0x20);	// set memory addressing mode
	write_cmd(0x00);	// horizontal addressing mode
	write_cmd(0xB0);	// set page start address for page addressing mode
	//write_cmd(0xC0);	// mirror vertically
	write_cmd(0xC8);	// set COM output scan direction mode
	write_cmd(0x00);	// set low column address
	write_cmd(0x10);	// set high column address
	write_cmd(0x40);	// set start line address
	write_cmd(0x81);	// set contrast
	write_cmd(0xFF);	//
	//write_cmd(0xA0);	// mirror horizontally
	write_cmd(0xA1);	// set segment remap 0 to 127
	//write_cmd(0xA7);	// inverse colors
	write_cmd(0xA6);	// set normal color
	write_cmd(0xA8);	// set multiplex ratio 1 to 64
	write_cmd(0x3F);	//
	write_cmd(0xA4);	// output follows RAM content
	write_cmd(0xD3);	// set display offset
	write_cmd(0x00);	//
	write_cmd(0xD5);	// set display clock divide ratio
	write_cmd(0xF0);	//
	write_cmd(0xD9);	// set pre-charge period
	write_cmd(0x22);	//
	write_cmd(0xDA);	// set COM pins hardware configuration
	write_cmd(0x12);	//
	write_cmd(0xDB);	// set VCOMH
	write_cmd(0x20);	//
	write_cmd(0x8D);	// set DC-DC enable
	write_cmd(0x14);	//
	write_cmd(0xAF);	// set display on

	display_fill(DISPLAY_COLOR_BLACK);
}

void display_fill(const display_color_t color) {
	if(color)
		memset(buffer, 0xFF, DISPLAY_WIDTH*DISPLAY_HEIGHT/8);
	else
		memset(buffer, 0x00, DISPLAY_WIDTH*DISPLAY_HEIGHT/8);
}

void display_render() {
	for(uint8_t i=0; i<DISPLAY_HEIGHT/8; i++) {
		write_cmd(0xB0 + i);	// set current RAM page address
		write_cmd(0x00);
		write_cmd(0x10);
		write_buffer(&buffer[DISPLAY_WIDTH*i], DISPLAY_WIDTH);
	}
}

void display_line(int16_t x0, int16_t y0, const int16_t x1, const int16_t y1, const display_color_t color) {
	// https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm

	const int16_t dx = abs(x1 - x0);
	const int16_t dy = - abs(y1 - y0);
	const int16_t sx = (x0<x1) ? 1 : -1;
	const int16_t sy = (y0<y1) ? 1 : -1;
	int16_t error = dx + dy;
	int16_t e2;

	while(1) {
		set(x0, y0, color);

		if(x0==x1 && y0==y1)
			break;

		e2 = 2*error;

		if(e2>=dy) {
			if(x0==x1)
				break;
			error +=dy;
			x0 +=sx;
		}
		if(e2<=dx) {
			if(y0==y1)
				break;
			error +=dx;
			y0 +=sy;
		}
	}
}

void display_rect(const int16_t x, const int16_t y, const int16_t w, const int16_t h, const display_color_t color) {
	for(int16_t i=0; i<w; i++) {
		for(int16_t j=0; j<h; j++) {
			set(i + x, j + y, color);
		}
	}

}

void display_inverse(const int16_t x, const int16_t y, const int16_t w, const int16_t h) {
	for(int16_t i=0; i<w; i++) {
		for(int16_t j=0; j<h; j++) {
			set(i + x, j + y, !get(i + x, j + y));
		}
	}
}

void display_bitmap(const int16_t x, const int16_t y, const display_color_t color, const void *src, const int16_t w, const int16_t h) {
	const uint16_t byte_per_row = ceilf((float)w/8.f);


	for(int16_t i=0; i<h; i++) {
		for(int16_t j=0; j<w; j++) {

			if(((uint8_t *)src)[i*byte_per_row + j/8] & (1<<(7 - j%8)))
				set(j + x, i + y, color);
			else
				set(j + x, i + y, !color);
		}
	}
}

static void character(const int16_t x, const int16_t y, const display_color_t color, const display_font_t font, const char c) {
	const void *src = &font.data[(c - ' ')*font.height];
	const uint16_t byte_per_row = ceilf((float)font.width/16.f);

	for(int16_t i=0; i<font.height; i++) {
		for(int16_t j=0; j<font.width; j++) {

			if(((uint16_t *)src)[i*byte_per_row + j/16] & (1<<(15 - j%16)))
				set(j + x, i + y, color);
			else
				set(j + x, i + y, !color);
		}
	}
}

void display_printf(const int16_t x, const int16_t y, const display_color_t color, const display_font_t font, const char *format, ...) {
	va_list valist;
	va_start(valist, format);

	char buffer[22] = {0};
	vsnprintf(buffer, 22, format, valist);

	const size_t n = strlen(buffer);

	for(size_t i=0; i<n; i++) {
		character(x + i*font.width, y, color, font, buffer[i]);
	}
}
