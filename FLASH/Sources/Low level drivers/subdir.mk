################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Low level drivers/I2C_utils.c" \

C_SRCS += \
../Sources/Low\ level\ drivers/I2C_utils.c \

OBJS += \
./Sources/Low\ level\ drivers/I2C_utils.o \

C_DEPS += \
./Sources/Low\ level\ drivers/I2C_utils.d \

OBJS_QUOTED += \
"./Sources/Low level drivers/I2C_utils.o" \

C_DEPS_QUOTED += \
"./Sources/Low level drivers/I2C_utils.d" \

OBJS_OS_FORMAT += \
./Sources/Low\ level\ drivers/I2C_utils.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/Low\ level\ drivers/I2C_utils.o: ../Sources/Low\ level\ drivers/I2C_utils.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/Low level drivers/I2C_utils.args" -MMD -MP -MF"Sources/Low level drivers/I2C_utils.d" -o"Sources/Low level drivers/I2C_utils.o"
	@echo 'Finished building: $<'
	@echo ' '


