cell_phone([Row1, Col1], [Row2, Col2], Loc) :-
  U1 is Row1 - 1,
  L1 is Col1 - 1, R1 is Col1 + 1,
  D1 is Row1 + 1,

  member(
    Loc,
    [
      [U1, L1], [U1, Col1], [U1, R1],
      [Row1, L1], [Row1, R1],
      [D1, L1], [D1, Col1], [D1, R1]
    ]
  ),

  U2 is Row2 - 1,
  L2 is Col2 - 1, R2 is Col2 + 1,
  D2 is Row2 + 1,

  member(
    Loc,
    [
      [U2, L2], [U2, Col2], [U2, R2],
      [Row2, L2], [Row2, R2],
      [D2, L2], [D2, Col2], [D2, R2]
    ]
  ).
