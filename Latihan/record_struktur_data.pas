program coba_record;
uses crt;


type
    mhs=record
      nim:string;
      nama:string;
      umur:integer;
      n_kehadiran,n_tugas,n_uts,n_uas,n_akhir:real;
      indeks:char;
     end;

     array_mhs=array of mhs;
var
   mahasiswa:array_mhs;
   data:integer;
   kata:string;

procedure input_data(data:integer; var mahasiswa:array_mhs );
var
   awal:integer;
begin   
        for awal:=0 to length(mahasiswa) do
        begin
            setlength(mahasiswa, awal + 1);
             write('masukan nim mahasiswa                  : '); readln(mahasiswa[awal].nim);
             write('masukan nama mahasiswa                 : '); readln(mahasiswa[awal].nama);
             write('masukan umur mahasiswa                 : '); readln(mahasiswa[awal].umur);

             write('masukan nilai kehadiran mahasiswa ke-',awal + 1,' : ');
             readln(mahasiswa[awal].n_kehadiran);
             write('masukan nilai tugas mahasiswa ke-',awal + 1,'     : ');
             readln(mahasiswa[awal].n_tugas);
             write('masukan nilai UTS mahasiswa ke-',awal + 1,'       : ');
             readln(mahasiswa[awal].n_uts);
             write('masukan nilai UAS mahasiswa ke-',awal + 1,'       : ');
             readln(mahasiswa[awal].n_uas);
         end;
end;

function akhir_nilai(var mahasiswa:array_mhs; data:integer):real;
begin
     mahasiswa[data].n_akhir:=(0.1*mahasiswa[data].n_kehadiran)+(0.2*mahasiswa[data].n_tugas)+(0.3*mahasiswa[data].n_uts)+(0.4*mahasiswa[data].n_uas);
     akhir_nilai:=mahasiswa[data].n_akhir;
end;

function hitung_indeks(var mahasiswa:array_mhs; data:integer):char;
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

procedure tampil_data(mahasiswa:array_mhs; data:integer);
var
   awal:integer;
   begin
        data:=0;
        for awal:=0 to length(mahasiswa)-1 do
        begin
             
             writeln('nim           : ',mahasiswa[awal].nim);
             writeln('nama          : ',mahasiswa[awal].nama);
             writeln('umur          : ',mahasiswa[awal].umur);
             mahasiswa[awal].n_akhir:=akhir_nilai(mahasiswa,data);
             writeln('nilai akhir   : ',mahasiswa[awal].n_akhir:0:2);
             mahasiswa[awal].indeks:=hitung_indeks(mahasiswa,data);
             writeln('Indeks        : ',mahasiswa[awal].indeks);
             //data:=data+1;

             writeln;
        end;
    end;

begin
    repeat    
        input_data(data,mahasiswa);
        tampil_data(mahasiswa,data);

        write('ingin memasukan nama lagi (y/n): '); readln(kata);
    until kata='n';

end.
