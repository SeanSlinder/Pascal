program DeterminantCalculation;

const
  n = 5;

var
  a: array[1..n, 1..n] of double;
  det: double;
  i, j, k: integer;

begin
  // Input the matrix elements
  writeln('Enter the elements of the 3x3 matrix:');
  for i := 1 to n do
    for j := 1 to n do
      read(a[i, j]);

  // Initialize the determinant to 1
  det := 1.0;

  // Perform Gaussian elimination to transform the matrix to upper triangular form
  for i := 1 to n do
  begin
    // If the pivot element is zero, swap rows to avoid division by zero
    if a[i, i] = 0 then
    begin
      for j := i + 1 to n do
      begin
        if a[j, i] <> 0 then
        begin
          // Swap rows i and j
          for k := 1 to n do
          begin
            a[i, k] := a[i, k] + a[j, k];
            a[j, k] := a[i, k] - a[j, k];
            a[i, k] := a[i, k] - a[j, k];
          end;
          // Flip the sign of the determinant when swapping rows
          det := -det;
          break;
        end;
      end;
    end;

    // Perform Gaussian elimination
    for j := i + 1 to n do
    begin
      if a[j, i] <> 0 then
      begin
        for k := i + 1 to n do
          a[j, k] := a[j, k] - a[i, k] * (a[j, i] / a[i, i]);
      end;
    end;

    // Multiply the determinant by the pivot element
    det := det * a[i, i];
  end;

  // Output the determinant
  writeln('The determinant of the matrix is: ', det:0:2);
end.