element([Head|Tail], Element) :-
    Element = Head; element(Tail, Element).