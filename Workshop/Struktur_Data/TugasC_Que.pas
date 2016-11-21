program circular_queue;
uses crt;

type
    Pointer = ^Queue;
    Queue = record
          angka : integer;
          next  : Pointer;
    end;

var
   front, rear : Pointer;
   bilangan : integer;
   menu : integer;

procedure inisialisasi;
begin
    front := nil;
    rear := nil
end;

function kosong:boolean;
begin
    kosong := false;
    if(rear = nil) then
            kosong := true;
end;

procedure enqueue(bilangan : integer);
var
   baru : Pointer;
begin
    new(baru);
    baru^.angka := bilangan;
    baru^.next := front;
    if(kosong) then
    begin
        rear := baru;
        front := baru;
    end
    else
         rear^.next := baru;

    rear := baru
end;


procedure dequeue;
var
   phapus : Pointer;
begin
    if(rear <> nil) then
    begin
    phapus := front;

    if(front = rear) then
    begin
              front := nil;
              rear := nil;

         end
        else
        begin
              front := phapus^.next;

         end;
         writeln(phapus^.angka);
         dispose(phapus);
      end
      else
          writeln('Data antrian kosong');
end;


procedure viewAll;
var
   bantu : Pointer;
begin
    if(rear = nil) then
          writeln('Antrian Kosong')
     else
     begin
          bantu := front;
          while(bantu <> rear) do
          begin
               write(bantu^.angka, ' ');
               bantu := bantu^.next;
          end;
          write(bantu^.angka);
          end;
end;


Procedure MenuPilihan(var Menu : integer);
{I.S.: User memilih salah satu menu}
{F.S.: Menampilkan hasil sesuai dengan menu yang di pilih}
begin
     clrscr;
     textcolor(11);
     writeln('>>>>>>>>>>           -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-          <<<<<<<<<<');
     writeln('>>>>>                             GAJI KARYAWAN                            <<<<<');
     writeln('>>>>>>>>>>           -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-          <<<<<<<<<<');
     writeln('                              -=-=Acount Option=-=-');
     writeln;
     writeln('                    1> Tambah Antrian');
     writeln('                    2> Tampil Antrian');
     writeln('                    3> Panggil Antrian');
     writeln('                    0> Keluar');
     writeln;
     write('                            Pilihan Anda   : ');readln(Menu);
     //Validasi menu pilihan
     while(Menu < 0) or (Menu > 3) do
     begin
     textcolor(red);
     gotoxy(9,21);
     write('Salah Pilih Menu Tekan Enter Untuk Melanjutkan !!!');
     readln;
     gotoxy(9,21);clreol;
     gotoxy(46,14);clreol;
     textcolor(white);
     readln(Menu);
     end; //EndWhile
end;


begin
    inisialisasi;
     repeat
     MenuPilihan(menu);
     Case(Menu)of
       1  :  begin
             clrscr;
             write('Tambah Antrian : ');readln(bilangan);
             enqueue(bilangan);
             readln;
             end;
        2  : Begin
               clrscr;
               writeln('Data yang mengantri : ');
               viewAll;
               readln;



              end;
         3  : Begin
               clrscr;
               write('Memanggil data antrian : ');
               dequeue;
               readln;


              end;

      end;
      until(Menu = 0);


end.
