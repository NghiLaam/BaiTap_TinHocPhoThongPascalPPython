program tong_chan_le_4_chu_so;
uses crt;
var
  n: integer;

 procedure nhap_so;
 begin
  repeat
	write('Nhap so nguyen 4 chu so: '); readln(n);
  until (n > 999) and (n < 10000);
end;

procedure tinh_tong_chan_le;
var tongChan, tongLe: integer;
begin
  tongChan := 0;
  tongLe := 0;
  while n > 0 do
  begin
    if n mod 2 = 0 then
	  tongChan := tongChan + (n mod 10)
	else
	  tongLe := tongLe + (n mod 10);
	n := n div 10;
  end;
  write('tong cac so chan: ', tongChan, ' tong cac so le: ', tongLe);
end;

begin
clrscr;
  nhap_so;
  tinh_tong_chan_le;
readln;
end.
