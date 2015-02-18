/*
 * program.h
 *
 *  Created on: Feb 6, 2015
 *      Author: Piotr
 */

#ifndef PROGRAM_H_
#define PROGRAM_H_

typedef enum {MEASURE, REPORT, IDLE} States;
extern States state;
extern States last_state;

void program();
#endif /* PROGRAM_H_ */
