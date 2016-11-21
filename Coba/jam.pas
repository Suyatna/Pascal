program selisih_jam;

type jam = record
                 hh:integer;
                 mm:integer;
                 ss:integer;
           end;
var
   j:jam;
   detik:integer;
   sisa:integer;
begin
     write('masukan detik = '); readln(detik);
     writeln;
     j.hh:=detik div 3600;
     sisa:=detik mod 3600;
     j.mm:=sisa div 60;
     j.ss:=sisa mod 60;
     writeln('jam   = ',j.hh);
     writeln('menit = ',j.mm);
     writeln('detik = ',j.ss);
     readln;


end.
