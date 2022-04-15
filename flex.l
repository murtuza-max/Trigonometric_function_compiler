%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "y.tab.h";
%}
Keyword
"sin"|"cos"|"tan"|"cot"|"sec"|"cosec"|"no"|"mulya"|"kitla"|"nu"|"si"|"jawab"
|"Havee"|"ne"|"thi"|"ane"|"noo"|"kar"|"Ema"|"nakh"|"Pachi"|"Cheloo"|"shu
"|"chey"
Op "sarvado"|"baad"|"bhagi"|"gunya"
Digit [0-360]
Int {Digit}+
eos "."
ws [ \t\n]
%%
{Keyword} {printf("Keyword - %s\n",yytext);return KEYWORD;}
{Op} {printf("Operator - %s\n",yytext);return OPERATION;}
{Int} {printf("Integer - %s\n",yytext);return NUMBER;}
{eos} {printf("End of sentence - %s\n",yytext);return DOT;}
{ws} {return WHITESPACE;}
.{printf("Invalid Token : %s\n",yytext); return *yytext;}
%%
int yywrap()
{return 1;}
