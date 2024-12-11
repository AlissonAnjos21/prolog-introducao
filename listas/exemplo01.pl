% [Head, Tail] = [1, 2, 3, 4, 5].
%  Head = 1
%  Tail = [2, 3, 4, 5]

% toda lista tem uma lista vazia dentro dela (ao final)



% ehElementoDaLista(X, [H | Lista]) :- X =:= H.

% forma mais elegante:
ehElementoDaLista(X, [X | _]).
ehElementoDaLista(X, [_ | Tail]) :- ehElementoDaLista(X, Tail).