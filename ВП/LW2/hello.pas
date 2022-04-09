PROGRAM Hello(INPUT, OUTPUT);
USES
  DOS;
VAR
  name: STRING;
BEGIN {Hello}
  name := COPY(GetEnv('QUERY_STRING'), POS('=', GetEnv('QUERY_STRING')) + 1, POS('?', GetEnv('QUERY_STRING')));
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF name = ''
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    WRITELN('Hello dear, ', name, '!')
END.
