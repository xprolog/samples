% P10 (*): Run-length encoding of a list

:- ensure_loaded('p09.pl').

% encode(+L1, ?L2)
% The list L2 is obtained from the list L1 by run-length encoding. Consecutive
% duplicates of elements are encoded as terms [N,E], where N is the number of
% duplicates of the element E.
encode(L1, L2) :-
    pack(L1, L),
    transform(L, L2).

transform([], []).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :-
    length([X|Xs], N),
    transform(Ys, Zs).
