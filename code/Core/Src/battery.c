/**
 * @file battery.c
 * @author Dominik
 * @brief
 * @version 0.1
 * @date 2023-04-29
 *
 * @copyright Copyright (c) 2023
 *
 */

#include "battery.h"

/*
void batteryInit(Battery battery, ADC_HandleTypeDef hadc1){
	HAL_ADC_Start_DMA(&hadc1, (uint16_t *) &(battery.adc_reading), 1);
}
*/

/**
 * @brief calculates battery voltage based on the averaged out value from the ADC
 *
 * @param battery
 * @return float calculated voltage
 */
float calculateBatteryVoltage(Battery* battery){
	calculateAverage(&(battery->adc_average), battery->adc_reading);
	battery->voltage = battery->adc_average.average * U_REF / RESOLUTION * (R7 + R8) / R8;
	return battery->voltage;
}
