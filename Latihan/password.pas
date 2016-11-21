program coba_pw;
uses crt;

const
     password=1234;
var
   pass,i,j:integer;

begin
     i:=1;
     j:=3;
     repeat
           write('masukan password (',i,'):  ') ; readln(pass);
           if pass=password then
           begin
                writeln('password anda benar');
                writeln();
                writeln('tekan tombol..'); readln;
           end
           else

                if j=j-1 then
                begin
                writeln();
                writeln('password salah (',j,' kali lagi)!');
                writeln();
                writeln('tekan enter untuk memasukan password lagi'); readln;
                end
           else
               if j=0 then
               begin
               write();
               writeln('Maaf kesempatan anda telah habis');  readln;
               end;
               readln;
           clrscr;
      until ((pass=password)or(i=4));
      i:=i+1;

end.
