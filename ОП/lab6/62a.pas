PROGRAM Split(INPUT, OUTPUT);
 VAR
   Ch, Next: CHAR;
   Odds, Evens: TEXT;
BEGIN {Split}
  {������ INPUT, ���������� � Odds ��� Evens �� Next}
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O';
  READ(INPUT, Ch);
  WHILE Ch <> '#' 
  DO
    BEGIN
      WRITELN(OUTPUT, Ch,' ', Next); 
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(Odds, Ch);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          Next := 'O'
        END;
      READ(INPUT, Ch)  
    END;
  WRITELN(Odds, '#');
  WRITELN(Evens, '#')
  {����� Odds � OUTPUT}
  {����� Evens � OUTPUT}
END. {Split}
