
//template from https://en.cppreference.com/w/c/numeric/fenv/feround

#include <stdio.h>
#include <math.h>
#include <fenv.h>
#include <iostream>
#include <iomanip> 

#pragma STDC FENV_ACCESS ON
void show_fe_current_rounding_direction(void)
{
    printf("current rounding direction:  ");
    switch (fegetround()) {
           case FE_TONEAREST:  printf ("FE_TONEAREST");  break;
           case FE_DOWNWARD:   printf ("FE_DOWNWARD");   break;
           case FE_UPWARD:     printf ("FE_UPWARD");     break;
           case FE_TOWARDZERO: printf ("FE_TOWARDZERO"); break;
           default:            printf ("unknown");
    };
    printf("\n");
}
 
 
int main(void)
{

   //test natural precision
   float abc = 0.1111111111111111111111111111111111111111111111;
   std::cout<<abc<<"\n";
   std::cout<<std::setprecision(50);
   std::cout<<abc<<"\n";
   //natural precision 6, seems to cut to random numbers after 9

   std::cout<<std::setprecision(5);

   float test = 0.111115;

   //test - round towards +infinity
   fesetround(FE_DOWNWARD);
   show_fe_current_rounding_direction();
   std::cout<<test<<"\n";

   //test - round towards -infinity
   fesetround(FE_UPWARD);
   show_fe_current_rounding_direction();
   std::cout<<test<<"\n";
    
 
    return 0;
}