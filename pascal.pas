program ArraysSum;

var
  A, B, C: array[1..20] of integer;
  i, j, k: integer;
  found: boolean;

begin
  randomize;
  
  // Заполнение массивов A и B случайными значениями
  for i := 1 to 20 do
  begin
    A[i] := random(50); 
    B[i] := random(50);
  end;
  
  // Вывод исходных массивов A и B
  writeln('Массив A:');
  for i := 1 to 20 do
    write(A[i], ' ');
  writeln;
  
  writeln('Массив B:');
  for i := 1 to 20 do
    write(B[i], ' ');
  writeln;
  
  // Нахождение общих элементов и заполнение массива C
  k := 0;
  for i := 1 to 20 do
  begin
    found := false;
    for j := 1 to 20 do
    begin
      if A[i] = B[j] then
      begin
        found := true;
        break;
      end;
    end;
    
    if found then
    begin
      k := k + 1;
      C[k] := A[i];
    end
    else
      B[i] := 0;
  end;
  
  // Вывод результирующего массива C
  writeln('Массив C:');
  for i := 1 to k do
    write(C[i], ' ');
  writeln;
  
  // Вывод измененного массива B
  writeln('Измененный массив B:');
  for i := 1 to 20 do
    write(B[i], ' ');
  writeln;
  
end.