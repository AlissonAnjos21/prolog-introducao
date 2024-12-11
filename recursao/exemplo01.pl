fibonacci(0, 1). % caso base
fibonacci(1, 1). % caso base
fibonacci(X, R) :- 
                  Y is X - 1, 
                  Z is X - 2,
                  fibonacci(Y, R1), 
                  fibonacci(Z, R2),
                  R is R1 + R2.
