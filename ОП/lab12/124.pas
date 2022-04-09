PROGRAM RemoveSpaces(INPUT, OUTPUT);
VAR
  Ch1, Ch2, One: CHAR;
BEGIN {RemoveSpaces}
  Ch1 := ' ';
  One := 'Y';
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch2);
      IF(Ch2 <> ' ') AND (Ch1 = ' ') AND (One = 'N')
      THEN
        WRITE(' ');
      IF Ch2 <> ' '
      THEN
        BEGIN
          WRITE(Ch2);
          One := 'N'
        END;
      Ch1 := Ch2
    END;
  WRITELN 
END. {RemoveSpaces}
