# avr-assembly-examples
a collection of asm and c programs to run on an atmega328p avr microcontroller using the avr-libc compiler

Ex1: seperate C and ASM source files. C program calls asm function called io_init which sets pins D2 and D3 as outputs and sets D2 high. 
After returning from the asm function the c program will blink the led on pin D3.

Ex2 : Test of passing arguments to an assembly function in a c program. Visit https://gcc.gnu.org/wiki/avr-gcc for info on how the 
calling convention works
