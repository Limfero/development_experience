PROGRAM TestRS(INPUT, OUTPUT);
VAR
  Total: TEXT;
  Ch: CHAR;
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR 
  F2, F3: TEXT;
  Ch: CHAR;
PROCEDURE Split(VAR F1, F2, F3: TEXT); {Разбивает F1 на F2, F3}
VAR 
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  Switch := '2';
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      IF Switch = '2'
      THEN
        BEGIN
          WRITE(F2, Ch);
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE(F3, Ch);
          Switch := '2'
        END
    END;
  WRITELN(F2);
  WRITELN(F3)
END; {Split}
PROCEDURE Merge(VAR F1, F2, F3: TEXT); {Сливает F2, F3 в F1  в сортированном порядке}
VAR 
  Ch2, Ch3: CHAR;
BEGIN {Merge}
  REWRITE(F1);
  RESET(F2);
  RESET(F3);
  READ(F2, Ch2);
  READ(F3, Ch3);
  WHILE (NOT EOLN(F2)) AND (NOT EOLN(F3))
  DO
    BEGIN
      IF Ch2 < Ch3
      THEN 
        BEGIN
          WRITE(F1, Ch2);
          READ(F2, Ch2)
        END
      ELSE
        BEGIN
          WRITE(F1, Ch3);
          READ(F3, Ch3)
        END
    END;
  WHILE NOT (EOLN(F2))
  DO
    BEGIN
      WRITE(F1, Ch2);
      READ(F2, Ch2)
    END;
  WHILE NOT (EOLN(F3))
  DO
    BEGIN
      WRITE(F1, Ch3);
      READ(F3, Ch3)
    END;
  WRITELN(F1);
END; {Merge}
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT EOLN(F1)
  THEN
    IF NOT EOLN(F1)
    THEN {Файл имеет как минимум 2 символа}
      BEGIN
        Split(F1, F2, F3);
        RecursiveSort(F2);
        RecursiveSort(F3);
        Merge(F1, F2, F3)
      END;
END; {RecursiveSort}
BEGIN{TestRS}
  REWRITE(Total);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(Total, Ch)
    END;
  RecursiveSort(Total);
  RESET(Total);
  WHILE NOT EOLN(Total)
  DO
    BEGIN
      READ(Total, Ch);
      WRITE(Ch)
    END 
END.
