################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Generated_Code/CS1.c" \
"../Generated_Code/Cpu.c" \
"../Generated_Code/CsIO1.c" \
"../Generated_Code/I2C0.c" \
"../Generated_Code/IO1.c" \
"../Generated_Code/PE_LDD.c" \
"../Generated_Code/RNG1.c" \
"../Generated_Code/TI1.c" \
"../Generated_Code/TU1.c" \
"../Generated_Code/TimerIntLdd1.c" \
"../Generated_Code/Vectors.c" \
"../Generated_Code/WAIT1.c" \

C_SRCS += \
../Generated_Code/CS1.c \
../Generated_Code/Cpu.c \
../Generated_Code/CsIO1.c \
../Generated_Code/I2C0.c \
../Generated_Code/IO1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/RNG1.c \
../Generated_Code/TI1.c \
../Generated_Code/TU1.c \
../Generated_Code/TimerIntLdd1.c \
../Generated_Code/Vectors.c \
../Generated_Code/WAIT1.c \

OBJS += \
./Generated_Code/CS1.o \
./Generated_Code/Cpu.o \
./Generated_Code/CsIO1.o \
./Generated_Code/I2C0.o \
./Generated_Code/IO1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/RNG1.o \
./Generated_Code/TI1.o \
./Generated_Code/TU1.o \
./Generated_Code/TimerIntLdd1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \

C_DEPS += \
./Generated_Code/CS1.d \
./Generated_Code/Cpu.d \
./Generated_Code/CsIO1.d \
./Generated_Code/I2C0.d \
./Generated_Code/IO1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/RNG1.d \
./Generated_Code/TI1.d \
./Generated_Code/TU1.d \
./Generated_Code/TimerIntLdd1.d \
./Generated_Code/Vectors.d \
./Generated_Code/WAIT1.d \

OBJS_QUOTED += \
"./Generated_Code/CS1.o" \
"./Generated_Code/Cpu.o" \
"./Generated_Code/CsIO1.o" \
"./Generated_Code/I2C0.o" \
"./Generated_Code/IO1.o" \
"./Generated_Code/PE_LDD.o" \
"./Generated_Code/RNG1.o" \
"./Generated_Code/TI1.o" \
"./Generated_Code/TU1.o" \
"./Generated_Code/TimerIntLdd1.o" \
"./Generated_Code/Vectors.o" \
"./Generated_Code/WAIT1.o" \

C_DEPS_QUOTED += \
"./Generated_Code/CS1.d" \
"./Generated_Code/Cpu.d" \
"./Generated_Code/CsIO1.d" \
"./Generated_Code/I2C0.d" \
"./Generated_Code/IO1.d" \
"./Generated_Code/PE_LDD.d" \
"./Generated_Code/RNG1.d" \
"./Generated_Code/TI1.d" \
"./Generated_Code/TU1.d" \
"./Generated_Code/TimerIntLdd1.d" \
"./Generated_Code/Vectors.d" \
"./Generated_Code/WAIT1.d" \

OBJS_OS_FORMAT += \
./Generated_Code/CS1.o \
./Generated_Code/Cpu.o \
./Generated_Code/CsIO1.o \
./Generated_Code/I2C0.o \
./Generated_Code/IO1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/RNG1.o \
./Generated_Code/TI1.o \
./Generated_Code/TU1.o \
./Generated_Code/TimerIntLdd1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/CS1.o: ../Generated_Code/CS1.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/CS1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/CS1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Cpu.o: ../Generated_Code/Cpu.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Cpu.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Cpu.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/CsIO1.o: ../Generated_Code/CsIO1.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/CsIO1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/CsIO1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/I2C0.o: ../Generated_Code/I2C0.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/I2C0.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/I2C0.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/IO1.o: ../Generated_Code/IO1.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/IO1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/IO1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/PE_LDD.o: ../Generated_Code/PE_LDD.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/PE_LDD.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/PE_LDD.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/RNG1.o: ../Generated_Code/RNG1.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/RNG1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/RNG1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TI1.o: ../Generated_Code/TI1.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TI1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TI1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TU1.o: ../Generated_Code/TU1.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TU1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TU1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TimerIntLdd1.o: ../Generated_Code/TimerIntLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TimerIntLdd1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TimerIntLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Vectors.o: ../Generated_Code/Vectors.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Vectors.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Vectors.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/WAIT1.o: ../Generated_Code/WAIT1.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/WAIT1.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/WAIT1.o"
	@echo 'Finished building: $<'
	@echo ' '


