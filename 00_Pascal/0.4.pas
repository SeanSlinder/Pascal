program calculateQuotientAndRemainder;
var 
  dividend, divisor, quotient, remainder: integer;
begin
  //Input
  write('Type the dividend: ');
  readln(dividend);
  write('type the divisor: ');
  readln(divisor);
  //Initialization of quotient and remainder
  quotient := 0;
  remainder := 0;
  //Divisor checking if 0
  if divisor = 0 then
    writeln('Cannot divide by zero!')
  else
    //Calculation
    while divisor <= dividend do
    begin
      dividend := dividend - divisor;
      quotient := quotient + 1;
    end;
    remainder := dividend;
    //Output
    writeln('Quotient: ', quotient);
    write('Remainder: ', remainder);
end.