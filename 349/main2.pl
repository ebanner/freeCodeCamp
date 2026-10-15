perimeter([Row, Col], Perimeter) :-
  Up is Row - 1,
  Left is Col - 1, Right is Col + 1,
  Down is Row + 1,

  Perimeter = [
    [Up, Left], [Up, Col], [Up, Right],
    [Row, Left], [Row, Right],
    [Down, Left], [Down, Col], [Down, Right]
  ].

cell_phone([Row1, Col1], [Row2, Col2], Loc) :-
  perimeter([Row1, Col1], P1),
  member(Loc, P1),
  perimeter([Row2, Col2], P2),
  member(Loc, P2).

