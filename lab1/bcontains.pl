contains(Elem, [Elem|_]).
contains(Elem, [_|Tail]) :-
    contains(Elem, Tail).
