program MultiplyTwoNumbers;
var
 a, b, product: integer;
begin
 writeln('This is a program that multiplies two numbers');
 write('Type the first number: ');
 readln(a);
 write('Type the second number: ');
 readln(b);
 product := a * b;
 write(a, ' * ', b, ' = ', product);
end.