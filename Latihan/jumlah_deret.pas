program Deret_angka;
var
   i,deret:integer;
   angka:integer;

begin
     write('masukan angka = '); readln(angka);
     deret:=0;
     i:=1;
     while i<=angka do
     begin
          deret:=deret+i;
          i:=i+1;
     end;
     writeln('jumlah deret dari 1 - ',angka,' = ',deret);
     writeln();
     write('tekan sembarang...');
     readln();

end.
