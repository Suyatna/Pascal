program Deret_Faktorial;

var
   i,nilai:integer;
   faktor:integer;

begin
     write('masukan nilai = '); readln(nilai);
     faktor:=1;
     for i:=nilai downto 1 do
         faktor:=faktor*i;
         
     writeln(nilai,'! = ',faktor);
     writeln();
     write('tekan sembarang tombol...');
     readln;

end.
