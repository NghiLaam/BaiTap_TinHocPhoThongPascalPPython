program ctc_nhap_in_mang;
uses crt;
var
  n: integer;
  a: array[1..150] of integer;

procedure nhap_mang;
var i: integer;
begin
  repeat
    write('Nhap kich thuoc: ');
	readln(n);
  until (n > 0) and (n < 151);
  for i := 1 to n do
  begin
    write('[', i, '] = ');
	readln(a[i]);
  end;
end;

procedure in_mang;
var i: integer;
begin
  write('Mang: ');
  for i := 1 to n do
    write(a[i], ' ');
end;

begin
clrscr;
  nhap_mang;
  in_mang;
readln;
end.
