program BaiTapMangSoNguyen;
uses crt;
var
  a: array[1..100] of integer;
  n, i, phanTu: integer;
  tong: longint;
begin
clrscr;
  repeat write('n = '); readln(n); until (n > 0) and (n <= 100);
  for i := 1 to n do
  begin
    write('a[', i, '] = '); readln(a[i]);
  end;
  {a}
  write('Phan tu > 0: ');
  for i := 1 to n do
    if a[i] > 0 then
      write(a[i], ' ');
  writeln;
  {b}
  write('Phan tu < 0: ');
  for i := 1 to n do
    if a[i] < 0 then
      write(a[i], ' ');
  writeln;
  {c}
  phanTu := a[1];
  for i := 2 to n do
    if phanTu > a[i] then
      phanTu := a[i];
  writeln('Phan tu nho nhat: ', phanTu);
  {d}
  phanTu := a[1];
  for i := 2 to n do
    if phanTu < a[i] then
      phanTu := a[i];
  writeln('Phan tu lon nhat: ', phanTu);
  {e}
  tong := 0;
  for i := 1 to n do
    tong := tong + a[i];
  writeln('Tong = ', tong);
  {f}
  tong := 0;
  for i := 1 to n do
    if a[i] > 0 then
      tong := tong + a[i];
  writeln('Tong phan tu > 0: ', tong);
  {g}
  tong := 0;
  for i := 1 to n do
    if a[i] < 0 then
      tong := tong + a[i];
  writeln('Tong phan tu < 0: ', tong);
readln;
end.