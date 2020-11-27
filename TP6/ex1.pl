
double(X, Y) :- Y is 2 * X.

my_map([], _, []).

my_map([Head | Tail], Pred, [HeadF | TailF]) :-
    T =.. [Pred, Head, HeadF], T,
    my_map(Tail, Pred, TailF).
