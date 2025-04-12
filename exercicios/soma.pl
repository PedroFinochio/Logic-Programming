/*
Escreva o predicado Prolog total/2 que calcula a soma dos valores numa lista de inteiros.

Exemplo de uso:
?-total([4,3,7,9,1],X).
X = 24
*/

total([],0).
total([H|T],X) :-
    total(T,Y),
    X is H + Y.


