program struktur_data_pointer;
uses crt;

var
   bilangan:integer;
   penunjuk:^integer;

   alamat:^word;

begin
     write('masukan satu bilangan: ');readln(bilangan);
     penunjuk:=@bilangan;
     alamat:=addr(penunjuk);

     writeln(bilangan);
     writeln(penunjuk^);
     writeln(alamat^);
     readln;
end.
