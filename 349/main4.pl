perimeter([Row, Col, D], Perimeter) :-
  I0 is Row-D,
  J0 is Col-D, J1 is Col+D,
  I1 is Row+D,

  numlist(I0, I1, Is),
  numlist(J0, J1, Js),

  maplist([J, [I0, J]]>>true, Js, Side1),
  maplist([I, [I, J1]]>>true, Is, Side2),
  maplist([J, [I1, J]]>>true, Js, Side3),
  maplist([I, [I, J0]]>>true, Is, Side4),

  append([Side1, Side2, Side3, Side4], Points),

  sort(Points, Perimeter).


cell_phone(Towers, Loc) :-
  maplist(perimeter, Towers, Perimeters),
  maplist(member(Loc), Perimeters),

  Loc = [Row, Col],
  Row >= 0,
  Col >= 0.

