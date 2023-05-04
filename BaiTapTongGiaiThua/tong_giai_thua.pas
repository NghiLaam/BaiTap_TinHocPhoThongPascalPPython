program tong_giai_thua;
uses crt;
var
  a, b, c: integer;
  t: extended;
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
    write('Nhap a: ');
	readln(a);
  until(a >= 0);
  repeat
    write('Nhap b: ');
	readln(b);
  until(b >= 0);
  repeat
    write('Nhap c: ');
	readln(c);
  until(c >= 0);
  t := tinh_giai_thua(a) + tinh_giai_thua(b) + tinh_giai_thua(c);
  write('T = ', t:0:0);
readln;
end.
