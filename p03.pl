% Adapted from "P-99: Ninety-Nine Prolog Problems" by Werner Hett.

% P03 (*): Find the K'th element of a list
% The first element in the list is number 1.

% nth1(?X, ?L, +K)
% X is the K'th element of the list L.
nth1(X, [X|_], 1) :- !.
nth1(X, [_|L], K) :-
    K > 1,
    K1 is K - 1,
    nth1(X,L,K1).


:- @begin(tests).

test(-, X == b) :-
    nth1(X, [a,b,c], 2).

:- @end(tests).
