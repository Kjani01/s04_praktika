#include <stdio.h>
#define LIM 100000

char* gpio_base = (char*) 0x91000000;

int main()
{
    printf("Rechnerarchitektur - de0_nano - light show starts...");
   
    char c;
    int i;
    int j = 1;

    //set direction to all out
    *(gpio_base+1) = 0xff;
 
   
	
    //wait    
    while(1){

      while (j < 256)
      {
          *(gpio_base+0) = j;
          j *= 2;
          for(i=0;i<LIM;i++);
      }  

      

      while (j > 0)
      {
          *(gpio_base+0) = j;
          j /= 2;
          for(i=0;i<LIM;i++);
          if (j == 1) break;
      }  


    }
  
}
