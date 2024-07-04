%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%%
S:'a'S'b'|;
%%

int yyerror()
{
    printf("\nINVALID\n");
    exit(0);
}

int main()
{
    yyparse();
    printf("\nValid String\n");
}




