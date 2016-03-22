#define __SFR_OFFSET 0
#include <avr/io.h>     

.equ      OUTBIT,   0

.global io_init
io_init:
	
	
	ori    r20, 0b00001100         ;our '1' output
	out    DDRD, r20
	out    PORTD, r20	
	
	
	ret
