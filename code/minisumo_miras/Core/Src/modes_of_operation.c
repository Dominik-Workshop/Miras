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

#define SENSING_DISTANCE 		400	//mm
#define DIRECT_CONTACT_DISTANCE 150	//mm
#define LINE_BORDER 			3900
#define TURNING_TIME 	 		200	//ms
#define BACKING_UP_TIME  		100	//ms
#define MAX_SPEED				60	//0 - 100

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

		if(TOF2.RangingData.RangeStatus == 0){
			display_printf(10, 30, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF2.RangingData.RangeMilliMeter);
		}

		if(TOF3.RangingData.RangeStatus == 0){
			display_printf(32, 20, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF3.RangingData.RangeMilliMeter);
		}

		if(TOF4.RangingData.RangeStatus == 0){
			display_printf(72, 20, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF4.RangingData.RangeMilliMeter);
		}

		if(TOF5.RangingData.RangeStatus == 0){
			display_printf(100, 30, DISPLAY_COLOR_WHITE, display_font_6x8, "%i", TOF5.RangingData.RangeMilliMeter);
		}

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

	int8_t speed_diff = 30;

	motor_L_set_direction(FORWARD);
	motor_R_set_direction(FORWARD);

	if(HAL_GPIO_ReadPin(SW3_GPIO_Port, SW3_Pin))
		speed_diff = -30;

	motor_L_set_speed(40 - speed_diff);
	motor_R_set_speed(40 + speed_diff);

	while((TOF3.RangingData.RangeMilliMeter > SENSING_DISTANCE) && (TOF4.RangingData.RangeMilliMeter > SENSING_DISTANCE)){
		if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
			break;
		check_line();
	}

	motor_L_set_speed(MAX_SPEED);
	motor_R_set_speed(MAX_SPEED);

	while(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 1){

		motor_L_set_direction(FORWARD);
		motor_R_set_direction(FORWARD);

		//both are detecting far
		if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF3.RangingData.RangeStatus == 0) && (TOF4.RangingData.RangeStatus == 0)){
			motor_L_set_speed(MAX_SPEED);
			motor_R_set_speed(MAX_SPEED);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
			check_line();
		}
		//both are detecting close
		if((TOF3.RangingData.RangeMilliMeter < DIRECT_CONTACT_DISTANCE) && (TOF4.RangingData.RangeMilliMeter < DIRECT_CONTACT_DISTANCE) && (TOF3.RangingData.RangeStatus == 0) && (TOF4.RangingData.RangeStatus == 0)){
			motor_L_set_speed(100);
			motor_R_set_speed(100);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
		}
		//left center is detecting
		else if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF3.RangingData.RangeStatus == 0)){
			motor_L_set_speed(0 + TOF3.RangingData.RangeMilliMeter / (SENSING_DISTANCE/80));
			motor_R_set_speed(80);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
			check_line();
		}
		//right center is detecting
		else if((TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF4.RangingData.RangeStatus == 0)){
			motor_L_set_speed(80);
			motor_R_set_speed(0 + TOF4.RangingData.RangeMilliMeter / (SENSING_DISTANCE/80));
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
			check_line();
		}
		//left is detecting
		else if((TOF2.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF2.RangingData.RangeStatus == 0)){
			motor_L_set_direction(BACKWARD);
			motor_L_set_speed(TOF2.RangingData.RangeMilliMeter / (SENSING_DISTANCE/40));
			motor_R_set_speed(80);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
			check_line();
		}
		//right is detecting
		else if((TOF5.RangingData.RangeMilliMeter < SENSING_DISTANCE) && (TOF5.RangingData.RangeStatus == 0)){
			motor_R_set_direction(BACKWARD);
			motor_L_set_speed(80);
			motor_R_set_speed(TOF5.RangingData.RangeMilliMeter / (SENSING_DISTANCE/40));
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_SET);
			check_line();
		}
		//none are detecting
		else{
			motor_L_set_speed(MAX_SPEED);
			motor_R_set_speed(MAX_SPEED);
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, GPIO_PIN_RESET);
			check_line();
		}
		HAL_Delay(1);
	}

	motor_L_set_speed(0);
	motor_R_set_speed(0);
	HAL_GPIO_WritePin(LS_ON_GPIO_Port, LS_ON_Pin, GPIO_PIN_RESET);
}

void check_line(){
	if(values_adc[KTIR_FRONT_LEFT] < LINE_BORDER){
		motor_L_set_direction(BACKWARD);
		motor_R_set_direction(BACKWARD);
		motor_L_set_speed(MAX_SPEED);
		motor_R_set_speed(MAX_SPEED);
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
			if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) || (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE))
				break;
			HAL_Delay(1);
		}
	}
	if(values_adc[KTIR_FRONT_RIGHT] < LINE_BORDER){
		motor_L_set_direction(BACKWARD);
		motor_R_set_direction(BACKWARD);
		motor_L_set_speed(MAX_SPEED);
		motor_R_set_speed(MAX_SPEED);
		for(int i = 0; i < BACKING_UP_TIME; ++i){
			if(values_adc[KTIR_BACK] < LINE_BORDER)
				break;
			if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
				break;
			HAL_Delay(1);
		}
		motor_R_set_direction(FORWARD);
		for(int i = 0; i < TURNING_TIME; ++i){
			HAL_GPIO_WritePin(user_LED_GPIO_Port, user_LED_Pin, 0);
			if(HAL_GPIO_ReadPin(starter_GPIO_Port, starter_Pin) == 0)
				break;
			if((TOF3.RangingData.RangeMilliMeter < SENSING_DISTANCE) || (TOF4.RangingData.RangeMilliMeter < SENSING_DISTANCE))
				break;
			HAL_Delay(1);
		}
	}
}
