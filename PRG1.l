%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[^ aeiouAEIOU] {c++;}
%%
int yywrap()
{}
int main()
{
yylex();
printf("No of vowels are %d\n",v);
printf("No of Consonents are %d\n",c);
return 0;
}
