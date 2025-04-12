/*
Escreva o predicado Prolog nesimo/3 que encontra o n-esimo valor de uma lista. 

Exemplo de uso:
nesimo(3,[4,3,7,9,1],X).
X = 7
*/

nesimo(1,[H|_],H).
nesimo(N,[_|T],X) :-
    N1 is N-1,
    nesimo(N1,T,X).


