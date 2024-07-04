%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
S: A B;
A:'a'A'b'|;
B:'b'B'c'|;
%%
int yyerror(char *str){
    printf("INVALID STRING\n");
    exit(0);
}
int main()
{
    yyparse();
    printf("VALID STRING\n");
}