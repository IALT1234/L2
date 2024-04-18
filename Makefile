# makfile configuration

COMMON_OBJECTS  =

CPU             = msp430g2553

CFLAGS          = -mmcu=${CPU} -I../h -L/opt/ti/msp430_gcc/include



#switch the compiler (for the internal make rules)

CC              = msp430-elf-gcc

AS              = msp430-elf-as



all: buzzer.elf

#additional rules for files

buzzer.elf: ${COMMON_OBJECTS} buzzer.o lab2_main.o ../demos/lib/libTimer.a

	${CC} ${CFLAGS} -o $@ $^



load: buzzer.elf

	msp430loader.sh  $^
clean:

	rm -f *.o *.elf



buzzer.o: buzzer.c buzzer.h libTimer.h

lab2_main.o: lab2_main.c buzzer.h a_chorus.h libTimer.h a_chorus.s

	${CC} ${CFLAGS} -c -o $@ $<
