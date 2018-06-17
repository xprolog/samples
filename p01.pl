% "P-99: Ninety-Nine Prolog Problems" by Werner Hett.

% P01 (*): Find the last element of a list

% last(?X, ?L)
% X is the last element of the list L.
last(X, [X]) :- !.
last(X, [_|L]) :-
    last(X, L).


:- @begin(tests).

test(-, X == 3) :-
    last(X, [1,2,3]).

:- @end(tests).
