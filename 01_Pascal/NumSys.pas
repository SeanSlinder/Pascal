program NumberBaseConverter;

//Power Function
function power(x:integer; n:integer):int64;
var
  i: integer;
begin
  power := 1;
  for i := 1 to n do
  begin
    power := power * x;
  end;
end;

//Main Procedure
var
  maxint: int64;
  p, q, decimalNumber, numDigits, inputDigit, resultDigit, i, n: longint;
  resultSequence: array[1..100] of longint;
begin
  //Input: base and quantity of digits
  Write('Введите основание системы счисления p (2<=p<=10000): ');
  Readln(p);
  if (p < 2) or (p > 10000) then
  begin
    WriteLn('Ошибка: Введена некорректное основание.');
    Exit;
  end;
  Write('Введите количество цифр в числе с введенным основанием: ');
  Readln(numDigits);

  //Digit sequence input
  Write('Введите последовательность цифр (разделите пробелами): ');
  maxint := 2147483647;
  decimalNumber := 0;
  for i := 1 to numDigits do
  begin
    Read(inputDigit);
    //Digit validity check
    if (inputDigit < 0) or (inputDigit >= p) then
    begin
      Write('Ошибка: Введена некорректная цифра.');
      Exit;
    end;
    
    //Maxint check
    if (inputDigit * power(p, numDigits - i) > maxint) then
    begin
      Write('Переполнение LongInt: значение превышает 2147483647');
      Exit
    end;
    if (inputDigit * power(p, numDigits - i) <= maxint) then
    begin
      maxint := maxint - inputDigit * power(p, numDigits - i);
    end;
    
    //Convertion to the base-10
    decimalNumber := decimalNumber * p + inputDigit;
  end;

  //New base to convert into
  Write('Введите новое основание системы счисления q (2<=q<10000): ');
  Readln(q);

  //Convertion to new base
  i := 1;
  n := 0;
  while decimalNumber > 0 do
  begin
    resultDigit := decimalNumber mod q;
    decimalNumber := decimalNumber div q;
    resultSequence[i] := resultDigit;
    n := n + 1;
    i := i + 1;
  end;

  //Result output
  Write('Результат перевода в новую систему счисления: ');
  for n := n downto 1 do
  begin
    Write(resultSequence[n], ' ');
  end;
end.