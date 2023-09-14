
### Fibonacci using recursion

```pascal
program Fibonacci;
var 
    n, i: integer;
    
function fibonacci(n: integer) : cardinal;
begin
    if (n=0) or (n=1) then
        fibonacci:=0
    else if (n=2) then
        fibonacci:=1
    else
        fibonacci:=fibonacci(n-2)+fibonacci(n-1);
end;

begin
    writeln('How many Fibonacci numbers do you want?');
    readln(n);
    for i:=1 to n do
        write(fibonacci(i), ' ');
end.
```
