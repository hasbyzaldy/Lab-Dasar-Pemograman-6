uses crt;

var
    nilai: integer;

begin
    clrscr;

    write('masukan nilai : '); readln(nilai);

    // statement if
    // if (nilai <= 65) then
    //     writeln('Anda tidak luslus');
    
    // statment if else
    // if (nilai <= 65) then
    //     begin
    //         writeln('anda tidak lulus')
    //     end
    // else
    //     begin
    //         writeln('anda lulus !');
    //     end;

    //statement tiga kondisi
    // if (nilai = 100) then
    //     begin
    //         writeln('perfect')
    //     end
    // else if (nilai <= 65) then
    //     begin
    //         writeln('anda tidak lulus')
    //     end
    // else
    //     begin
    //         writeln('anda lulus')
    //     end;

    // nested if
    // if (nilai <= 65) then
    //     begin
    //         writeln('anda tidak lulus');
    //     end
    // else
    //     begin
    //         if (nilai = 100) then
    //             begin
    //                 writeln('anda lulus dan hebat');
    //             end
    //         else
    //             begin
    //                 writeln('anda lulus');
    //             end
    //     end;

    // statment case off
    case nilai of
        1: writeln('senin');
        2: writeln('selasa');
        3: writeln('rabu');
        4: writeln('kamis');
        5: writeln('jumat');
        6: writeln('sabtu');
        7: writeln('minggu');
    else
        writeln('inputan tidak valid');
    end;
end.