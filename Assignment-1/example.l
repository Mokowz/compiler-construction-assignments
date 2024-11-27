%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
%}

%%
[0-9]+ { 
  printf("Number: %s\n", yytext); 
}

%%

int main() {
  // Call the lexer
  yylex(); 

  return 0;
}