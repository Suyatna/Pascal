program Ukuran_baju;
uses crt;

var
   size:char;

begin
     write('masukan ukuran [s/m/l]: '); readln(size);
     case size of
          's':writeln('kecil');
          'm':writeln('sedang');
          'l':writeln('besar');
          else writeln('ukuran salah');
     end;
     writeln();
     writeln('tekan tombol...');
     readkey();

end.
