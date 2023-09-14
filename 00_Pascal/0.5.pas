program swapFirstMinAndLastMax;
const N = 10;
var
  arr: array[1..N] of integer;
  i, minIndex, maxIndex, temp: integer;
begin
  writeln('Type 10 numbers into a massive:');
  for i := 1 to N do
  begin
    readln(arr[i]);
  end;
  minIndex := 1;
  maxIndex := 1;
  
  for i := 2 to N do
  begin
    if arr[i] < arr[minIndex] then
     minIndex := i;
    if arr[i] >= arr[maxIndex] then
     maxIndex := i;
  end;

  temp := arr[minIndex];
  arr[minIndex] := arr[maxIndex];
  arr[maxIndex] := temp;
  
  for i := 1 to N do
  begin
    write(arr[i], ' ');
  end;
end.