cell_phone([Row, Col], Loc) :-
  Up is Row - 1,
  Left is Col - 1, Right is Col + 1,
  Down is Row + 1,

  member(
    Loc,
    [
      [Up, Left], [Up, Col], [Up, Right],
      [Row, Left], [Row, Right],
      [Down, Left], [Down, Col], [Down, Right],
    ]
  ).

