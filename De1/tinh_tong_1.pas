program tinh_tong_1;
uses crt;
var
  a, b, c, x, y, z, i, UCLN: integer;
  s: extended;

function tinh_giai_thua(var x: integer): extended;
var i: integer;
begin
  tinh_giai_thua := 1;
  for i := 1 to x do
    tinh_giai_thua := tinh_giai_thua * i;
end;

function tinh_luy_thua(var x, y: integer): extended;
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

function tim_UCLN(var a, b: integer): integer;
var n, i: integer;
begin
  tim_UCLN := 1;
  n := a;
  if a > b then
    n := b;
  for i := n downto 1 do
    if (a mod i = 0) and (b mod i = 0) then
	begin
	  tim_UCLN := i;
	  break;
	end;
end;

begin
clrscr;
  repeat write('Nhap a = '); readln(a); until (a >= 0);
  repeat write('Nhap b = '); readln(b); until (b >= 0);
  repeat write('Nhap c = '); readln(c); until (c >= 0);
  repeat write('Nhap x = '); readln(x); until (x >= 0);
  repeat write('Nhap y = '); readln(y); until (y >= 0);
  repeat write('Nhap z = '); readln(z); until (z >= 0);
  s := 0;
  UCLN := tim_UCLN(a, c);
  s := tinh_luy_thua(a, x) + tinh_luy_thua(b, y) 
  + tinh_luy_thua(c, z) + tinh_giai_thua(UCLN);
  writeln('S = ', s:0:0);
readln;
end.
