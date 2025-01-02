%{
#include <stdio.h>
extern int yylex();  // Declare yylex as an external function
extern int yyerror(char *s);  // Declare yyerror function
int count = 0;  // Variable to store the count of 'a'
%}

%token A B

%%

S:   A S     { count++; }   // For each 'a', increment count
   |   B     { /* Do nothing, just match 'b' */ }
   ;

%%

int main() {
    yyparse();  // Start the parsing process
    printf("Number of 'a's: %d\n", count);  // Output the count of 'a's
    return 0;
}

int yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}
