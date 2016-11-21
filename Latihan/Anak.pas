program Anak_ayam;

uses crt;

var
ka:integer;
jb:integer;
ta:integer;
nom:integer;
aym:integer;
batas:integer;
kata_sandi:string;
kesempatan:integer;
jumlah:integer;
sisa:integer;
i:integer;


begin
     kesempatan:=1;
     repeat
           write('Masukan Passwords (Kesempatan ke-',kesempatan,') : '); readln(kata_sandi);
     if (kata_sandi='1234') then
         begin
              writeln('Password anda benar! Selamat Datang!');
              writeln('Tekan Enter!'); readln;
              clrscr;

             writeln('Menu');
             writeln('1. Kasus anak ayam');
             writeln('2. Jumlah bilangan genap');
             writeln('3. Tampilan angka segitiga');
             writeln('4. Keluar');
             writeln('Masukan pilihan [1..4] : '); readln(nom);
             clrscr;

                    if (nom=1) then
                    begin
                         write('Masukan Jumlah Ayam:  '); readln(aym);
                         writeln('----------------------');
                         sisa:=aym;
                         for i:=aym downto 1 do
                         begin
                              write('Anak ayam turun ', sisa);

                              sisa:= sisa-1;

                              if (sisa=0) then
                                 writeln(', mati satu tinggal induknya')
                              else
                                 writeln(', mati satu tinggal ',sisa);
                         end;

                              write('Press any key to continue......'); readln;
                     end;
                     if (nom=2) then
                    begin
                         write('Masukan batas bilangan :  '); readln(batas);
                         writeln('----------------------');
                         writeln('Jumlah bilangan genap  = 2 + ',batas);
                         writeln('                       = ',2+batas);

                    end;

                              write('Press any key to continue......'); readln;
             end;
                     break;

    kesempatan := kesempatan + 1;
     if (kesempatan > 3) then
      begin
     writeln('----------------------');
     writeln('Maaf kesempatan anda telah habis');
      end;
    until
    (kesempatan > 3);
    readln;


end.
