program ctc_giai_thua;
uses crt;
var
  n: integer;

function tinh_giai_thua(var x: integer): extended;
var i: integer;
begin
  tinh_giai_thua := 1;
  for i := 1 to x do
    tinh_giai_thua := tinh_giai_thua * i;
end;

begin
clrscr;
  repeat
    write('Nhap n: ');
	readln(n);
  until(n >= 0);
  write('Giai thua ', n, ' = ', tinh_giai_thua(n):0:0);
readln;
end.
