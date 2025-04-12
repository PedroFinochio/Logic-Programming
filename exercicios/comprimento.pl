/*
Escreva o predicado Prolog comprimento/2 que calcula o comprimento de uma lista. 

Exemplo de uso:
comprimento(X,[a,b,c]).
X = 3
*/

comprimento(0,[]).
comprimento(X,[_|T]) :-
    comprimento(C,T),
    X is C + 1.
    
    
