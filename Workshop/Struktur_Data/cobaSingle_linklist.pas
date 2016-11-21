Program cobaSingle_linklist;

type
    pointer=^node;
    node=record
        info:integer;
        next:pointer;
    end;

var
    awal,akhir,baru,bantu,phapus,lama:pointer;


procedure create();
begin
        awal:=nil;
        akhir:=nil;
end;


procedure addFirst(bilangan:integer);
begin
    new(baru);
    baru^.info:=bilangan;
    if awal=nil then
        begin
          baru^.next:=nil;
          akhir:=baru;
        end
    else
          baru^.next:=awal;

    awal:=baru;
end;


procedure removeFirst;
begin
    
    if awal=nil then
        Writeln('maaf linklist kosong')
    else if awal=akhir then //node hanya 1
        begin
            phapus:=awal;

            awal:=nil;
            akhir:=nil;
        end
    else //lebih dari 1
        begin
            phapus:=awal;
            awal:=phapus^.next;        
        end;

    Dispose(phapus);
end;

procedure addLast(elemen:integer);
begin
    new(baru);
    baru^.info:=elemen;
    
    if awal=nil then
        awal:=baru
    else
        akhir^.next:=baru;

    akhir:=baru;
    baru^.next:=nil;
end;

procedure removeLast(var elemen:Integer);
begin
    phapus:=awal;
    elemen:=baru^.info;
    if awal=akhir then
        begin
            awal:=nil;
            akhir:=nil;
        end
        else
            while phapus^.next<>akhir do
                phapus:=phapus^.next;
                
                akhir:=phapus;
                akhir^.next:=Nil;
end;

procedure addMiddle(elemen:Integer);
var
    k:Integer;
    baru2:Pointer;
begin
New(baru);
baru:=awal;

Write('cari posisi dari bawah : ' ); ReadLn(k);
    while k-1<>0 do
    begin
         k:=k-1;
         baru:=baru^.next;
    end;

    New(baru2);
    baru2:=baru^.next;

    New(bantu);
    bantu^.info:=elemen;
    bantu^.next:=baru2;
    baru^.next:=bantu;
end;


procedure removeMiddle;
var
    setelah:Pointer;
    k:Integer;
begin

    if awal=Nil then
        WriteLn('data tidak ada')
        else
            Begin
            lama:=awal;
            write('hapus data ke berapa? : '); ReadLn(k);
            while k-1<>0 do
                begin
                    k:=k-1;
                    lama:=lama^.next;
                end;
                phapus:=lama^.next;
                setelah:=phapus^.next;
                lama^.next:=setelah;
                Dispose(phapus);
            end;
end;


procedure viewAll;
begin
    if awal=nil then
        begin
            Writeln('maaf linklist kosong');
        end
    else
        begin
            bantu:=awal;
            WriteLn();
            while bantu<>nil do
            begin
                Writeln(bantu^.info,' ');
                bantu:=bantu^.next;
            end;
            WriteLn();
        end;
end;


//program utama
begin
  create;
    addFirst(3);
    addFirst(10);
    addFirst(8);
    addLast(9);
    viewAll;

    //addMiddle(1000);
    //removeMiddle;
    //removeFirst;

//   if (not isEmpty) then
//     removeFirst;  

    viewAll;
    Readln;
end.

{
    begin
    if awal=nil then
        begin
            Writeln('maaf linklist kosong');
        end
    else
        begin
            bantu := akhir^.next;
            while (bantu <> akhir) do // node ga satu
            begin
                write(bantu^.info, ' ');
                writeln;
                bantu := bantu^.next;
            end;

            write(bantu^.info); // node cuma satu
            writeln;
        end;
end;
}