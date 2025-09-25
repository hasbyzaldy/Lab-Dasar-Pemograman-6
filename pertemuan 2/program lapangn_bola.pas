program lapangn_bola;

uses crt;

var
    p, l, Luas_lapangan, keliling_lapangan : integer;

begin 
    clrscr;

    p := 5;
    l := 2;
    
    luas_lapangan := p * l;
    keliling_lapangan := 2 * (p + l);

    writeln('luas lapangan : ', luas_lapangan, ' Meter');
    writeln('keliling lapangan : ', keliling_lapangan, ' Meter');
    
    readln;
end.

