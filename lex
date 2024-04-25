Lex.l
%option noyywrap
%{
#include <stdio.h>
%}
%%
int|float { printf("DATATYPE: %s\n", yytext); }
if|else { printf("CONTROL FLOW: %s\n", yytext); }
[0-9]+ { printf("NUMBER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n] ; // Ignore whitespaces
. { printf("UNKNOWN: %s\n", yytext); }
%%
int main() {
yylex();
return 0;
}
