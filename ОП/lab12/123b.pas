PROGRAM Assignment2(INPUT, OUTPUT);
VAR
  V1, V2: CHAR;
BEGIN {Assignment2}
  READ(V1, V2);
  IF V1<V2
  THEN
    V1 := V2
  ELSE
    V2 := V1;
  WRITE(V1, V2)
END. {Assignment2}
