/*
 * MPU-6050.h
 *
 *  Created on: Feb 6, 2015
 *      Author: Piotr
 */

#ifndef MPU_6050_H_
#define MPU_6050_H_



typedef struct MPUData{
	int16_t x;
	int16_t y;
	int16_t z;
}MPUData;

typedef struct MPUSensor{
	uint8_t ID;
	bool AccOn;
	bool GyroOn;
	MPUData* AccData;
	MPUData* GyroData;
}MPUSensor;

extern MPUData LatestAccData;

void MPU_Accelerometer();

void MPU_Gyroscope();

void MPU_init(bool AccOn, bool GyroOn, uint8_t SampleRateDivider);

void MPU_cycle();

void Print(MPUData* sensorData);

void ConvertToStructure(unsigned char* RawData, MPUData* mpudata);

#endif /* MPU_6050_H_ */


// You're gonna need:
// I2C
// UART
