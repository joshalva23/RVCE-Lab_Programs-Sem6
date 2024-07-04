%{
#include<stdio.h>
int whitespaces = 0, lines = 1, words  = 0, digits = 0, characters = 0;
%}
%%
\n {lines++;}
[0-9] {digits++;}
[ ] {whitespaces++;}
[a-zA-Z0-9]+ {words++; characters += yyleng;}
.;
%%
int main(){
    printf("Enter:");
    yylex();
    printf("\nWords:%d\nWhitespaces:%d\nLines:%d\nDigits:%d\nCharacters:%d\n",words, whitespaces, lines,digits,characters);

}
