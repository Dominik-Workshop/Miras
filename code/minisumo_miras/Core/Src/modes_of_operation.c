/**
 * @file modes_of_operation.c
 * @author Dominik
 * @brief
 * @version 0.1
 * @date 2023-05-7
 *
 * @copyright Copyright (c) 2023
 *
 */

#define SENSING_DISTANCE 400	//mm
#define LINE_BORDER 3950
#define TURNING_TIME 600		//ms
#define BACKING_UP_TIME 100		//ms
#define MAX_SPEED		 80		//0 - 100

#include "modes_of_operation.h"

void debug_screen(){
	while(HAL_GPIO_ReadPin(SW1_GPIO_Port, SW1_Pin) == 0){
		if(HAL_GPIO_ReadPin(SW2_GPIO_Port, SW2_Pin) == 1 )
			HAL_GPIO_WritePin(LS_ON_GPIO_Port, LS_ON_Pin, GPIO_PIN_SET);
		else
			HAL_GPIO_WritePin(LS_ON_GPIO_Port, LS_ON_Pin, GPIO_PIN_RESET);

		battery.adc_reading = values_adc[0];
		display_fill(DISPLAY_COLOR_BLACK);
		display_printf(50, 0, DISPLAY_COLOR_WHITE, display_font_6x8, "%.2fV", calculateBatteryVoltage(& battery));
		display_printf(0, 0, DISPLAY_COLOR_WHITE, display_font_6x8, "%d", (int) values_adc[KTIR_FRONT_LEFT]);
		display_printf(104, 00, DISPLAY_COLOR_WHITE, display_font_6x8, "%d", (int) values_adc[KTIR_FRONT_RIGHT]);
		display_printf(54, 56, DISPLAY_COLOR_WHITE, display_font_6x8, "%d", (int) values_adc[KTIR_BACK]);

		VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
		//if(TOF3.RangingData.RangeStatus == 0){
			display_printf(32, 20, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF3.RangingData.RangeMilliMeter);
		//}

		VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));
		//if(TOF4.RangingData.RangeStatus == 0){
				display_printf(72, 20, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF4.RangingData.RangeMilliMeter);
		//}

		display_render();
	}
}

void wait_for_fight_start(){
	display_fill(DISPLAY_COLOR_BLACK);
	display_bitmap(0, 0, DISPLAY_COLOR_WHITE, bitmap_konar_vertical_128_64, 128, 64);
	display_render();

	while(HAL_GPIO_ReadPin(SW1_GPIO_Port, SW1_Pin) == 1){
		if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin))
			fight();
	}
}

void fight(){
	servo_set_eangle(20);
	HAL_GPIO_WritePin(LS_ON_GPIO_Port, LS_ON_Pin, GPIO_PIN_SET);

	int8_t speed_diff = 50;

	motor_L_set_direction(FORWARD);
	motor_R_set_direction(FORWARD);

	if(HAL_GPIO_ReadPin(SW3_GPIO_Port, SW3_Pin))
		speed_diff = -50;

	motor_L_set_speed(50 + speed_diff);
	motor_R_set_speed(50 - speed_diff);
	VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
	VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));
	while((TOF3.RangingData.RangeMilliMeter > SENSING_DISTANCE) && (TOF4.RangingData.RangeMilliMeter > SENSING_DISTANCE)){
		if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
			break;
		VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
		VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));
	}

	motor_L_set_speed(100);
	motor_R_set_speed(100);

	while(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 1){
		motor_L_set_direction(FORWARD);
		motor_R_set_direction(FORWARD);
		VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
		VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));

		//both are detecting
		if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE)){
			motor_L_set_speed(100);
			motor_R_set_speed(100);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
		}
		//left is detecting
		else if(TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE){
			motor_L_set_speed(TOF3.RangingData.RangeMilliMeter / (SENSING_DISTANCE/100));
			motor_R_set_speed(100);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
		}
		//right is detecting
		else if(TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE){
			motor_L_set_speed(100);
			motor_R_set_speed(TOF4.RangingData.RangeMilliMeter / (SENSING_DISTANCE/100));
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
		}
		//none are detecting
		else if((TOF3.RangingData.RangeMilliMeter > SENSING_DISTANCE) && (TOF4.RangingData.RangeMilliMeter > SENSING_DISTANCE)){
			motor_L_set_speed(90);
			motor_R_set_speed(90);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_RESET);

			if(values_adc[KTIR_FRONT_LEFT] < LINE_BORDER){
				motor_L_set_direction(BACKWARD);
				motor_R_set_direction(BACKWARD);
				motor_L_set_speed(100);
				motor_R_set_speed(100);
				for(int i = 0; i < BACKING_UP_TIME; ++i){
					if(values_adc[KTIR_BACK] < LINE_BORDER)
						break;
					if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
						break;
					HAL_Delay(1);
				}
				motor_L_set_direction(FORWARD);
				for(int i = 0; i < TURNING_TIME; ++i){
					if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
						break;
					VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
					VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));
					if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) || (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE))
						break;
					HAL_Delay(1);
				}
			}
			if(values_adc[KTIR_FRONT_RIGHT] < LINE_BORDER){
				motor_L_set_direction(BACKWARD);
				motor_R_set_direction(BACKWARD);
				motor_L_set_speed(100);
				motor_R_set_speed(100);
				for(int i = 0; i < BACKING_UP_TIME; ++i){
					if(values_adc[KTIR_BACK] < LINE_BORDER)
						break;
					if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
						break;
					HAL_Delay(1);
				}
				motor_R_set_direction(FORWARD);
				for(int i = 0; i < TURNING_TIME; ++i){
					if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
						break;
					VL53L0X_PerformSingleRangingMeasurement(&(TOF3.vl53l0x_c), &(TOF3.RangingData));
					VL53L0X_PerformSingleRangingMeasurement(&(TOF4.vl53l0x_c), &(TOF4.RangingData));
					if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) || (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE))
						break;
					HAL_Delay(1);
				}
			}
		}
	}

	motor_L_set_speed(0);
	motor_R_set_speed(0);
	HAL_GPIO_WritePin(LS_ON_GPIO_Port, LS_ON_Pin, GPIO_PIN_RESET);
}