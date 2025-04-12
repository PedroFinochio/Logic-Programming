/*
Escreva um predicado em prolog que encontra o maior valor numa lista de inteiros. Exemplo:
maior ([1,2,3,9,5,4,6], Y), Y = 9.
*/

maior([X],X).
maior([H|T],Y) :-
    maior(T,M),
    (H > M -> Y = H ; Y = M). % se H > M, então Y = H, caso contrário Y = M




    
