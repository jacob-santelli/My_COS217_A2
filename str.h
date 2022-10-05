#ifndef STR_INCLUDED
#define STR_INCLUDED
#include <stdio.h>
size_t Str_getLength(const char pcSrc[]);
char *Str_copy(char pcDest[], const char pcSrc[]);
char *Str_concat(char pcDest[], const char pcSrc[]);
int Str_compare(const char pcS1[], const char pcS2[]);
char *Str_search(const char pcHaystack[], const char pcNeedle[]);
#endif