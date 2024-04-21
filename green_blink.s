	.arch msp430g2553

	.p2align 1,0

	.text



	.global greenControl

	.extern P1OUT



greenControl:

	cmp #0, r12

	jz off

	bis #BIT6, &P1OUT	; Set P1.6 (green LED) high to turn it on

	pop r0

off:		and #~BIT6, &P1OUT ; Clear P1.6 (green LED) to turn it off

	pop r0
