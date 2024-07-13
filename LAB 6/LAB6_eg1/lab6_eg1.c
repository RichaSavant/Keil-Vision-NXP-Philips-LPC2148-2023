//Program to turn on an LED connected to P0.10

#include <LPC21xx.H>

int main()
{
	//shifting '1' 10 positions to the left. (all other bits 0)
	IODIR0 |= (1<<10); //or each bit with 0 (from IODIR0) --> makes the 10th pin an output pin
	
	while(1) //infinite loop
	{
	IOSET0 |= (1<<10);	 //sending 'HIGH' signal
	}
	return (0);
}