/* interface for string function modules */
#ifndef STR_INCLUDED
#define STR_INCLUDED
#include <stdio.h>

/* Return the length of String pcSrc */
size_t Str_getLength(const char pcSrc[]);

/* Copies String pcSrc into location pcDest, starting at the 
beginning of pcDest, and return pcDest */
char *Str_copy(char pcDest[], const char pcSrc[]);

/* Appends string pcSrc onto the end of String pcDest, and
returns pcDest */
char *Str_concat(char pcDest[], const char pcSrc[]);

/* Compare String pcS1 and pcS2, returning 1, if pcS1 is greater, 
-1 if pcS2 is greater, and 0 if the two are equal */
int Str_compare(const char pcS1[], const char pcS2[]);

/* Search through String pcHaystack for String pcNeedle, returning
the location of the first letter of a matched sequence, or NULL if
none is found */
char *Str_search(const char pcHaystack[], const char pcNeedle[]);
#endif