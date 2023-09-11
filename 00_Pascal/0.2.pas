program sortThreeNumbers;
var
  a, b, c, temp: integer;
begin
  //Input
  write('Type first number: ');
  readln(a);
  write('Type second number: ');
  readln(b);
  write('Type third number: ');
  readln(c);
  //Sorting with IF statements
  if a > b then
  begin
    temp := a;
    a := b;
    b := temp;
  end;
    if b > c then
  begin
    temp := b;
    b := c;
    c := temp;
  end;
    if a > b then
  begin
    temp := a;
    a := b;
    b := temp;
  end;
  write(a,' ', b,' ', c);
end.