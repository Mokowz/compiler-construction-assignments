%{
#include <stdio.h>
#include "y.tab.h"  // Include the header file for YACC symbols
%}

%%

a   { return A; }  // Return token A for the character 'a'
b   { return B; }  // Return token B for the character 'b'

[ \t\n]+  // Skip whitespace characters

.   { /* Ignore any other characters */ }

%%

int yywrap() {
    return 1;  // Indicate the end of input
}
