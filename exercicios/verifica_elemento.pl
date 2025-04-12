/*
Faça um predicado em prolog que verifica se um elemento esta na lista
*/

verifica([],0).
verifica([_|T],X) :-
    verifica(T,E).
    