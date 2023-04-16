program DaySoNguyen;
uses crt;
var
  f: text;
  n, nhoNhat, i, j, x: integer;
  trungBinh: real;
  tong: longint;
  a: array[1..100] of integer;
begin
clrscr;
  {doc file}
  assign(f, 'DAYSO.INP');
  reset(f);
  readln(f, n);
  if (n <= 0) or (n > 100) then
    n := -1
  else
  begin
    {doc day so}
    for i := 1 to n do
      read(f, a[i]);
    {1}
    tong := 0;
    for i := 1 to n do
      if a[i] mod 2 <> 0 then
        tong := tong + a[i];
    writeln(tong);
    {2}
    trungBinh := 0;
    for i := 1 to n do
      trungBinh := trungBinh + a[i];
    trungBinh := trungBinh / n;
    writeln(trungBinh:2:2);
    {3}
    nhoNhat := a[1];
    for i := 2 to n do
      if nhoNhat > a[i] then
        nhoNhat := a[i];
    writeln(nhoNhat);
    {4}
    for i := 1 to n - 1 do
      for j := i + 1 to n do
        if a[i] > a[j] then
        begin
          x := a[i];
          a[i] := a[j];
          a[j] := x;
        end;

    for i := 1 to n do write(a[i], ' ');
  end;
  close(f);
  if n > 0 then
  begin
    {ghi ket qua}
    assign(f, 'KETQUA.OUT');
    rewrite(f);
    {1}
    writeln(f, '1. Tong cac so le = ', tong);
    append(f);
    {2}
    writeln(f, '2. Trung binh = ', trungBinh:2:2);
    {3}
    writeln(f, '3. So nho nhat = ', nhoNhat);
    {4}
    write(f, '4. Sap xep tang dan: ');
    for i := 1 to n do
      write(f, a[i], ' ');
    close(f);
  end
  else
    writeln('n khong hop le');
readln;
end.
