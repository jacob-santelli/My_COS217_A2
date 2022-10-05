#include "str.h"
#include <stdio.h>


size_t Str_getLength(const char *pcSrc)
{
   const char *pcEnd;
   assert(pcSrc != NULL);
   pcEnd = pcSrc;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - pcSrc);
}

char *Str_copy(char *pcDest, const char *pcSrc)
{
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
}

char *Str_concat(char *pcDest, const char *pcSrc) 
{
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
}

int Str_compare(const char *pcS1, const char *pcS2) 
{
   assert(pcS1 != NULL);
   assert(pcS2 != NULL);
}

char *Str_search(const char *pcHaystack, const char *pcNeedle) 
{
   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);
}
