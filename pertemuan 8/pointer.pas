uses crt,sysutils;

var
  angka: integer;
  alamat_angka: ^integer; //pointer ke integer

begin
  clrscr;

    angka:= 10;
    alamat_angka:= @angka; //pointer yang menunjuk ke alamat variabel angka

    // writeln('isi dari variabel "angka" = ', angka);
    // writeln('alamat dari variabel "angka" = ', PtrUInt(@angka));
    // writeln('isi dari pointer = ', PtrUInt(alamat_angka));
    // writeln('isi nilai yang diambil pointer = ', alamat_angka^);

    alamat_angka^ := 20;
    writeln('isi angka setelah diubah (variabel angka) = ', angka);
    writeln('isi angka setelah diubah (variabel pointer) = ', alamat_angka^);
    
end.