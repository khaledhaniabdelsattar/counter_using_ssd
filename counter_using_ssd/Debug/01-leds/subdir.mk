################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../01-leds/led_interface.c 

OBJS += \
./01-leds/led_interface.o 

C_DEPS += \
./01-leds/led_interface.d 


# Each subdirectory must supply rules for building sources it contributes
01-leds/%.o: ../01-leds/%.c 01-leds/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\nti\inerfacing\tasks\seb7a\03-interrupt" -I"E:\nti\inerfacing\tasks\seb7a\01-leds" -I"E:\nti\inerfacing\tasks\seb7a\LIBIRARYS" -I"E:\nti\inerfacing\tasks\seb7a\01-DIO" -I"E:\nti\inerfacing\tasks\seb7a\05-SSD" -I"E:\nti\inerfacing\tasks\seb7a\04-ex_interrupt" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


