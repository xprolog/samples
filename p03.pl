% P03 (*): Find the K'th element of a list
% The first element in the list is number 1.

% element_at(?X, ?L, +K)
% X is the K'th element of the list L.
element_at(X, [X|_], 1) :- !.
element_at(X, [_|L], K) :-
    K > 1,
    K1 is K - 1,
    element_at(X,L,K1).


:- @begin(tests).

test(-, X == b) :-
    element_at(X, [a,b,c], 2).

:- @end(tests).
