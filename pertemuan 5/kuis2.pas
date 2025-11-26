program kuis2;
uses crt;

var
    n, i: integer;
    tugas, kuis, uts, uas, rata: real;

begin
clrscr;
    write('Masukkan jumlah mahasiswa : ');
    readln(n);
    writeln;

    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i);
        write('  Nilai Tugas : '); readln(tugas);
        write('  Nilai Kuis  : '); readln(kuis);
        write('  Nilai UTS   : '); readln(uts);
        write('  Nilai UAS   : '); readln(uas);

        rata := (tugas + kuis + uts + uas) / 4;

        writeln('  Nilai Rata-rata : ', rata:0:2);

        if rata >= 70 then
            writeln('  Keterangan: LULUS')
        else
            writeln('  Keterangan: TIDAK LULUS');
    end;

end.
