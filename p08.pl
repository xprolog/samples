% Adapted from "P-99: Ninety-Nine Prolog Problems" by Werner Hett.

% P08 (**): Eliminate consecutive duplicates of list elements

% compress(+L1, ?L2)
% The list L2 is obtained from the list L1 by compressing repeated occurrences
% of elements into a single copy of the element.
compress([], []).
compress([X], [X]) :- !.
compress([X,X|Xs], Zs) :- !,
    compress([X|Xs], Zs).
compress([X,Y|Ys], [X|Zs]) :-
    X \= Y,
    compress([Y|Ys], Zs).


:- @begin(tests).

test(-, L == [a,b,c,a,d,e]) :-
    compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e], L).

:- @end(tests).
