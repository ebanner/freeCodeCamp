:- use_module(library(clpfd)).

magic_square(Rows) :-
  Rows = [[A, _, C],
          [_, E, _],
          [G, _, I]],

  append(Rows, Vals),
  Vals ins 1..50,
  all_distinct(Vals),
  transpose(Rows, Cols),

  maplist(T/[Row]>>sum(Row, #=, T), Rows),
  maplist(T/[Col]>>sum(Col, #=, T), Cols),
  sum([A, E, I], #=, T),
  sum([C, E, G], #=, T),

  label(Vals).

% magic_square([2, 7, 6], [9, E, 1], [4, 3, 8]),
% format("~w~n~w~n~w~n", [[2, 7, 6], [9, E, 1], [4, 3, 8]]).

% magic_square([12, 17, 16], [19, E3, 10], [14, 13, 18]),
% format("~w~n~w~n~w~n", [[12, 17, 16], [19, E3, 10], [14, 13, 18]]).

