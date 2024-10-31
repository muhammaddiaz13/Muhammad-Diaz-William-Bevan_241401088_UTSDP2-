program hitung_angka;
uses crt;

var
n, i, angka: integer;
total, rata_rata: real;

begin
    clrscr;
    write('N : '); readln(n);

    total := 0;
    rata_rata := 0;

    for i := 1 to n do 
    begin        
    write('Angka ke-',i,': '); readln(angka);
    total := total + angka;
    end;
    
    rata_rata := total / n;

    writeln('Jumlah Total : ',total:0:0);
    write('Jumlah Rata-rata : ',rata_rata:0:2);
    readln;
end.
