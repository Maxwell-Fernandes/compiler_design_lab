%{
#include <stdio.h>
int line_num = 1;
%}

%%
.*\n   { printf("%d: %s", line_num++, yytext); }
.      { printf("%d: %s\n", line_num++, yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}