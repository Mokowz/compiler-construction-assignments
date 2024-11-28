%{
  #include <stdio.h>
%}

%%
abc             { printf("ABC"); }
.               { printf("%s", yytext); } //Print the rest as they are
%%

int main() {
  yylex();
  return 0;
}

int yywrap() {
  printf("\n");
  return 1;
}