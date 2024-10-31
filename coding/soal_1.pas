program Kasir;
uses crt;

var 
  NamaAnggota, Hari : string;
  pasta_gigi, Sabun, es_krim : integer;
  Total, Diskon, Bayar : real;
  Poin : integer;

begin
  clrscr;
  Write('Nama Anggota : '); readln(NamaAnggota);
  Write('Hari : '); readln(Hari);
  Write('Pasta gigi : '); readln(pasta_gigi);
  Write('Sabun : '); readln(Sabun);
  Write('Es Krim : '); readln(es_krim);

  Total := (pasta_gigi * 16000) + (Sabun * 7000) + (es_krim * 20000);
  
  if (Hari = 'Senin') then
    Diskon := Total * 0.10
  else if (Hari = 'Selasa') then
    Diskon := Total * 0.05
  else if (Hari = 'Rabu') then
    Diskon := Total * 0.30
  else if (Hari = 'Kamis') then
    Diskon := Total * 0.08
  else
    Diskon := 0;

  if ((pasta_gigi + Sabun + es_krim) >= 10) then
    Diskon := Diskon + (Total * 0.05);

  Bayar := Total - Diskon;
  Poin := trunc(Total / 50000);

  Writeln('Output');
  Writeln('Total : Rp', Total:0:0);
  Writeln('Diskon : 10% + 5% = 15%');
  Writeln('Pembayaran : Rp', Bayar:0:0);
  Writeln('Poin : ', Poin);
  readln;
end.
