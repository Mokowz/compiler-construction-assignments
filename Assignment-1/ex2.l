%{
  #include <stdio.h>
%}

%%
(abc)$   {printf("ABC");}
%%

int main() {
  yylex();

  return 0;
}

int yywrap() { 
  printf("\n");
  return 1; 
}