/*
Defina a relação reversa (Lista, ListaReversa). Por exemplo: reversa ([a,b,c,d], X) X=[d,c,b,a].
*/

lista_reversa([],[]).
lista_reversa([Cabeca|Cauda],R) :-
    lista_reversa(Cauda, CaudaR), % inverte a cauda e salva o resultado em CaudaR.
    append(CaudaR, [Cabeca], R), % adiciona a cabeca ao final da lista, concatenando a lista com a cauda reversa com a cabeca
    !.


