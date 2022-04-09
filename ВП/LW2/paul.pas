PROGRAM PaulRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Lanterns: STRING;
BEGIN {PaulRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  IF Lanterns = 'lanterns=1'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Lanterns = 'lanterns=2'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        IF Lanterns = 'lanterns=3'
        THEN
          WRITELN('The British are coming by air.')
        ELSE
          WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
