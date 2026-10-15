perimeter([Row, Col], Perimeter) :-
  Up is Row - 1,
  Left is Col - 1, Right is Col + 1,
  Down is Row + 1,

  Perimeter = [
    [Up, Left], [Up, Col], [Up, Right],
    [Row, Left], [Row, Right],
    [Down, Left], [Down, Col], [Down, Right]
  ].

cell_phone(Towers, Loc) :-
  maplist(perimeter, Towers, Perimeters),
  maplist(member(Loc), Perimeters).
