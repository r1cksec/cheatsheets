#include <stdio.h>
#include <locale.h>
#include <wchar.h>
 
// read UNICODE char by char
char *locale = setlocale(LC_ALL, "");
FILE *in = fopen("input.txt", "r");
FILE *out = fopen("output.txt", "w");

//wchar_t c;
wint_t c;
while ((c = fgetwc(in)) != WEOF)
    putwc(c, out);
fclose(in);

// declare and initiate UNICODE CHAR
wchar_t m1[] = L"Hello World";
wchar_t m2[42] = L"Hello World";
wchar_t * pm = L"Hello World";

// for printing use:
printf("%ls\n", L"üä");

