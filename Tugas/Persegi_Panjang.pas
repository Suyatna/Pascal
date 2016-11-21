program Menghitung_PersegiPanjang;

var
   Panjang:integer;
   Lebar:integer;

begin
     writeln('Menghitung Persegi Panjang:    ');
     writeln('-------------------------------------');
     write('Panjang  : '); readln(Panjang);
     write('Lebar    : '); readln(Lebar);
     writeln('-------------------------------------');
     writeln('Hasil Anda: ');
     writeln('-------------------------------------');
     writeln('Luas     : ',Panjang*Lebar);  read;
     write('Keliling : ',2*Panjang+2*Lebar); readln;

end.
