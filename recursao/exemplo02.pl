fatorial(0, 1). % caso base
fatorial(X, R) :-
                X1 is X - 1,
                fatorial(X1, R1),
                R is X * R1.
