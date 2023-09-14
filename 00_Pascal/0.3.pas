program CheckPointInCircle;
var 
  x, y, xCenter, yCenter, radius: integer;
begin
  //Input
  writeln('This is a program that checks if the point is in the circle');
  write('Type the radius of circle: ');
  readln(radius);
  write('Type the x-coordinate of center: ');
  readln(xCenter);
  write('Type the y-coordinate of center: ');
  readln(yCenter);
  write('Type the x-coordinate of your point: ');
  readln(x);
  write('Type the y-coordinate of your point: ');
  readln(y);
  //Checking
  if (x-xCenter)*(x-xCenter)+(y-yCenter)*(y-yCenter) <= radius*radius then
    write('Your point is in the circle!')
  else
    write('Your point is NOT in the circle!');
end.