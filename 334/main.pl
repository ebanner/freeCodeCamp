exact_change(Amount, Count) :-
    aggregate_all(count, combo(Amount), Count).

combo(Amount) :-
    MaxQ is Amount // 25,
    between(0, MaxQ, Q),
    R1 is Amount - 25*Q,
    MaxD is R1 // 10,
    between(0, MaxD, D),
    R2 is R1 - 10*D,
    MaxN is R2 // 5,
    between(0, MaxN, _N).
    % pennies = whatever remains, always exactly one way
