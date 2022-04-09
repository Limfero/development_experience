PROGRAM Assignment1(INPUT, OUTPUT);
VAR
  V1, V2: CHAR;
BEGIN {Assignment1}
  READ(V1, V2);
  IF V1 < V2
  THEN
    V1 := V2
  ELSE
    IF V2 < V1
    THEN
      V2 := V1;
  WRITE(V1, V2)
END. {Asisgnment1}
