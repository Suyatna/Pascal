program Latihan_anak_ayam;
uses crt;

var
   sisa:integer;
   ayam:integer;
   nomor:integer;
   bat:integer;
   segi:integer;

          procedure menampilkan_menu(var nom:integer);
          begin
             writeln('Menu');
             writeln('1. Kasus anak ayam');
             writeln('2. Jumlah bilangan genap');
             writeln('3. Tampilan angka segitiga');
             writeln('4. Keluar');
             writeln('Masukan pilihan [1..4] : '); readln(nom);
             clrscr;
          end;

          procedure anak_ayam(var jmlh:integer);
                    var
                       ank:integer;
                             begin
                                  for ank:=jmlh downto 2 do
                                      begin
                                            writeln('anak ayam turun ',ank,' mati satu tinggal ',ank-1);
                                      end;
                                  writeln('anak ayam turun ',ank,' mati satu tinggal induknya'); readln;
                             end;

function batas_bilangan(batas:integer):integer;
         var
         i:integer;
         kasus:integer;
       begin
         kasus:=0;
         if (batas mod 2=0) then
         begin
              write('jumlah bilangan genap = ');

         for i:=1 to batas do
              begin
                   if ((i mod 2=0)and(i<=batas)) then
                   begin
                        write(i);
                        kasus:=kasus+i;
                        if i <> batas then
                        write(' + ');
                   end;
              end;
              write();
              write('  =  ',kasus); readln;
         end
         else
         write('hasil bukan bilangan genap');
       end;

Procedure segitiga(b:integer);
         var
            angka, i, j:integer;
         begin
              angka:=1;
              for i:=1 to b do
              begin
                   for j := 1 to i do
                   begin
                        write(angka,' ');
                        angka := angka + 1;
                   end;
              writeln();
              end;

         end;

begin
     repeat
            clrscr;
            menampilkan_menu(nomor);
             if nomor=1 then
              begin
               write('masukan jumlah anak ayam = '); readln(ayam);
               anak_ayam(ayam);
              end;
             if nomor=2 then
              begin
               write('masukan batas bilangan genap = '); readln(bat);
               batas_bilangan(bat); readln;
              end;
             if nomor=3 then
              begin
               write('masukan angka = '); readln(segi);
               segitiga(segi); readln;
              end;
     until nomor=4;

end.
