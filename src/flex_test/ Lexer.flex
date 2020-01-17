package flex_test;
/*
* Aqui tendria que definir mi calse token o usar CUP y que CUP lo haga.
*
* */

%%
/*Options and declarations*/




%class Lexer
%public
%unicode
%line
%column
%caseless
%standalone

%init{
    /**/
%init}
%eof{
    /* Code to put at the end */
%eof}

L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
Identifier = ({D}|{L})* /*[:jletter:] [:jletterdigit:]*   */
%%
{WHITE} {/*Ignore*/}

{Identifier} {System.out.println("identifier: " + yytext());}

 .  {System.out.println("error: " +  yytext());}

