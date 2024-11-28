%{
  /* Header Section */
  #include <stdio.h>
%}

/* Rules Section */
%%

is|am|are|were            { printf("Verb: %s\n", yytext); }
was|being|be|been         { printf("Verb: %s\n", yytext); }
do|does|did|will          { printf("Verb: %s\n", yytext); }
would|should|can|could    { printf("Verb: %s\n", yytext); }
has|have|had|go           { printf("Verb: %s\n", yytext); }
.|\n                     {/* Do nothing */}
%%

int main() {
  yylex();  //Call the lexer to analyze the input

  return 0;
}

// End of input
int yywrap() {
  return 1;
}