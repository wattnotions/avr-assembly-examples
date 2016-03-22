avr-gcc -g -Os -mmcu=atmega328p -c my_asm.S main.c
if %errorlevel% neq 0 exit /b %errorlevel%

avr-gcc -g -mmcu=atmega328p -o main.elf main.o my_asm.o
if %errorlevel% neq 0 exit /b %errorlevel%

avr-objcopy -j .text -j .data -O ihex main.elf out.hex 
if %errorlevel% neq 0 exit /b %errorlevel%

avrdude -p atmega328p -c usbtiny -e -U flash:w:out.hex
if %errorlevel% neq 0 exit /b %errorlevel%