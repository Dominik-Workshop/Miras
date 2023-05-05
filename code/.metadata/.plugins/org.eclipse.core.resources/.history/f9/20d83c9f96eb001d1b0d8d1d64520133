/**
 * @file battery.h
 * @author Dominik
 * @brief
 * @version 0.1
 * @date 2023-04-29
 *
 * @copyright Copyright (c) 2023
 *
 */

#ifndef BATTERY_H
#define BATTERY_H

#include "stdint.h"
#include "moving_average_filter.h"

typedef struct{
	uint16_t adc_reading;		// 0-4095
	float voltage;				// V
	uint8_t fill_level;			// %
	MovingAverage adc_average;
} Battery;

float calculateBatteryVoltage(Battery *);

#endif
