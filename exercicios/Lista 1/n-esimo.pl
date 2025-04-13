/*

Escreva o predicado Prolog elemento_n/3, que dado uma lista é um número natural n, retorna o n-ésimo elemento da lista.

Exemplo de uso:
?- elemento_n([tiger, dog, teddy_bear, horse, cow], 3, X).
X = teddy_bear
True
?- elemento_n([a, b, c, d], 27, X).
False

*/

elemento_n([H],1,H).
elemento_n([_|T],N,X) :-
    N1 is N - 1,
    elemento_n(T,N1,X).


