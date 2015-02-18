/*
 * program.c
 *
 *  Created on: Feb 6, 2015
 *      Author: Piotr
 */

#include "Low level drivers/I2C_utils.h"

#include "MPU-6050.h"
#include "program.h"
#include "TI1.h"

States state = IDLE;
States last_state = REPORT;

void program()
{
	WAIT1_Waitms(1000);
	
	I2C_init();
	
	MPU_init(FALSE, TRUE, 0x20);
	
	TI1_Enable();

	
	MPU_cycle();
}


