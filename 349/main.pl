cell_phone([Row, Col], Loc) :-
  Up is Row - 1,
  Right is Col + 1,
  Down is Row + 1,
  Left is Col + 1,

  member(
    Loc,
    [
      [Up, Col],     % N
      [Up, Right],   % NE
      [Row, Right],  % E
      [Down, Right], % SE
      [Down, Col],   % S
      [Down, Left],  % SW
      [Row, Left],   % W
      [Up, Left]     % NW
    ]
  ).

