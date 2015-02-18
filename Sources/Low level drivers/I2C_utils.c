/*
 * I2C0_utils.c
 *
 *  Created on: Feb 6, 2015
 *      Author: Piotr
 */

#include "I2C_utils.h"
#include "PE_LDD.h"
#include "I2C0.h"
#include "program.h"

I2C_desc I2C0;

void I2C_init()
{
	I2C0.ID = I2C0_Init(I2C0.ID);	
	I2C0.IsDataTransmitted = FALSE;
	I2C0.IsDataReceived = FALSE; 
	I2C0.TimeoutFlag = FALSE;
	I2C0.OutputBuffer[0] = I2C0.InputBuffer[0] = 0;
	I2C0.IsEnabled = TRUE;
}

void I2C_send(int NumberOfBytes, bool SendStop)
{
	if(I2C0.IsEnabled == FALSE)	return;
	
	I2C0.ErrorStatus = I2C0_MasterSendBlock(I2C0.ID, I2C0.InputBuffer, NumberOfBytes, SendStop == TRUE? LDD_I2C_SEND_STOP : LDD_I2C_NO_SEND_STOP);
	
	if(I2C0.ErrorStatus == ERR_BUSY)
	{
		return;
	}
	
	while(I2C0.IsDataTransmitted == FALSE)
	{
		if(I2C0.TimeoutFlag == TRUE)
		{
			I2C_reset(&I2C0);
			break;
		}
	}	
	
	I2C0.TimeoutFlag = FALSE;
	I2C0.IsDataTransmitted = FALSE;

}

void I2C_recv(int NumberOfBytes, bool SendStop)
{
	if(I2C0.IsEnabled == FALSE)	return;
	
	I2C0.ErrorStatus = I2C0_MasterReceiveBlock(I2C0.ID, I2C0.OutputBuffer, NumberOfBytes,  SendStop == TRUE? LDD_I2C_SEND_STOP : LDD_I2C_NO_SEND_STOP);
	
	if(I2C0.ErrorStatus == ERR_BUSY)
	{
		return;
	}
	
	while(I2C0.IsDataReceived == FALSE)
	{
		if(I2C0.TimeoutFlag == TRUE)
		{
			I2C_reset(&I2C0);
			break;
		}
	}										
	
	I2C0.TimeoutFlag = FALSE;
	I2C0.IsDataReceived = FALSE;
}

void I2C_reset(I2C_desc* devicePtr)
{
	if(devicePtr->IsEnabled == TRUE)
	{
		I2C0_Deinit(devicePtr);
	}
	
	I2C_init(devicePtr);
	
}

/*Here's a problem. Although the program does not freeze after I2C timeout (which, literally, Can happen), 
 * Logic analyzer revealed, that the STOP condition is not sent after a timeout, so a new I2C transmission cannot begin.
 * A simple (but not necessarily easy) solution would be to manually generate STOP after a timeout. 
 * Now the key is to write a proper code.
 * Ok, the problem occurs, when NAK is received after a byte which is not set to be followed by STOP condition.
 * But it's not the only reason. Transmission can freeze for any purpose, to be honest.
 * The only reasonable solution would be to terminate & reset transmission on timeout.
 * And that's what we're gonna do, nigga!
 */

