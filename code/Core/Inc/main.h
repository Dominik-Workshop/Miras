/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define TOF_X3_Pin GPIO_PIN_13
#define TOF_X3_GPIO_Port GPIOC
#define TOF_X2_Pin GPIO_PIN_14
#define TOF_X2_GPIO_Port GPIOC
#define TOF_X1_Pin GPIO_PIN_15
#define TOF_X1_GPIO_Port GPIOC
#define XTAL_Pin GPIO_PIN_0
#define XTAL_GPIO_Port GPIOH
#define XTALH1_Pin GPIO_PIN_1
#define XTALH1_GPIO_Port GPIOH
#define adc_line_sensor1_Pin GPIO_PIN_1
#define adc_line_sensor1_GPIO_Port GPIOC
#define adc_line_sensor2_Pin GPIO_PIN_2
#define adc_line_sensor2_GPIO_Port GPIOC
#define adc_line_sensor3_Pin GPIO_PIN_3
#define adc_line_sensor3_GPIO_Port GPIOC
#define SW4_Pin GPIO_PIN_4
#define SW4_GPIO_Port GPIOA
#define SW3_Pin GPIO_PIN_5
#define SW3_GPIO_Port GPIOA
#define motor_R_PWM_Pin GPIO_PIN_6
#define motor_R_PWM_GPIO_Port GPIOA
#define SW2_Pin GPIO_PIN_7
#define SW2_GPIO_Port GPIOA
#define SW1_Pin GPIO_PIN_4
#define SW1_GPIO_Port GPIOC
#define TOF_X6_Pin GPIO_PIN_5
#define TOF_X6_GPIO_Port GPIOC
#define motor_R_DIR_2_Pin GPIO_PIN_0
#define motor_R_DIR_2_GPIO_Port GPIOB
#define adc_bat_meas_Pin GPIO_PIN_1
#define adc_bat_meas_GPIO_Port GPIOB
#define motor_R_DIR_1_Pin GPIO_PIN_2
#define motor_R_DIR_1_GPIO_Port GPIOB
#define starter_Pin GPIO_PIN_12
#define starter_GPIO_Port GPIOB
#define user_LED_Pin GPIO_PIN_13
#define user_LED_GPIO_Port GPIOB
#define TOF_X5_Pin GPIO_PIN_14
#define TOF_X5_GPIO_Port GPIOB
#define TOF_X4_Pin GPIO_PIN_12
#define TOF_X4_GPIO_Port GPIOA
#define servo_Pin GPIO_PIN_15
#define servo_GPIO_Port GPIOA
#define LS_ON_Pin GPIO_PIN_11
#define LS_ON_GPIO_Port GPIOC
#define motor_L_PWM_Pin GPIO_PIN_5
#define motor_L_PWM_GPIO_Port GPIOB
#define motor_L_DIR_1_Pin GPIO_PIN_8
#define motor_L_DIR_1_GPIO_Port GPIOB
#define motor_L_DIR_2_Pin GPIO_PIN_9
#define motor_L_DIR_2_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
