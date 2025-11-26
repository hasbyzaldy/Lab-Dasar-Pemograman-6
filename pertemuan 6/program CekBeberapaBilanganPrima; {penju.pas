program CekBeberapaBilanganPrima; {penjudulan program}
uses crt, math; {crt : membersihkan output
                 math : di gunakan untuk fungsi matematika}

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var {variabel lokal untuk menyimpan data i dan batas}
  i, batas: integer; {i untuk for dan batas untuk batasnya}
begin {bigen kecil untuk memulai program anaknya}
// TODO 1: Handle bilangan kurang dari 2
  if n < 2 then {jika n leibh kecil dari 2 maka}
  begin {memulai program if}
    IsPrime := false; {jika if nya terpenuhi maka isprime nya salah/false karena bilangan prima dimulai dari 2}
    exit; {untuk keluar}
  end; {mengakhiri program if}
// TODO 2: Handle bilangan 2
  if n = 2 then {jika n = 2 maka}
  begin {memulai program if}
    IsPrime := true; {jika if nya terpenuhi maka isprime nya benar/true karena 2 adalah bilngan prima}
    exit; {untuk keluar}
  end; {mengakhiri program if}
// TODO 3: Handle bilangan genap
  if n mod 2 = 0 then {jika n mod 2 = 0 maka}
  begin {memulai program if}
    IsPrime := false; {jika if nya terpenuhi maka isprime nya salah/false karena bilangan genap selain 2 bukan bilangan prima}
    exit; {untuk keluar}
  end; {mengakhiri program if}
// TODO 4: Cek faktor ganjil sampai akar kuadrat n
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat berapa
  for i := 3 to batas do {kenapa for i di mulai dari 3 ? 
                          karena bilagan prima di mulai dari 2 dan 2 sudah di cek di atas, jadi lanjut cek dari 3}
// TODO 5: Return true jika lolos semua pengecekan
  begin
    if n mod i = 0 then {jika n mod i = 0 maka}
    begin 
      IsPrime := false; {jika if nya terpenuhi maka isprime nya salah/false atau bukan bilanga prima}
      exit;
    end;
  end;

  IsPrime := true; {jika if nya tidak terpenuhi maka isprime nya benar/true atau bilangan prima}
end;

{ Program Utama }
var {variabel global untuk meyimpan data i , n dan bil}
  i, n, bil: integer; {i : untuk for
                       n : untuk batas nilai yang mau di cek
                       bil : untuk menyimpan bilangan yang akan di cek}
begin
  clrscr; {untuk membersihkan output}
  // minta user masukkan
  writeln('=== CEK BEBERAPA BILANGAN PRIMA ==='); {hiasan supaya bagus}
  write('Masukkan jumlah bilangan yang ingin dicek: '); {untuk meminta user memasukan jumlah bilangan yang mau di cek}
  readln(n); {membaca angka yang di masukan user dan di simpan di variabel n}
  writeln; 
  for i := 1 to n do {utuk i = 1 sampai n itu untuk perulangan sebanyak n kali sesuai inputan user}
  begin
    write('Masukkan bilangan ke-', i, ': '); {ini untuk memasukan bilangan yang harus di cek}
    readln(bil); {menyimpan input user ke variabel bil}
    // Memanggil function IsPrime
    if IsPrime(bil) then {memanggil function isprime dan mengecek hasilnya true atau false}
      writeln(bil, ' adalah bilangan PRIMA.') {jika true maka ter output bilangan prima}
    else
      writeln(bil, ' adalah bilangan NON-PRIMA.'); {jika false maka ter output bilangan non prima}

    writeln;
  end;

  writeln('Pengecekan selesai. Terima kasih!'); {menampilkan kata terimakasih saat semua pengecekan selesai}

end.