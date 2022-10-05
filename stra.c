#include "str.h"
#include <stdio.h>


size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;
   assert(pcSrc != NULL);
   while (pcSrc[uLength] != '\0')
      uLength++;
   return uLength;
}


char *Str_copy(char pcDest[], const char pcSrc[])
{
   size_t srcLength = 0;
   size_t destLength = 0;
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
   while (pcSrc[srcLength] != '\0')
      srcLength++;
   for (int i = 0; i < srcLength; i++) {
      pcDest[i] = pcSrc[i];
   }
   return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) 
{
   size_t srcLength = 0;
   size_t destLength = 0;
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
   while (pcSrc[srcLength] != '\0')
      srcLength++;
   while (pcDest[destLength] != '\0')
      destLength++;
   for (int i = 0; i < srcLength; i++) {
      pcDest[destLength + i] = pcSrc[i];
   }
   return pcDest;
}

int Str_compare(const char pcS1[], const char pcS2[]) 
{
   size_t s1Length = 0;
   assert(pcS1 != NULL);
   assert(pcS2 != NULL);

   while (pcS1[s1Length] != '\0')
      if (pcS1[s1Length] > pcS2[s1Length]) {
         return 1;
      }
      else if (pcS1[s1Length] < pcS2[s1Length]) {
         return -1;
      }
      else if (pcS1[s1Length + 1] == '\0' && pcS2[s1Length + 1] == '\0') 
      {
         return 0;`
      }
      s1Length++;
      
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) 
{
   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);
}