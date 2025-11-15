program LuasLingkaran; {program untuk menghitung luas lingkaran menggunakan procedure dan function}
uses crt, math; {menggunakan crt untuk clrscr dan math untuk konstanta pi}

{---------------------------------------------------------}
{ 4️⃣ Procedure dengan Parameter (Masukan)                }
{---------------------------------------------------------}
procedure CetakLuasLingkaran(jari: real);  {prosedure dengan parameter jari-jari dan real sebagai tipe datanya}
// procedure untuk mencetak luas lingkaran dengan parameter jari-jari
var
  luas: real; {variabel untuk menyimpan hasil perhitungan luas}
begin
  luas := pi * jari * jari; {rumus mencari luas lingkaran}
  writeln('Hasil (Procedure)  -> Luas Lingkaran = ', luas:0:2); {menampilkan hasil luas dengan format 2 angka di belakang koma}
end;

{---------------------------------------------------------}
{ 5️⃣ Function dengan Parameter Masukan                  }
{---------------------------------------------------------}
function HitungLuasLingkaran(jari, dummy: real): real; 
// function untuk menghitung luas lingkaran (dummy hanya agar struktur sama)
begin
  HitungLuasLingkaran := pi * jari * jari; {rumus luas lingkaran}
end;

{---------------------------------------------------------}
{                  PROGRAM UTAMA                         }
{---------------------------------------------------------}
var
  panjang, lebar: real; {dipakai sebagai jari-jari dan dummy agar tidak menghapus struktur}
  hasil: real; {var untuk menyimpan hasil dari function HitungLuasLingkaran}
begin
  clrscr;
  writeln('=== PERBANDINGAN PROCEDURE DAN FUNCTION (LINGKARAN) ===');
  writeln;
  write('Masukkan Jari-jari Lingkaran : '); readln(panjang);  {"panjang" diganti menjadi jari-jari}
  lebar := 0; {dummy agar tidak mengurangi struktur}
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasLingkaran(panjang); 

  { Memanggil function (mengembalikan nilai) }
  hasil := HitungLuasLingkaran(panjang, lebar); 
  writeln('Hasil (Function)   -> Luas Lingkaran = ', hasil:0:2);
  
  writeln;
  writeln('Catatan: Procedure hanya menampilkan hasil.');  {procedure hanya mencetak hasil}
  writeln('         Function bisa digunakan untuk proses lanjut.'); {function bisa digunakan untuk proses lanjut}
  readln;
end.