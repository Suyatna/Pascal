program Kelipatan_empat;

var
   n:integer;
   i:integer;
   jumlah:integer;
   x:integer;
   rerata:integer;

begin
     write('masukan data = '); readln(n);
     jumlah:=0;
     for i:=1 to n do
         writeln(' ',i); readln(x);

     jumlah:=jumlah+x;

     rerata:=jumlah div n;
     write('rerata = ',rerata); readln;

end.
