PROGRAM Split(INPUT, OUTPUT);
 VAR
   Ch, Next: CHAR;
   Odds, Evens: TEXT;
BEGIN {Split}
  {Читаем INPUT, Записываем в Odds или Evens по Next}
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
  {Вывод Odds в OUTPUT}
  {Вывод Evens в OUTPUT}
END. {Split}
