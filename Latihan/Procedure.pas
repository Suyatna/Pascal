  program Procedure_And_Funciont;
   {kamus global}
   var
      sisi,volume,luas:integer;

   Procedure hitung_persegi(s:integer;var l:integer);
   {kamus lokal}
   begin

        l:=s*s;

   end;

   function hitung_volume_kubus(si:integer):integer;
   var
   volume:integer;

   begin
        volume:=si*si*si;
        hitung_volume_kubus:=volume;
   end;
{program utama}
begin
     write('masukan sisi persegi : '); readln(sisi);

     hitung_persegi(sisi,luas);

     writeln('Luas persegi adalah = ',luas); readln;

     volume:=hitung_volume_kubus(sisi);
     writeln('Volume kubus adalah = ',volume); readln;
end.
