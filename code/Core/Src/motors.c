/**
 * @file motors.c
 * @author Dominik
 * @brief
 * @version 0.1
 * @date 2023-05-6
 *
 * @copyright Copyright (c) 2023
 *
 */

#include "motors.h"

/**
 * @brief
 *
 * @param speed 0-100
 */
void motor_L_set_speed(uint8_t speed){
	if(speed < 0)
		speed = 0;
	else if(speed > 100)
		speed = 100;
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_2, speed);
}

/**
 * @brief
 *
 * @param speed 0-100
 */
void motor_R_set_speed(uint8_t speed){
	if(speed < 0)
		speed = 0;
	else if(speed > 100)
		speed = 100;
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1, speed);
}

void motor_L_set_direction(motor_direction direction){
	switch(direction){
		case FORWARD:
			HAL_GPIO_WritePin(motor_L_DIR_1_GPIO_Port, motor_L_DIR_1_Pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(motor_L_DIR_2_GPIO_Port, motor_L_DIR_2_Pin, GPIO_PIN_SET);
			break;
		case BACKWARD:
			HAL_GPIO_WritePin(motor_L_DIR_1_GPIO_Port, motor_L_DIR_1_Pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(motor_L_DIR_2_GPIO_Port, motor_L_DIR_2_Pin, GPIO_PIN_RESET);
			break;
	}
}

void motor_R_set_direction(motor_direction direction){
	switch(direction){
		case FORWARD:
			HAL_GPIO_WritePin(motor_R_DIR_1_GPIO_Port, motor_R_DIR_1_Pin, GPIO_PIN_SET);
			HAL_GPIO_WritePin(motor_R_DIR_2_GPIO_Port, motor_R_DIR_2_Pin, GPIO_PIN_RESET);
			break;
		case BACKWARD:
			HAL_GPIO_WritePin(motor_R_DIR_1_GPIO_Port, motor_R_DIR_1_Pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(motor_R_DIR_2_GPIO_Port, motor_R_DIR_2_Pin, GPIO_PIN_SET);
			break;
	}
}

/**
 * @brief
 *
 * @param eangle 0-180
 */
void servo_set_eangle(uint8_t eangle){
	uint16_t pulse_duration;

	pulse_duration = MIN_PULSE_SERVO + ((eangle * STEP) / 1000);

	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, pulse_duration);
}
