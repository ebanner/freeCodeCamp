perimeter([Row, Col], D, Perimeter) :-
  I0 is Row-D,
  J0 is Col-D, J1 is Col+D,
  I1 is Row+D,

  numlist(I0, I1, Js),
  numlist(J0, J1, Is),

  maplist([J, [I0, J]]>>true, Js, Side1),
  maplist([I, [I, J1]]>>true, Is, Side2),
  maplist([J, [I1, J]]>>true, Js, Side3),
  maplist([I, [I, J0]]>>true, Is, Side4),

  append([Side1, Side2, Side3, Side4], Perimeter).

cell_phone([Row, Col], D, Loc) :-
  perimeter([Row, Col], D, Perimeter),

  member(Loc, Perimeter).

