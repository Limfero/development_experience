PROGRAM CountRevers(INPUT, OUTPUT);
USES
  Count3;
VAR
  Ch1, Ch2, Ch3, X100, X10, X1: CHAR;
BEGIN  {CountRevers}
  WRITE('����: ');
  Start;
  READ(Ch2, Ch3);
  WHILE NOT EOLN
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      IF ((Ch1 < Ch2) AND (Ch2 > Ch3)) OR ((Ch1 > Ch2) AND (Ch2 < Ch3))
      THEN
        Bump     
    END;
  Value(X100, X10, X1);
  IF (X100 = '9') AND (X10 = '9') AND (X1 = '9')
  THEN
    WRITELN('���������� �������� 999 � �����')
  ELSE
    WRITELN('���������� �������� ', X100, X10, X1)
END.  {CountRevers}
