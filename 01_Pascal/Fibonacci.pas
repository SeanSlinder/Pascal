program FibonacciAndSum;
var
  n, i: integer;
  a, b, sum: Int64;
begin
  writeln('Enter the value of n:');
  readln(n);
  if n > 93 then
  begin
    write('Too big value');
    Exit;
  end;
  a := 0;
  b := 1;
  sum := 0;

  write('Fibonacci Sequence: ');
  for i := 1 to n do
  begin
    write(a, ' ');
    sum := sum + a;
    b := a + b;
    a := b - a;
  end;

  writeln;
  writeln('Sum of the first ', n, ' Fibonacci numbers: ', sum);
end.
