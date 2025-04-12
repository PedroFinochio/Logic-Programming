/*
Faça um predicado em prolog que verifica se um elemento esta na lista
*/

verifica([H|_],H).
verifica([_|T],X) :-
    verifica(T,X).
