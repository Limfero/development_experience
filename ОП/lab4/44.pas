PROGRAM SarahRevere (INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN {'land' �������}
                Looking := 'L';
      IF W2 = 's'
      THEN
        IF W3 = 'e'
        THEN
          IF W4 = 'a'
          THEN {'sea' �������}
              Looking := 'S';
      IF W1 = 'a'
      THEN
        IF W2 = 'i'
        THEN
          IF W3 = 'r'
          THEN {'air' �������}
              Looking := 'A';
    END;
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      IF Looking = 'A'
      THEN
        WRITELN('The British coming by air.')
      ELSE  
        WRITELN('Sarah didn''t say')
END. {SarahRevere}
