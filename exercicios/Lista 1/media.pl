/*

Escreva o predicado Prolog media/2 que calcula a média de uma lista de inteiros.

Exemplo de uso:
?- media([1, 2, 3, 4], X).
X = 2.5
True

*/

comprimento([],0).
comprimento([_|T],X) :-
    comprimento(T,C),
    X is C + 1.

soma([],0).
soma([H|T],X) :-
    soma(T,S),
    X is H + S.

media(L,X) :-
    soma(L,S),
    comprimento(L,C),
    C =\= 0,
    X is S / C.
