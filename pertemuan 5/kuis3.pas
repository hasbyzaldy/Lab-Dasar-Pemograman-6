program kuis3;
uses crt;

var
  nilai: array[1..10] of integer;
  n, i, j, temp: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1 - 10): ');
    readln(n);

    writeln;
    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
        for j := 1 to n - i do
            if nilai[j] > nilai[j + 1] then
                begin
                temp := nilai[j];
                nilai[j] := nilai[j + 1];
                nilai[j + 1] := temp;
                end;

    writeln;
    writeln('Nilai UAS mahasiswa setelah diurutkan (dari terendah ke tertinggi):');
    for i := 1 to n do
    writeln('Mahasiswa ke-', i, ': ', nilai[i]);
end.
