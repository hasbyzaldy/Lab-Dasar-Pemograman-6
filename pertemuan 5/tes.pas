uses crt;
var 
    nilai : array [1..5] of integer;
begin 
    clrscr;
    for i := 1 to 5 do 
    begin
        write('masukan nilai ke- ',i,': ');
        readln(nilai[i]);
    end;

    for i := 1 to 5 do
    writeln('nilai ke-',i,':')
end.