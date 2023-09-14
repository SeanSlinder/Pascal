program Fibonacci;

var
  n, i: integer;
  a, b, temp: cardinal;

begin
  writeln('Enter the number of Fibonacci terms to generate:');
  readln(n);

  a := 0;
  b := 1;

  writeln('Fibonacci Sequence:');
  
  if (n=0) then
    writeln(a)
  else if (n=1) then
    begin
      writeln(a);
      writeln(b);
    end
  else if (n>1) then
    begin
      writeln(a);
      writeln(b);
      for i := 3 to n do
        begin
         temp := a + b;
         writeln(temp);
         a := b;
         b := temp;
        end
    end
end.
