% Adapted from "P-99: Ninety-Nine Prolog Problems" by Werner Hett.

% P02 (*): Find the last but one element of a list

% penultimate(?X, ?L)
% X is the last but one element of the list L.
penultimate(X, [X,_]) :- !.
penultimate(X, [_,Y|Ys]) :-
    penultimate(X, [Y|Ys]).

    
:- @begin(tests).

test(-, X == 2) :-
    penultimate(X, [1,2,3]).

:- @end(tests).
    