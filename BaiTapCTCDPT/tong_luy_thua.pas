program tong_luy_thua;
uses crt;
var
  a, b, c, d, m, n, p, q: integer;

function tinh_luy_thua(x, y: integer): longint;
var i: integer;
begin
  tinh_luy_thua := 1;
  if (x = 0) and (y = 0) then
    tinh_luy_thua := 1
  else if x = 0 then
    tinh_luy_thua := 0
  else if y = 0 then
    tinh_luy_thua := 1
  else if y > 0 then
    for i := 1 to y do
	  tinh_luy_thua := tinh_luy_thua * x;
end;

function tinh_tong_luy_thua: longint;
begin
  tinh_tong_luy_thua := 0;
  tinh_tong_luy_thua := tinh_tong_luy_thua + tinh_luy_thua(a, n)
  + tinh_luy_thua(b, m) + tinh_luy_thua(c, p) + tinh_luy_thua(d, q);
end;

begin
clrscr;
  write('a = '); readln(a);
  repeat write('n = '); readln(n); until(n >= 0);
  write('b = '); readln(b);
  repeat write('m = '); readln(m); until(m >= 0);
  write('c = '); readln(c);
  repeat write('p = '); readln(p); until(p >= 0);
  write('d = '); readln(d);
  repeat write('q = '); readln(q); until(q >= 0);
  write('Tluythua = ', tinh_tong_luy_thua);
readln;
end.
