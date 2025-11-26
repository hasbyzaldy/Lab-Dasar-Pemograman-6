program nomor1;
uses crt;
 
var
   NIM : array [1..10] of integer;
   i, total : integer;

begin
clrscr;
    write('Masukkan jumlah mahasiswa: '); readln(total);
    for i := 1 to total do
    begin
        write('Masukkan NIM mahasiswa ke-', i, ' : '); readln(NIM[i]);
    end;

    writeln('NIM mahasiswa yang dimasukkan (dari belakang): ');
    for i := total downto 1 do
    begin
        write(NIM[i], ' ');
    end;
    writeln;

end.