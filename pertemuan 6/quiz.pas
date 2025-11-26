program CekBeberapaBilanganPrima;
uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  if n < 2 then
  begin
    IsPrime := false;
    exit;
  end;

  if n = 2 then
  begin
    IsPrime := true;
    exit;
  end;

  if n mod 2 = 0 then
  begin
    IsPrime := false;
    exit;
  end;

  batas := trunc(sqrt(n));
  for i := 3 to batas do
  begin
    if n mod i = 0 then
    begin
      IsPrime := false;
      exit;
    end;
  end;

  IsPrime := true;
end;

{ Program Utama }
var
  i, n, bil: integer;
begin
  clrscr;
  writeln('=== CEK BEBERAPA BILANGAN PRIMA ===');
  write('Masukkan jumlah bilangan yang ingin dicek: ');
  readln(n);
  writeln;

  for i := 1 to n do
  begin
    write('Masukkan bilangan ke-', i, ': ');
    readln(bil);

    if IsPrime(bil) then
      writeln(bil, ' adalah bilangan PRIMA.')
    else
      writeln(bil, ' adalah bilangan NON-PRIMA.');

    writeln;
  end;

  writeln('Pengecekan selesai. Terima kasih!');
  readln;
end.
