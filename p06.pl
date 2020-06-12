% P06 (*): Find out whether a list is a palindrome
% A palindrome can be read forward or backward; e.g. [x,a,m,a,x]

:- ensure_loaded(p05).

% palindrome(?L)
% L is a palindrome list.
palindrome(L) :-
    reverse(L, L).


:- @begin(test).

test(-, true) :-
    palindrome([a,b,c,b,a]).

:- @end(test).

