/*
Defina os dois predicados prolog. listapar (Lista) - que é verdadeiro quando o número de
elementos da lista for par. E listaimpar (Lista) - que é verdadeiro quando o número de elementos
da lista for impar.
*/

lista_par([]).
lista_par([_,_|Cauda]):-lista_par(Cauda).

lista_impar([_]) :- !.
lista_impar([_,_|Cauda]):-lista_impar(Cauda).