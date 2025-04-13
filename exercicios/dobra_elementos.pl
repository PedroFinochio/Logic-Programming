/*

Faça um predicado em prolog que dobra os elementos de uma lista

*/

dobra([],[]).
dobra([H|T],[H2|T2]) :-
    H2 is H * 2,
    dobra(T,T2).


/*

[10,1,5]

1 chamada : H = 10 T = [1,5]
2 chamada : H = 1  T = [5]  
3 chamada : H = 5  T = [] --> H = 10 

*/
