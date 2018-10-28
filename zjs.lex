/**********************************************************************
* This program is going to be the beginning of our new created 
* language known as ZoomJoyStrong. This is the lexer we are creating 
* to create our language.
*
* @author Trungvuong Pham
* @date October 28, 2018
**********************************************************************/
%{
    #include <stdio.h>
%}

%%
(END)			{ printf("END\n");}  
;			{ printf("END_STATEMENT\n");}  
(POINT|point)		{ printf("POINT\n");}
(LINE) 			{ printf("LINE\n");}
(CIRCLE)		{ printf("CIRCLE\n");}
(RECTANGLE)		{ printf("RECTANGLE\n");}
(SET_COLOR)		{ printf("SET_COLOR\n");}
[0-9]+			{ printf("INT %s\n", yytext);}
[0-9]+\.[0-9]+		{ printf("FLOAT %s\n", yytext);}
[\n \t \ ]+		;
.			{ printf("'%s' IS INVALID ON LINE %d.\n", yytext, yylineno);}		
%%

int main(int argc, char** argv){
    yylex();
    return 0;
}
