#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
   int seed;

   seed = atoi(argv[1]);
   
   srand(seed);
   
   printf("%d\n", rand());
   
   return 0;
}
