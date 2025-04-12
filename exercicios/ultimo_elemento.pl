/*
Faça um predicado em prolog que encontra o ultimo elemento da lista
*/

ultimo([X],X).
ultimo([_|T],X) :-
    ultimo(T,X).

/*

 [1,2,3,4] --> ultimo elemento = 4.

 1 chamada: H = 1  T = [2,3,4] 
 2 chamada: H = 2  T = [3,4]
 3 chamada: H = 3  T = [4]
 4 chamada  H = 4  T = []

*/

