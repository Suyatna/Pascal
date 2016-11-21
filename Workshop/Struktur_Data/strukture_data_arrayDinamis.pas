program data_struktur_arrayDinamis;
uses crt;

type
    mhs=record
        nim:string;
        nama:string;
     end;   

var
   array_dinamis: array of integer;
   i,a:integer;
   angka:integer;

procedure input_data(data:integer; var mahasiswa:array_dinamis);
var
    awal:integer;
begin
    for awal:=1 to length(array_dinamis) do
    write('masukan nama mahasiswa: '); readln(mahasiswa[awal].nama);
end; 
  
procedure proses(mahasiswa:array_dinamis; var data:integer);
var
    i:integer;
begin
     i:=1;
        repeat
            setLength(array_dinamis,i);
            readln(angka);
            array_dinamis[i-1]:=angka;
            i:=i+1;
        until angka=-1;
end;
begin


    {
        writeln(length(array_dinamis)-1);
    for a := 0 to length(array_dinamis)-2 do
        write(array_dinamis[a],' ');
    }   

        readln;
end.
