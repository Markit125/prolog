fibonacci(1, 1).
fibonacci(2, 1).

fibonacci(N, F) :-
    N > 0,
    Prev is N-1,
    PrevPrev is N-2,
    fibonacci(Prev, F1),
    fibonacci(PrevPrev, F2),
    F is F1+F2.