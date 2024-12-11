% predicado para exibir mensagens:
% (digitar no prompt)

/*
write('Atomo').
write(atomo).
write(VARIAVEL).
write(TambemVariavel).
*/

start() :- write('Digite o valor da variavel: '), nl, read(X), nl, write(X), nl.
