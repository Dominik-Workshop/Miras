################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/VL53L0X.c \
../Core/Src/battery.c \
../Core/Src/display.c \
../Core/Src/display_fonts.c \
../Core/Src/main.c \
../Core/Src/moving_average.c \
../Core/Src/sprites.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/VL53L0X.o \
./Core/Src/battery.o \
./Core/Src/display.o \
./Core/Src/display_fonts.o \
./Core/Src/main.o \
./Core/Src/moving_average.o \
./Core/Src/sprites.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/VL53L0X.d \
./Core/Src/battery.d \
./Core/Src/display.d \
./Core/Src/display_fonts.d \
./Core/Src/main.d \
./Core/Src/moving_average.d \
./Core/Src/sprites.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/projects/minisumo/code/minisumo_miras/Drivers/VL53L0X/core/inc" -I"E:/projects/minisumo/code/minisumo_miras/Drivers/VL53L0X/platform/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/VL53L0X.d ./Core/Src/VL53L0X.o ./Core/Src/VL53L0X.su ./Core/Src/battery.d ./Core/Src/battery.o ./Core/Src/battery.su ./Core/Src/display.d ./Core/Src/display.o ./Core/Src/display.su ./Core/Src/display_fonts.d ./Core/Src/display_fonts.o ./Core/Src/display_fonts.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/moving_average.d ./Core/Src/moving_average.o ./Core/Src/moving_average.su ./Core/Src/sprites.d ./Core/Src/sprites.o ./Core/Src/sprites.su ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-Src

