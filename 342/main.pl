roll_sum(0, 0).
roll_sum(N, Sum) :-
    N > 0,
    between(1, 6, D),
    N1 is N - 1,
    roll_sum(N1, Rest),
    Sum is Rest + D.

get_odds(N, Target, Odds) :-
    findall(Sum, roll_sum(N, Sum), AllSums),
    include(==(Target), AllSums, Matches),
    length(AllSums, Total),
    length(Matches, Ways),
    X is round(Total / Ways),
    format(string(Odds), "1 in ~d", [X]).

