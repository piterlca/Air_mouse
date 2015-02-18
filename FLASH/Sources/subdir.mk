################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Events.c" \
"../Sources/MPU-6050.c" \
"../Sources/main.c" \
"../Sources/program.c" \
"../Sources/sa_mtb.c" \

C_SRCS += \
../Sources/Events.c \
../Sources/MPU-6050.c \
../Sources/main.c \
../Sources/program.c \
../Sources/sa_mtb.c \

OBJS += \
./Sources/Events.o \
./Sources/MPU-6050.o \
./Sources/main.o \
./Sources/program.o \
./Sources/sa_mtb.o \

C_DEPS += \
./Sources/Events.d \
./Sources/MPU-6050.d \
./Sources/main.d \
./Sources/program.d \
./Sources/sa_mtb.d \

OBJS_QUOTED += \
"./Sources/Events.o" \
"./Sources/MPU-6050.o" \
"./Sources/main.o" \
"./Sources/program.o" \
"./Sources/sa_mtb.o" \

C_DEPS_QUOTED += \
"./Sources/Events.d" \
"./Sources/MPU-6050.d" \
"./Sources/main.d" \
"./Sources/program.d" \
"./Sources/sa_mtb.d" \

OBJS_OS_FORMAT += \
./Sources/Events.o \
./Sources/MPU-6050.o \
./Sources/main.o \
./Sources/program.o \
./Sources/sa_mtb.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/Events.o: ../Sources/Events.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/Events.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/Events.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/MPU-6050.o: ../Sources/MPU-6050.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/MPU-6050.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/MPU-6050.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/main.o: ../Sources/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/main.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/main.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/program.o: ../Sources/program.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/program.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/program.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/sa_mtb.o: ../Sources/sa_mtb.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/sa_mtb.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/sa_mtb.o"
	@echo 'Finished building: $<'
	@echo ' '


