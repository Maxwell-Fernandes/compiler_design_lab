%{
#include<stdio.h>
%}

%%
[+-]?[0-9]+ {printf("%s is the Integer Constant", yytext);}
int |
while |
for |
do |
if {printf("%s is a keyword", yytext);}
%%

int main(){
yylex();
}

int yywrap()
{
return 0;
}