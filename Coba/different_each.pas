program different_each;
var
   n:integer;
   x:integer;
   jumlah:integer;
   i:integer;
begin
     write('masukan n = '); readln(n);
     jumlah:=0;
     repeat
     for i:=1 to n do
        n:=n-1;

        write(' ',i);
     {for i:=1 to (n-3) do
        write('  ',i); readln;
     for i:=1 to (n-2) do
        write('  ',i); readln;
     for i:=1 to (n-3) do
        write('  ',i); readln;
     for i:=1 to (n-4) do
        write('  ',i); readln;}

        readln;
        until i=1;
end.
