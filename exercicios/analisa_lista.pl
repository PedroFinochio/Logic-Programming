/*
Escreva o predicado Prolog analisa_lista/1 que toma uma lista como argumento e escreve sua cabeça e cauda na tela. Se a lista está vazia, o 
predicado deve escrever uma mensagem.
*/

analisa_lista([]) :- write('Lista vazia'). 

analisa_lista([Cabeca | Cauda]) :-
     write('Cabeça: '), write(Cabeca), nl,
     write('Cauda: '), write(Cauda), nl.
