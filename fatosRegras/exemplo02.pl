% REGRAS:

/*

lógica de primeira ordem:
se A(x), entao B(x)
A(x) e B(x)
A(x) ou B(x)

prolog:
A(x) -: B(x)
A(x), B(x)
A(x); B(x)
*/

% criando uma arvore genealogica

/*
pam     tom
    \ /    \
    bob     liz
    / \
  ann  pat
      /
    jim
*/

% genero:
mulher(pam).
mulher(liz).
mulher(ann).
mulher(pat).
homem(tom).
homem(bob).
homem(jim).

% relacao pai/mae (genitor):
genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).
genitor(bob, ann).
genitor(bob, pat).
genitor(pat, jim).

prole(X, Y) :- genitor(Y, X).
pai(X, Y) :- genitor(X, Y), homem(X). % se X eh pai de Y, entao X eh genitor de Y e X eh homem
mae(X, Y) :- genitor(X, Y), mulher(X). % se X eh mae de Y, entao X eh genitor de Y e X eh mulher
avos(X, Z) :- genitor(X, Y), genitor(Y, Z). % se X eh avo(a) de Z, entao X eh genitor de Y e Y eh genitor de Z
