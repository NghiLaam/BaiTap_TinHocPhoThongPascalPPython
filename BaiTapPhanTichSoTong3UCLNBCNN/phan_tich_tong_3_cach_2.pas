program phan_tich_so_tong_3_2;
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
	begin
	  k := n - i - j;
	  if (k > j) and (k < n) then
      begin
	    writeln(i, ' ', j, ' ', n - i - j);
		dem := dem + 1;
      end;
	end;
  if dem = 0 then write('KHONG CO');
readln;
end.

