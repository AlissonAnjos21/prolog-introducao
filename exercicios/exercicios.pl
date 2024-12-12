livro(autor1, titulo1, ano1).
livro(autor2, titulo2, ano2).
livro(autor3, titulo3, ano3).
livro(autor4, titulo4, ano4).
livro(autor1, titulox, anox).
livro(autor2, tituloy, anoy).
livro(autor1, tituloz, anoz).

%-----------------------------------------------------------------------

homem(Homem). 
mulher(Mulher). 
pais(Filho, Pai, Mae). 

mae(X, Y) :- pais(Y, _, X), mulher(X).
pai(X, Y) :- pais(Y, X, _), homem(X).

mulher(vanessa).
homem(wagner).
homem(jurandir).
pais(jurandir, wagner, vanessa).

%-----------------------------------------------------------------------

numero_natural(X) :- X >= 0.
numero_par(X) :- (X mod 2) =:= 0. 
numero_impar(X) :- (X mod 2) =:= 1.
% numero_impar(X) :- (X mod 2) =\= 0.

soma(X, Y, Z) :- Z is X + Y.

fatorial(0, 1).
fatorial(X, R) :-
    X1 is X - 1,
    fatorial(X1, R1),
    R is X * R1.

minimo(N1, N2, Min) :- 
  (N1 > N2) ->  Min is N2;
  (N2 >= N1) ->  Min is N1.

mod(X, Y, Z) :-
  W is X div Y,
  K is W * Y,
  Z is X - K.

%-----------------------------------------------------------------------

list([]).
list([X | Tail]) :- write(X), nl, list(Tail).

member(X, [X | _]).
member(X, [_ | Tail]) :- member(X, Tail).

not_member(_, []) :- !.
not_member(X, [E | Tail]) :- 
    (X \= E),
    not_member(X, Tail).

prefix(Prefix, [X | Tail]) :- (Prefix =:= X).

sufix(Sufix, [Sufix | []]) :- !.
sufix(Sufix, [X | Tail]) :- sufix(Sufix, Tail).

