%{
#include<stdio.h>

int p=0, n=0,pf=0,nf = 0;
%}
%%
[+-]?[0-9]+[/.][/.]+[+-]?[0-9]+  ;
[+]?[0-9]+\.[0-9]+	{pf++;}
"-"[0-9]+\.[0-9]+	{nf++;}
("-"[0-9]+"/"[+]?[0-9]+)|([+]?[0-9]+"/""-"[0-9]+)  {nf++;}
([+]?[0-9]+"/"[+]?[0-9]+)|("-"[0-9]+"/""-"[0-9]+) {pf++;}
[+]?[0-9]+ {p++;}
"-"[0-9]+	{n++;}	

\n return 0;
.	;
%%

int main()
{
	yylex();
	printf("\nPositive Fraction\t%d",pf);
	printf("\nNegative Fraction\t%d",nf);
	printf("\nPositive Number\t\t%d",p);
	printf("\nNegative Number\t\t%d\n",n);
}
