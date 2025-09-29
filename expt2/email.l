%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}   { printf("Email: %s\n", yytext); }
.|[a-zA-Z]+                                     { printf("not correct email %s\n", yytext); }
.|\n                                             { }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}