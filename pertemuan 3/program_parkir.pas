program parkir;
uses crt;

var
  jenis, lama, total: longint;

begin
  clrscr;
  write('Jenis kendaraan (1=Motor, 2=Mobil, 3=Truk): '); readln(jenis);
  write('Lama parkir (jam): '); readln(lama);

  if jenis = 1 then
  begin
    total := lama * 2000;
    if total > 10000 then total := 10000;
  end
  else if jenis = 2 then
  begin
    total := lama * 5000;
    if total > 25000 then total := 25000;
  end
  else if jenis = 3 then
  begin
    total := lama * 8000;
    if total > 40000 then total := 40000;
  end
  else total := 0;

  writeln('Total biaya parkir: Rp ', total);
end.