program phan_tich_so_tong_3;
uses crt;
var
  n, i, j, k, dem: integer;
begin
clrscr;
  repeat
    write('Nhap n = '); readln(n);
  until (n > 1) and (n < 100);
  dem := 0;
  for i := 1 to n do
    for j := i + 1 to n do
      for k := j + 1 to n do
		if i + j + k = n then
		begin
	      writeln(i, ' ', j, ' ', k);
		  dem := dem + 1;
		end;
  if dem = 0 then write('KHONG CO');
readln;
end.
