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
