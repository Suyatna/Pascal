program Hitung_Harga;

var
   Menu_Makanan:integer;
   Porsi_Makanan:integer;
   Banyak_Makanan:integer;
   Jenis_Pesanan:integer;

   diskon_pajak:integer;
   pajak:real;
   harga_makanan:real;
   Bayar:real;
   total_harga:real;
   besar_diskon:real;
   besar_pajak:real;




begin
     writeln('Menumakanan    :');
     writeln('1.Capcay goreng');
     writeln('2.Kakap ASam-Manis');
     writeln('3.Puyung Hay');
     writeln('----------------------'); readln(Menu_Makanan);

     writeln('Porsi Makanan: ');
     writeln('----------------------');
     writeln('1.Kecil');
     writeln('2.Sedang');
     writeln('3.Besar');
     writeln('----------------------');
     writeln('Masukkan Porsi Makanan: '); readln(Porsi_Makanan);

     //if untuk capcay goreng
     if((Menu_Makanan=1)and(Porsi_Makanan=1)) then
        Harga_Makanan:=15000
      else if ((Menu_Makanan=1)and(Porsi_Makanan=2)) then
         Harga_Makanan:=20000
       else
         Harga_Makanan:=25000

     //if untuk kakap asam manis
     if(Menu_Makanan=2);
     begin
          if((Porsi_Makanan=3)and(Porsi_Makanan=1)) then
            Harga_Makanan:=10000
          else if((Menu_Makanan=3)and(Porsi_Makanan=2)) then
            Harga_Makanan:=15000
          else
            Harga_Makanan:=20000
     write('Berapa banyak pesanan: '); readln(banyak_Pesanan);

     writeln('Jenis Pesanan: ');
     writeln('---------------------');
     writeln('1.Makan Ditempat');
     writeln('2.Dibungkus');
     writeln('--------------------');
     writeln('Masukkan jenis Makanan: '); readln(Jenis_Makanan);

     //if untuk pajak
     pajak:=0
     if(Jenis_Pesanan=1);
       pajak:=0,1;

       total_harga:=Harga_Makanan*Banyak_Pesanan;
       besar_diskon:=diskon*total_harga;
       besar_pajak:=pajak*total_harga;

       bayar:=total_harga+besar_pajak-besar_diskon;

     writeln('Hasil Perhitungan: ');
     writeln('-----------------------');
     writeln('Diskon               :',besar_diskon);
     writeln('Total Harga          :',total_harga);
     writeln('Pajak                :',besar_pajak);
     writeln('Bayar                :',bayar);
     writeln('-----------------------');


     end;
end.
