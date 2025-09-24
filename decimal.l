%{
#include<stdio.h>
%}

%%
[0-9]+ {
    long long decimal_value = atoll(yytext);
    printf("Decimal value : %s  -> Hexadecimal : 0x%llX\n",yytext,decimal_value);
}
.|\n {
    printf("Not a number %s\n",yytext);
}


%%

int main(){
yylex();
}

int yywrap()
{
return 0;
}