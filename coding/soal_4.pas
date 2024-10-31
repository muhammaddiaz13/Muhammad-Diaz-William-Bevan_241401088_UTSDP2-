program nomor4_prima;
uses crt;

var
n, i, j: integer;
bil_prima : boolean;

begin
   clrscr;
    write('Masukkan nilai n: ');  readln(n);
    writeln('Bilangan prima antara 1 dan ', n, ' adalah:');
    for i := 2 to n do
    begin
    bil_prima := true;

    for j := 2 to round(sqrt(i)) do
    begin
      if (i mod j = 0) then
      begin
        bil_prima := false;
        break;
      end;
    end;

     if (bil_prima) then
     begin
      write(i);
      if i + 3 < n then
      write(', ');
     end;
  end;

     if (n > 1) then
     write(chr(8)); 
     writeln('');
end.

