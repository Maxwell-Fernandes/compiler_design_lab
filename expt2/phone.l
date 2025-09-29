%{
#include <stdio.h>
%}

%%
\+91[ ]?[0-9]{10}           { printf("Indian phone number: %s\n", yytext); }
\+91-[0-9]{10}              { printf("Indian phone number: %s\n", yytext); }
.|\n                        { }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}