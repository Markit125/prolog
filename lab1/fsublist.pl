push([], L, L).
push([X|Tail], L, [X|Res]) :-
    push(Tail, L, Res).

sublist(S, L) :-
    push(_, L1, L),
    push(S, _, L1).
