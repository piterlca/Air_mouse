/*
 * I2C_utils.h
 *
 *  Created on: Feb 6, 2015
 *      Author: Piotr
 */

#ifndef I2C_UTILS_H_
#define I2C_UTILS_H_

#include "PE_Types.h"

typedef struct I2C_desc{
	LDD_TDeviceData* ID;
	volatile bool IsDataTransmitted;
	volatile bool IsDataReceived;
	volatile bool TimeoutFlag;
	unsigned char OutputBuffer[6];
	unsigned char InputBuffer[2];
	LDD_TError ErrorStatus;
}I2C_desc;

extern 	I2C_desc I2C0;

void I2C_init();

void I2C_send(int NumberOfBytes, bool SendStop);

void I2C_recv(int NumberOfBytes, bool SendStop);




#endif /* I2C_UTILS_H_ */
