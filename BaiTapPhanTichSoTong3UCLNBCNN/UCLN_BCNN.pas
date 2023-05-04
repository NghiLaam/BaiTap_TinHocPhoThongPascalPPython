program UCLN_BCNN;
uses crt;
var
  a, b, n, i, UCLN, BCNN: integer;
begin
clrscr;
  repeat
    write('Nhap a = '); readln(a);
  until (a > 0);
  repeat
    write('Nhap b = '); readln(b);
  until (b > 0);

  n := a;
  if a > b then
    n := b;
  for i := n downto 1 do
    if (a mod i = 0) and (b mod i = 0) then
	begin
	  UCLN := i;
	  break;
	end;

  n := a;
  if a < b then
    n := b;
  while true do
  begin
    if (n mod a = 0) and (n mod b = 0) then
	begin
	  BCNN := n;
	  break;
	end
	else
	  n := n + 1;
  end;

  writeln('UCLN: ', UCLN, ' BCNN: ', BCNN);

readln;
end.
