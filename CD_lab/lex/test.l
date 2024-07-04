%{
#include<stdio.h>

int count = 0;
%}
%%
[a-zA-z] {count++;}
\n return 0;
. ;
%%
int main()
{
    yylex();
    printf("%d\n", count);
}