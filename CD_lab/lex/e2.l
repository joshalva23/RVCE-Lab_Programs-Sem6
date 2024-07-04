%{
#include<stdio.h>
#include<string.h>

char replace[][10] = {"printf\0","scanf\0"};
char replace_with[][10] = {"writef\0","readf\0"};
int flag;
%}
%%
[a-z]+ {
	flag= 0;for(int i = 0; i < 2; i++)
	{
		if(strcmp(yytext, replace[i]) ==0)
			{
				fprintf(yyout,"%s",replace_with[i]);
				flag =1;
				break;
			}
	}
	if(!flag) 
		fprintf(yyout, "%s",yytext);
	}
.  fprintf(yyout,"%s",yytext);

%%

int main()
{
	extern FILE *yyin,*yyout;
	yyin = fopen("input.txt","r");
	yyout = fopen("output.txt","w");
	yylex();
}
