/*
 * main.c
 *
 *  Created on: Jun 16, 2023
 *      Author: Khaled
 */

#include "dio_interfacing.h"
#include "ssd_interfacing.h"
#include "interrupt_interfacing.h"
#include "external_interrupt_interfacing.h"
#include "util/delay.h"
#include <avr/interrupt.h>
#include <stdio.h>
#include "led_interface.h"

u8 counter=0;
void interupt0_function()
{
	enable_interrupts();
	while(1)
	{

	}
//_delay_ms(250);
counter=0;


}
void interupt1_function()
{
	enable_interrupts();
toggle_led(led1);
	//_delay_ms(250);
counter++;


}

void main()
{
	calling_interrupt0(interupt0_function);
	calling_interrupt1(interupt1_function);
	enable_EXT_interrupt_channel(EXT_interrupt_INT0);
	enable_EXT_interrupt_channel(EXT_interrupt_INT1);
	sellect_EXT_interrupt_channel_mode(EXT_interrupt_INT0,falling_edge);
	sellect_EXT_interrupt_channel_mode(EXT_interrupt_INT1,falling_edge);

	enable_interrupts();
	leds_configuration();
ssd_init();
u8 flag=0;

while(1)
{

//if(flag==0)
//{
ssd_display(counter);
//flag=1;
//}
}
}
