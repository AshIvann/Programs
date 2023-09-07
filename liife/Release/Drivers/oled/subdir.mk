################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/oled/ssd1306.c \
../Drivers/oled/ssd1306_fonts.c \
../Drivers/oled/ssd1306_tests.c 

OBJS += \
./Drivers/oled/ssd1306.o \
./Drivers/oled/ssd1306_fonts.o \
./Drivers/oled/ssd1306_tests.o 

C_DEPS += \
./Drivers/oled/ssd1306.d \
./Drivers/oled/ssd1306_fonts.d \
./Drivers/oled/ssd1306_tests.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/oled/%.o Drivers/oled/%.su Drivers/oled/%.cyclo: ../Drivers/oled/%.c Drivers/oled/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-oled

clean-Drivers-2f-oled:
	-$(RM) ./Drivers/oled/ssd1306.cyclo ./Drivers/oled/ssd1306.d ./Drivers/oled/ssd1306.o ./Drivers/oled/ssd1306.su ./Drivers/oled/ssd1306_fonts.cyclo ./Drivers/oled/ssd1306_fonts.d ./Drivers/oled/ssd1306_fonts.o ./Drivers/oled/ssd1306_fonts.su ./Drivers/oled/ssd1306_tests.cyclo ./Drivers/oled/ssd1306_tests.d ./Drivers/oled/ssd1306_tests.o ./Drivers/oled/ssd1306_tests.su

.PHONY: clean-Drivers-2f-oled

