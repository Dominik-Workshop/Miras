/**
 * @file vl53l0_init.h
 * @author Dominik
 * @brief
 * @version 0.1
 * @date 2023-05-3
 *
 * @copyright Copyright (c) 2023
 *
 */

#ifndef VL53L0_HH
#define VL53L0_HH

#include "vl53l0x_api.h"

typedef struct{
	VL53L0X_RangingMeasurementData_t RangingData;
	VL53L0X_Dev_t  vl53l0x_c; // center module
	//VL53L0X_DEV    Dev;
}TOF_VL53L0X;

void tof_vl53l0_init(VL53L0X_DEV Dev, uint8_t *pVhvSettings, uint8_t *pPhaseCal, uint32_t *refSpadCount, uint8_t *isApertureSpads);

#endif