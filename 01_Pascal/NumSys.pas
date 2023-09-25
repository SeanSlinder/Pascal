program NumberBaseConverter;
var
  p, q, numDigits, inputDigit, decimalNumber, resultDigit, i, n: int64;
  resultSequence: array[1..100] of int64;
begin
  //Input: base and quantity of digits
  Write('Введите основание системы счисления p (2<=p<10000): ');
  Readln(p);
  Write('Введите количество цифр в числе с введенным основанием: ');
  Readln(numDigits);

  //Variable initialization
  decimalNumber := 0;

  //Digit sequence input
  Write('Введите последовательность цифр (разделите пробелами): ');
  for i := 1 to numDigits do
  begin
    Read(inputDigit);
    //Digit validity check
    if (inputDigit < 0) or (inputDigit >= p) then
    begin
      WriteLn('Ошибка: Введена некорректная цифра.');
      Exit;
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