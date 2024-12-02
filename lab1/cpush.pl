push([], L, L).
push([X|Tail], L, [X|Res]) :-
    push(Tail, L, Res).