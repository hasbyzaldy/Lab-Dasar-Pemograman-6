uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type
    TAlamat = record
        jalan : string[50];
        kota : string[50];
        kode_pos : integer;
    end;

    TMahasiswa = record
        nama : string[50];
        umur : integer;
        ipk : real;
        alamat : TAlamat; //nested record
    end;

{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}

var
    mhs : TMahasiswa;
    dataMhs : array [1..100] of TMahasiswa; //array record
    n, i : integer;

{============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}

begin
  clrscr;

  { INPUT DATA }
    // write('nama : '); readln(mhs.nama);
    // write('umur : '); readln(mhs.umur);
    // write('IPK : '); readln(mhs.ipk);

    // writeln('-- Space untuk Alamat --');
    // write('jalan : '); readln(mhs.alamat.jalan);
    // write('kota : '); readln(mhs.alamat.kota);
    // write('kode pos : '); readln(mhs.alamat.kode_pos);
  { OUTPUT }
    // writeln('HASIL OUTPUT');
    // writeln('nama : ', mhs.nama);
    // writeln('umur : ', mhs.umur);
    // writeln('alamat : ', mhs.alamat.jalan, ', ', mhs.alamat.kota, ', ', mhs.alamat.kode_pos);
{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}

  { WITH DO untuk nested record }

  { OUTPUT }
    // with mhs do
    //     begin
    //         writeln('nama : ', nama);
    //         writeln('umur : ', umur);
    //         writeln('IPK : ', ipk);
    //     end;

    // with mhs.alamat do
    //     begin
    //         writeln('alamat : ',jalan,', ',kota,', ',kode_pos);
    //     end;

{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

  { INPUT ARRAY }
    write('masukan jumlah mahasiswa : '); readln(n);

    for i := 1 to n do
        begin 
            writeln('mahasiswa ke-',i);
            write('nama : '); readln(dataMhs[i].nama);
            write('umur : '); readln(dataMhs[i].umur);
            write('IPK : '); readln(dataMhs[i].ipk);

            writeln('alamat');
            write('jalan : '); readln(dataMhs[i].alamat.jalan);
            write('kota : '); readln(dataMhs[i].alamat.kota);
            write('Kode pos : '); readln(dataMhs[i].alamat.kode_pos);

            writeln;
            writeln('DAFTAR MAHASISWA');
        end;
  { OUTPUT ARRAY }
    for i := 1 to n do
        begin
            writeln('mahasiswa ke-',i);

            with dataMhs[i] do
                begin
                    write('nama : ', nama);
                    write('umur : ', umur);
                    write('IPK : ', ipk);
                end;
            
            with dataMhs[i].alamat do
                begin
                    write('jalan : ', jalan);
                    write('kota : ', kota);
                    write('kode pos : ', kode_pos);
                end;
        end;
end.