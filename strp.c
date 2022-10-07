/* Module defining a number of String functions with pointer notation */

#include "str.h"
#include <stdio.h>
#include <assert.h>


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
   char * temp;
   assert(pcDest != NULL);
   assert(pcSrc != NULL);
   temp = pcDest;
   while (*pcSrc != '\0') {
      *temp = *pcSrc;
      temp++;
      pcSrc++;
   }
   *temp = '\0';
   return pcDest;
}

char *Str_concat(char *pcDest, const char *pcSrc) 
{
   char * temp;
   assert(pcDest != NULL);
   assert(pcSrc != NULL);

   temp = pcDest;

   while (*temp != '\0') {
      temp++;
   }
   
   while (*pcSrc != '\0') {
      *temp = *pcSrc;
      temp++;
      pcSrc++;
   }
  
   *temp = '\0';
   return pcDest;
}

int Str_compare(const char *pcS1, const char *pcS2) 
{
   assert(pcS1 != NULL);
   assert(pcS2 != NULL);


   while (*pcS1 != '\0') {
      if (*pcS1 > *pcS2) {
         return 1;
      }
      else if (*pcS1 < *pcS2) {
         return -1;
      }
      pcS1++;
      pcS2++;
      if ((*pcS1 == '\0') && (*pcS2 == '\0')) {
         return 0;
      }
   }

   if (*pcS2 == '\0') return 0;
   return -1;
}

char *Str_search(const char *pcHaystack, const char *pcNeedle) 
{
   /* intialize variables and assert that parameters are not NULL */
   char * firstChar;
   char * tempHaystack;
   char * tempNeedle;
   int mismatch = 0;
   
   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);

   firstChar = (char*) pcHaystack;
   tempNeedle = (char*) pcNeedle;
   tempHaystack = (char*) pcHaystack;

   /* corner case if first character null */
   if (pcNeedle[0] == '\0') {
      return firstChar;
   }

   /* iterate through the haystack, checking for matches to needle */
   while (*pcHaystack != '\0') {
      if (*pcHaystack == pcNeedle[0]) {
         while(*tempNeedle != '\0') {
            if (*tempHaystack != *tempNeedle) {
               mismatch = 1;
               break;
            }
            tempNeedle++;
            tempHaystack++;
         }
         if (mismatch == 0) return firstChar;
      }
      mismatch = 0;
      tempNeedle = (char*) pcNeedle;
      firstChar++;
      pcHaystack++;
      tempHaystack = (char*) pcHaystack;
   }

   return NULL;


}