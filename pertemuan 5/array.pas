uses crt;
var 
    nama : array [1..5] of string;
    i, j : integer;
    matrix : array [1..2, 1..3] of integer;

    kata, kata1, kata2 : string;
begin
    clrscr;
    // array 1 dimensi
    // nama[1] := 'edric';
    // nama[2] := 'muzayan';
    // nama[3] := 'raduola';
    // nama[4] := 'riski';
    // nama[5] := 'dimas';

    // // pakai perulangan untuk output semua array
    // writeln('daftar nama mahasiswa : ');
    // for i := 1 to 5 do
    //     writeln('nama ke-',i,' : ',nama[i]);

    
    // array 2 dimensi
    // matrix[1,1] := 2;
    // matrix[1,2] := 6;
    // matrix[1,3] := 8;
    // matrix[2,1] := 9;
    // matrix[2,2] := 0;
    // matrix[2,3] := 1;

    // for i := 1 to 2 do
    //     begin 
    //         for j := 1 to 3 do
    //             begin
    //                 write(matrix[i,j]);
    //             end;
    //     end;

    // string sebagai array
    // kata1 := 'hello';
    // kata2 := 'world';
    // kata := kata1 +' '+ kata2;

    // writeln('gabungan string menjadi : ',kata);

    // access string by array
    kata := 'laptop';
    writeln(kata);

    writeln('karakter pertama : ', kata[1]);
    writeln('karakter kelima : ', kata[5]);
    writeln('semua karakter di outputkan : ');

    for i := 1 to length(kata) do
        writeln('huruf ke-',i,': ', kata[i]);
end.