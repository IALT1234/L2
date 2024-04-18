#include <msp430.h>
#include "libTimer.h"
#include "buzzer.h"
#include "a_chorus.h"


#define A 2272
#define E 3024
#define D 1702
#define G 2551
#define B 2028
#define F 2863
#define C3 3816
#define PAUSE 0


int main(){

  configureClocks();
  buzzer_init();
  
  void play_chorus();

  buzzer_set_period(B); __delay_cycles(2000000);//IN
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(C3); __delay_cycles(2000000);//THE
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(D); __delay_cycles(10000000);//TOWN
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//WHERE
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(A); __delay_cycles(2000000);//I
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//WAS
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(G); __delay_cycles(10000000);//BORN
  buzzer_set_period(PAUSE); __delay_cycles(8000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//NO
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//ONE
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(A); __delay_cycles(2000000);//CARED
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(G); __delay_cycles(2000000);//
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(E); __delay_cycles(10000000);//
  buzzer_set_period(PAUSE); __delay_cycles(2000000);
  
  buzzer_set_period(E); __delay_cycles(2000000);//NO
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//ONE
  buzzer_set_period(PAUSE); __delay_cycles(4000000);
  
  buzzer_set_period(B); __delay_cycles(2000000);//CARED
  buzzer_set_period(PAUSE); __delay_cycles(1000000);
  
  buzzer_set_period(A); __delay_cycles(8000000);//
  buzzer_set_period(PAUSE); __delay_cycles(1000000);

  play_chorus();  
}
