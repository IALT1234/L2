#include "msp430.h"



#define A  2272
#define E  3024
#define D  1702
#define G  2551
#define B  2028
#define F 2863
#define C3  3816
#define PAUSE 0

#define delay_cycles __delay_cycles

	;;  Function prototypes

	.sect ".text:buzzer_init"
main:			; Configure clocks

	mov.w   #WDTPW, r15

	bis.w   #WDTHOLD, r15

	mov.w   r15, &WDTCTL

	bis.w   #0x0080, &P1DIR	; P1.7 output

	call    #configureClocks



	;;  Initialize buzzer

	call    #buzzer_init



	;;  Play "Yellow Submarine"

	call    #play_song

	mov.w   #__stack_end, SP


        ;;  Configure clocks

	mov.w   #WDTPW, r15

	bis.w   #WDTHOLD, r15

	mov.w   r15, &WDTCTL

	bis.w   #0x0080, &P1DIR	; P1.7 output


	call    #configureClocks


	;;  Initialize buzzer

	call    #buzzer_init


buzzer_init:

	bis.w   #0x0080, &P1DIR	; P1.7 output

	ret



	.sect ".text:buzzer_set_period"

buzzer_set_period:

	mov.w   r15, r13 ; Copy cycles to CCR0

	mov.w   r15, r14 ; Copy cycles to CCR1

	rrc     r14	; CCR1 = cycles >> 1

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

	rrc     r14

        ret
	
        .sect ".text:main"

	.global main

        .sect ".text:play_note_A"

play_note_A:

	mov.w   #A, r15

	call    #buzzer_set_period

	mov.w   2000, r15
	
delay_loop_A:

	dec     r15

	jne     delay_loop_A

	ret

	
	
play_chorus:

        call    #play_note_A

	;;  Add calls for other notes as needed

	ret
	
	        .sect ".text:play_song"

