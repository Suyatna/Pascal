program Baru;
uses crt;

var
   akhir:integer;

begin
     write('Masukan batas akhir angka : '); readln(akhir);

     if akhir mod 2=1 then
        write('Bilangan Ganjil')
     else
        write('Bilangan Genap'); readln;

end.
