program coba_array_of_record;
uses crt;

cons
    maks=10;

type
    mhs=record
      nim:string;
      nama:string;
      umur:integer;
      nilai_kehadiran:real;
      nilai_tugas:real;
      nilai_uts:real;
      nilai_uas:real;
      indeks:char    //80,65,50,30
      end;

   array_mhs=array[1..maks] of mhs;

var
   mahasiswa:array_mhs;

procedure nilai()
  begin
       for i:=1 to maks do
     begin
     write('masukan nim = ');readln(mhs.nim);
     write('masukan nama= ');readln(mhs.nama);
     write('masukan umur= ');readln(mhs.umur);
     end;


begin

end.
