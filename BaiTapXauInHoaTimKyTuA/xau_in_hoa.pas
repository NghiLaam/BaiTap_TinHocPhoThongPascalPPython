program xau_in_hoa;
uses crt;
var
  s: string;
  i, dem: integer;
begin
clrscr;
  write('Nhap xau: '); readln(s);
  dem := 0;
  for i := 1 to length(s) do
  begin
    s[i] := upcase(s[i]);
	if s[i] = 'A' then
	  dem := dem + 1;
  end;
  writeln(s);
  writeln('Co ', dem, ' ky tu A');
readln;
end.
