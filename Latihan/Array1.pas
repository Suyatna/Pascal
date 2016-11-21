program CobaArray;
uses crt;

const
     maks=3;

type
    array_nilai=array[1..maks] of real;

var
   nama:array[1..10] of string;
   //angka:array[1..maks] of integer;

   nilai_kehadiran:array_nilai;
   nilai_tugas:array_nilai;
   nilai_UTS:array_nilai;
   nilai_UAS:array_nilai;

   nilai_akhir:array_nilai;
   awal:real;

procedure tambah_data(berapa_mhs:integer; var nilai_kehadiran,nilai_tugas,nilai_UTS,nilai_UAS:array_nilai);
var
   awal:integer;
begin
     for awal:=1 to berapa_mhs do
      begin
           write('masukan nilai kehadiran mahasiswa ke-',awal,' :');
           readln(nilai_kehadiran[awal]);
           write('masukan nilai tugas mahasiswa ke-',awal,' :');
           readln(nilai_tugas[awal]);
           write('masukan nilai UTS mahasiswa ke-',awal,' :');
           readln(nilai_UTS[awal]);
           write('masukan nilai UAS mahasiswa ke-',awal,' :');
           readln(nilai_UAS[awal]);
      end;
end;
function hitung_nilai_akhir(berapa_mhs:integer;nilai_kehadiran,nilai_tugas,nilai_UTS,nilai_UAS:array_nilai):real;
var
   awal:integer;
begin
     for awal:=1 to berapa_mhs do
      begin
          nilai_akhir:=(nilai_kehadiran*0.1)+(nilai_tugas*0.2)+(nilai_UTS*0.3)+(nilai_UAS*0.4);
          hitung_nilai_akhir:=nilai_akhir;
      end;
end;
procedure tampilan_data(berapa_mhs:integer;nilai_akhir:array_nilai);
var
   awal:integer;
begin
     for awal:=1 to berapa_mhs do
      begin
           writeln();
           write('nilai mahasiswa ke-',awal,' =',hasil[awal]);
      end;
end;
// main program
begin
     tambah_data(maks, nilai_kehadiran,nilai_tugas,nilai_UTS,nilai_UAS);
     hitung_nilai(maks, nilai_kehadiran,nilai_tugas,nilai_UTS,nilai_UAS);
     tampilan_data(maks, nilai_kehadiran,nilai_tugas,nilai_UTS,nilai_UAS);


end.
