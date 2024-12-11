% =:= é diferente de =

% 1 + 2 = 2 + 1. (false)
% 1 + 2 = 1 + 2. (true)

% 1 + 2 =:= 2 + 1. (true)
% 1 + 2 =:= 1 + 2. (true)


soma(X1, X2, R) :- R is X1 + X2. % R is X1 + X2 atribui X1 + X2 para R
% soma(21, 21, 42) (eh verdadeiro)
% soma(21, 21, 43) (eh falso)