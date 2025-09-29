%{
#include <stdio.h>
%}

%%
[0-9]+              { printf("Integer: %s\n", yytext); }
[0-9]+\.[0-9]+      { printf("Decimal: %s\n", yytext); }
[a-zA-Z]+           { printf("Word: %s\n", yytext); }
.|\n                { /* Ignore other characters */ }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}