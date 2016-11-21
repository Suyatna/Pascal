program coba_record;
uses crt;

const
     maks=1;

type
    mhs=record
      nim:string;
      nama:string;
      umur:integer;
      n_kehadiran,n_tugas,n_uts,n_uas,n_akhir:real;
      indeks:char;
     end;

     array_mhs=array[1..maks] of mhs;
var
   mahasiswa:array_mhs;
   data:integer;

procedure input_data(data:integer; var mahasiswa:array_mhs );
var
   awal:integer;
   begin
        for awal:=1 to maks do
        begin
             write('masukan nim mahasiswa: '); readln(mahasiswa[awal].nim);
             write('masukan nama mahasiswa: '); readln(mahasiswa[awal].nama);
             write('masukan umur mahasiswa: '); readln(mahasiswa[awal].umur);

             write('masukan nilai kehadiran mahasiswa ke-',awal,' : ');
             readln(mahasiswa[awal].n_kehadiran);
             write('masukan nilai tugas mahasiswa ke-',awal,' : ');
             readln(mahasiswa[awal].n_tugas);
             write('masukan nilai UTS mahasiswa ke-',awal,' : ');
             readln(mahasiswa[awal].n_uts);
             write('masukan nilai UAS mahasiswa ke-',awal,' : ');
             readln(mahasiswa[awal].n_uas);
         end;
    end;
function akhir_nilai(mahasiswa:array_mhs; data:integer):real;
begin
     mahasiswa[data].n_akhir:=(0.1*mahasiswa[data].n_kehadiran)+(0.2*mahasiswa[data].n_tugas)+(0.3*mahasiswa[data].n_uts)+(0.4*mahasiswa[data].n_uas);
     akhir_nilai:=mahasiswa[data].n_akhir;
end;

function hitung_indeks(mahasiswa:array_mhs; data:integer):char;
begin
     if (mahasiswa[data].n_akhir>=80) then
      mahasiswa[data].indeks:='A'
      else
          if ((mahasiswa[data].n_akhir>=65) and (mahasiswa[data].n_akhir<80)) then
          mahasiswa[data].indeks:='B'
          else
              if ((mahasiswa[data].n_akhir>=50) and (mahasiswa[data].n_akhir<65)) then
              mahasiswa[data].indeks:='C'
              else
                  if ((mahasiswa[data].n_akhir>=30) and (mahasiswa[data].n_akhir<50)) then
                  mahasiswa[data].indeks:='D'
              else
              mahasiswa[data].indeks:='E';

          hitung_indeks:=mahasiswa[data].indeks;
end;

procedure tampil_data(mahasiswa:array_mhs; var data:integer);
var
   awal:integer;
   begin
        data:=0;
        for awal:=1 to maks do
        begin
             data:=data+1;
             writeln('nim: ',mahasiswa[awal].nim);
             writeln('nama: ',mahasiswa[awal].nama);
             writeln('umur: ',mahasiswa[awal].umur);
             mahasiswa[awal].n_akhir:=akhir_nilai(mahasiswa,data);
             writeln('nilai akhir',mahasiswa[awal].n_akhir:0:2);
             mahasiswa[awal].indeks:=hitung_indeks(mahasiswa,data);
             writeln('Indeks : ',mahasiswa[awal].indeks);
        end;
    end;
begin
     input_data(data,mahasiswa);
     writeln();
     tampil_data(mahasiswa,data);
     readln;
end.




















{procedure tambahdata(brp_mhs:integer; var mahasiswa:array_mhs);
var
   i:integer;

begin
     for i:=1 to brp_mhs do
   begin
   write('masukan nim mahasiswa: '); readln(mahasiswa[i].nim);
   write('masukan nama mahasiswa: '); readln(mahasiswa[i].nama);
   write('masukan umur mahasiswa: '); readln(mahasiswa[i].umur);

           write('masukan nilai kehadiran mahasiswa ke-',i,' :');
           readln(mahasiswa[i].n_kehadiran);
           write('masukan nilai tugas mahasiswa ke-',i,' :');
           readln(mahasiswa[i].n_tugas);
           write('masukan nilai UTS mahasiswa ke-',i,' :');
           readln(mahasiswa[i].n_uts);
           write('masukan nilai UAS mahasiswa ke-',i,' :');
           readln(mahasiswa[i].n_uas);

           writeln();
      end;
end;

function hitungdata(brp_mhs:integer; mahasiswa:array_mhs):real;
var
   i:integer;
   begin
        for i:=1 to brp_mhs do
        begin
             write('masukan nim mahasiswa: '); readln(mahasiswa[i].nim);
             write('masukan nama mahasiswa: '); readln(mahasiswa[i].nama);
             write('masukan umur mahasiswa: '); readln(mahasiswa[i].umur);

             writeln('tampilan nim mahasiswa = ',mahasiswa[i].nim);
             writeln('')

   if (round(mahasiswa[i].n_akhir)>=80) then
      mahasiswa[i].indeks:='A'
      else
          if (round(mahasiswa[i].n_akhir)>=65) and (round(mahasiswa[i].n_akhir)<80) then
          mahasiswa[i].indeks:='B'
          else
              if (round(mahasiswa[i].n_akhir)>=50) and (round(mahasiswa[i].n_akhir)<65) then
              mahasiswa[i].indeks:='C'
              else
                  if (round(mahasiswa[i].n_akhir)>=30) and (round(mahasiswa[i].n_akhir)<50) then
                  mahasiswa[i].indeks:='D'
              else
              mahasiswa[i].indeks:='E';

    writeln();


   end;
end;
begin
end.}
