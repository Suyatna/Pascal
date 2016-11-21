program Durasi_waktu;
uses wincrt;
const
satuhari = 60 * 60 * 24 ;
var
hr,jm,mn,dt,Detik : longint;
ulang : char   ;
begin
repeat
writeln;       
write   ('Masukan waktu (dalam detik) : ');
readln  (Detik);
writeln ('        ',Detik ,' Detik tediri dari : .... ');
hr      := Detik div satuhari ;
Detik   := Detik - hr* satuhari;
jm      := Detik div 3600 ;
Detik   := Detik - jm * 3600;
mn      := Detik div 60 ;
dt      := detik - mn  * 60 ;


        Writeln ('        ', hr,  ' hari  ');
        Writeln ('        ', jm,  ' jam   ');
        Writeln ('        ', mn,  ' menit ');
        Writeln ('        ', dt,  ' detik ');
        writeln();
         write ('Tulis n jika ingin keluar... : ');
     readln(ulang);
until (ulang = 'n');
end.
