program Bio;

uses crt;
var
   Nama:string;
   Umur:integer;
   Status:string;
   Hobi:string;
   Ntel:string;
   Email:string;

begin

     clrscr;
     gotoxy(28,10); writeln('Masukan Data Diri Anda');
     gotoxy(28,12); writeln('Nama         :    '); gotoxy(45,12); readln(Nama);
     clrscr;
     gotoxy(28,12); writeln('Umur         :    '); gotoxy(45,12); readln(Umur);
     clrscr;
     gotoxy(28,12); writeln('Status       :    '); gotoxy(45,12); readln(Status);
     clrscr;
     gotoxy(28,12); writeln('Hobi         :    '); gotoxy(45,12); readln(Hobi);
     clrscr;
     gotoxy(28,12); writeln('Nomor Telpon :    '); gotoxy(45,12); readln(Ntel);
     clrscr;
     gotoxy(28,12); writeln('E-mail       :    '); gotoxy(45,12); readln(Email);

     clrscr;
     gotoxy(19,8); writeln('Hai, Nama saya ',Nama); read;
     gotoxy(19,10); writeln('Saya sudah berumur ',Umur); read;
     gotoxy(19,12); writeln('Status saya ',Status); read;
     gotoxy(19,14); writeln('hobi saya adalah ',Hobi); read;
     gotoxy(19,16); writeln('Nomor Telpon saya adalah ',Ntel); read;
     gotoxy(19,18); writeln('E-mail saya ',Email); readln;

end.
