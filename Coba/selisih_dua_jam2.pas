program Hitung_rerata;
var
   n:integer;
   x:integer;
   jumlah:integer;
   i:integer;
begin
     write('masukan n = '); readln(n);
     jumlah:=0;
     for i:=1 to (n-4) do
        write('  ',i); readln;
     for i:=1 to (n-3) do
        write('  ',i); readln;
     for i:=1 to (n-2) do
        write('  ',i); readln;
     for i:=1 to (n-1) do
        write('  ',i); readln;
     for i:=1 to (n) do
        write('  ',i); readln;

        readln;
end.
