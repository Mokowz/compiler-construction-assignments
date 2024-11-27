%{
  /* Header Section - Define the header file and global variables */
#include <stdio.h>
int wordCount = 0;
int totalSize = 0;
%}

%%
[a-zA-Z]+                { wordCount++; totalSize += yyleng; }
[a-zA-Z]+[-'][a-zA-Z]+   { wordCount++; totalSize += yyleng; }
.|\n                     { totalSize++; }
%%

int main() {
  yylex();
  printf("Total number of words in file: %d\n", wordCount);
  printf("Total size of file: %d\n", totalSize);

  return 0;
}

int yywrap() {
  return 1;
}