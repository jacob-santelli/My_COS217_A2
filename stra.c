#include "str.h"
#include <stdio.h>
#include <assert.h>
#include <string.h>


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
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
   while (pcSrc[srcLength] != '\0') {
      pcDest[srcLength] = pcSrc[srcLength];
      srcLength++;
   }
   pcDest[srcLength] = '\0';
   return pcDest;
}

char *Str_concat(char pcDest[], const char pcSrc[]) 
{
   size_t srcLength = 0;
   size_t destLength = 0;
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
   while (pcDest[destLength] != '\0') {
      destLength++;
   }
   
   while (pcSrc[srcLength] != '\0') {
      pcDest[destLength + srcLength] = pcSrc[srcLength];
      srcLength++;
   }
  
   pcDest[destLength + srcLength] = '\0';
   return pcDest;
}

int Str_compare(const char pcS1[], const char pcS2[]) 
{
   size_t s1Length = 0;
   assert(pcS1 != NULL);
   assert(pcS2 != NULL);


   while (pcS1[s1Length] != '\0') {
      if (pcS1[s1Length] > pcS2[s1Length]) {
         return 1;
      }
      else if (pcS1[s1Length] < pcS2[s1Length]) {
         return -1;
      }
      else if ((pcS1[s1Length + 1] == '\0') && (pcS2[s1Length + 1] == '\0')) {
         return 0;
      }
   s1Length++;
   }

   if (pcS2[s1Length] == '\0') return 0;
   return -1;
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) 
{
   size_t haystackLength = 0;
   size_t needleLength = 0;
   char* firstChar;

   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);

   firstChar = (char*) pcHaystack;
   if (pcNeedle[0] == '\0') return firstChar;

   while (pcHaystack[haystackLength] != '\0') {
      if (pcHaystack[haystackLength] == pcNeedle[0]) {
         while(pcNeedle[needleLength] != '\0') {
            if (pcHaystack[haystackLength + needleLength] != pcNeedle[needleLength]) {
               goto mismatch;
            }
            needleLength++;
         }
         return firstChar;
      }
      mismatch:
      needleLength = 0;
      firstChar++;
      haystackLength++;
   }

   return NULL;
}