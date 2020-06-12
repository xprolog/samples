% P02 (*): Find the last but one element of a list

% last_but_one(?X, ?L)
% X is the last but one element of the list L.
last_but_one(X, [X,_]) :- !.
last_but_one(X, [_,Y|Ys]) :-
    last_but_one(X, [Y|Ys]).

    
:- @begin(test).

test(-, X == 2) :-
    last_but_one(X, [1,2,3]).

:- @end(test).
    
