#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>

extern void io_init(void);   //asm function

int main (void)
{
    
    io_init();
    while(1) 
    {
        PORTD ^= _BV(3);
        _delay_ms(500);
    }
}