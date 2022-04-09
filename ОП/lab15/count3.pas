UNIT Count3;
INTERFACE
  PROCEDURE Start; {Обнуляет счетчик}
  PROCEDURE Bump; {Увеличивает счетчик на 1}
  PROCEDURE Value(VAR V100, V10, V1: CHAR); {Возвращает значение счетчика}
IMPLEMENTATION
  VAR
    Ones, Tens, Hundreds: CHAR;
    
  PROCEDURE Start; {Ones := '0', Tens := '0', Hundreds := '0'}
  BEGIN {Start}
    Ones := '0';
    Tens := '0';
    Hundreds := '0'
  END; {Start}
  
  PROCEDURE NextDigit(VAR Digit: CHAR);{Присваивает слеующую цифру Digit}
  BEGIN {NextDigit}
    IF Digit = '0' THEN Digit := '1' ELSE
    IF Digit = '1' THEN Digit := '2' ELSE
    IF Digit = '2' THEN Digit := '3' ELSE
    IF Digit = '3' THEN Digit := '4' ELSE
    IF Digit = '4' THEN Digit := '5' ELSE
    IF Digit = '5' THEN Digit := '6' ELSE
    IF Digit = '6' THEN Digit := '7' ELSE
    IF Digit = '7' THEN Digit := '8' ELSE
    IF Digit = '8' THEN Digit := '9' ELSE
    IF Digit = '9' THEN Digit := '0'
  END; {NextDigit}
  
  PROCEDURE Bump; 
  {Увеличивает Ones на 1, если переполнение, увеличивает Tens а 1,
   если переполнение, увеличивает Hundreds на 1, если переполнение}
  BEGIN {Bump}
    NextDigit(Ones);
    IF Ones = '0'
    THEN
      BEGIN
        NextDigit(Tens);
        IF Tens = '0'
        THEN
          BEGIN
            NextDigit(Hundreds);
            IF Hundreds = '0'
            THEN
              BEGIN
                Ones := '9';
                Tens := '9';
                Hundreds := '9'
              END
          END
      END
  END; {Bump}
  
  PROCEDURE Value(VAR V100, V10, V1: CHAR); {Возвращает значение разрядов 
  V100-сотни, V10-десятки, V1-единицы}
  BEGIN {Value}
    V1 := Ones;
    V10 := Tens;
    V100 := Hundreds
  END; {Value}
  
  
  
  
  
  
  
