//program test;

// unit library untuk menjalankan fungsi clear screen
uses crt;

var
    // string
    // mana_variabel : tipe variabel
    nama : string;
    // interger
    umur : integer;
    // char = huruf
    jenis_kelamin : char;
    // real = desimal
    ip : real;

// konstanta
const
    pi = 3.14;
    gravitasi = 9.8;

{* contoh *}
begin
    clrscr;
    // writeln('hello world');

    writeln('nama mahasiswa : '); readln (nama);
    writeln('umur mahasiswa : '); readln (umur);
    writeln('jenis kelamin mahasiswa : '); readln (jenis_kelamin);
    writeln('IP mahasiswa : '); readln (ip);

    clrscr;
    writeln('ini data yang anda masukan');
    writeln('nama mahasiswa yang anda input : ', nama);
    writeln('umur mahasiswa yang anda input : ', umur);
    writeln('jenis kelamin mahasiswa yang anda input : ', jenis_kelamin);
    writeln('IP mahasiswa yang anda input : ', ip:0:2);

end.