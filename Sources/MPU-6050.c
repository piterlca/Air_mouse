#include "I2C0.h"
#include "Low level drivers/I2C_utils.h"
#include "MPU-6050.h"
#include "program.h"

#define STOP TRUE
#define NO_STOP FALSE

static const unsigned char MPUaddress = 0b1101000;

MPUSensor MPU6050;

static const enum{	
	INT_ENABLE = 0x38, 
	PWR_MGMT_1 = 0x6B, 
	PWR_MGMT_2 = 0x6C, 
	ACC_X_MSB = 0x3B, 
	GYRO_X_MSB = 0x43, 
	ACCEL_CONFIG = 0x1C,
	SMPRT_DIV = 0x19
} MPU_Registers;

void MPU_init(bool AccOn, bool GyroOn, uint8_t SampleRateDivider)
{
	MPU6050.ID = MPUaddress;
	if(	(MPU6050.AccOn = AccOn) == TRUE)
	{
		MPU6050.AccData = calloc(	1, sizeof(MPUData)	);
		printf("Accelerometer:\n");
	}
	
	if(	(MPU6050.GyroOn = GyroOn) == TRUE)	
	{
		MPU6050.GyroData = calloc(	1, sizeof(MPUData)	);
		printf("Gyroscope:\n");
	}
	

	
	I2C0_SelectSlaveDevice(I2C0.ID, LDD_I2C_ADDRTYPE_7BITS, MPU6050.ID);

	I2C0.InputBuffer[0] = PWR_MGMT_1;
	I2C0.InputBuffer[1] = 0x00;	// Operating mode = NORMAL
	I2C_send(2, NO_STOP);

	I2C0.InputBuffer[0] = SMPRT_DIV;
	I2C0.InputBuffer[1] = SampleRateDivider; 
	I2C_send(2, NO_STOP);
	
	I2C0.InputBuffer[0] = INT_ENABLE;
	I2C0.InputBuffer[1] = 0x01; //enable data_Rdy interrupt for testing
	I2C_send(2, STOP);

	
	I2C0.InputBuffer[0] = I2C0.InputBuffer[1] = 0;
}

void MPU_cycle()
{
	for(;;)
	{
		switch(state)
		{
			case MEASURE:
			{
				if(MPU6050.AccOn == TRUE)	MPU_Accelerometer();
				if(MPU6050.GyroOn == TRUE)	MPU_Gyroscope();
				last_state = state;
				state = IDLE;
				break;
			}

			case REPORT:
			{
				if(MPU6050.AccOn == TRUE)	Print(MPU6050.AccData);
				if(MPU6050.GyroOn == TRUE)	Print(MPU6050.GyroData);
				last_state = state;
				state = IDLE;
				break;
			}
			
			case IDLE:
				break;
		}
	}
}

void MPU_Accelerometer()
{
	I2C0_SelectSlaveDevice(I2C0.ID, LDD_I2C_ADDRTYPE_7BITS, MPUaddress);
	I2C0.InputBuffer[0] = ACC_X_MSB; 
	
	I2C_send(1, NO_STOP);
	
	I2C_recv(6, STOP);
	
	ConvertToStructure(I2C0.OutputBuffer, MPU6050.AccData);
}

void MPU_Gyroscope()
{
	I2C0_SelectSlaveDevice(I2C0.ID, LDD_I2C_ADDRTYPE_7BITS, MPUaddress);
	I2C0.InputBuffer[0] = GYRO_X_MSB; 
	
	I2C_send(1, NO_STOP);
	
	I2C_recv(6, STOP);
	
	ConvertToStructure(I2C0.OutputBuffer, MPU6050.GyroData);
}

void Print(MPUData* sensorData)
{
	printf("X=%d\tY=%d\tZ=%d\n", sensorData->x, sensorData->y, sensorData->z);	
}

void ConvertToStructure(unsigned char* RawData, MPUData* mpudata)
{
	mpudata->x = ( RawData[0] << 8 | RawData[1] );
	mpudata->y = ( RawData[2] << 8 | RawData[3] );
	mpudata->z = ( RawData[4] << 8 | RawData[5] );
}


