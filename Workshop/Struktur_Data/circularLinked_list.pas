program circularLinked;

type
    pointer=^node;
    node=record
        info:integer;
        next:pointer;
    end;

var
    baru,awal,akhir,bantu,phapus,lama:Pointer;


procedure create();
begin
        awal:=nil;
        akhir:=nil;
end;


procedure addFront(bilangan:Integer);
begin
    New(baru);
    baru^.info:=bilangan;
    
    if awal = nil then
        begin     
            baru^.next := baru;
            awal := baru;
            akhir:=baru;
        end
    else
        begin
            baru^.next := awal;
            awal:=baru;
            akhir^.next:=awal;
        end;
end;


procedure addBack(bilangan:Integer);
begin
    New(baru);
    baru^.info:=bilangan;

    if awal = Nil then
        begin
            baru^.next := awal;
            awal:=baru;
            akhir^.next:=awal;
        end
        else
            begin
                akhir^.next:=baru;
                akhir:=baru;
                akhir^.next:=awal;
            end;
end;


procedure addMiddle(bilangan:Integer);
var
    ketemu:Boolean;
    dataCari:Integer;
    bil:Integer;

begin
    ketemu:=False;
    bantu:=awal;
    Write('Cari data : '); ReadLn(bil);
    dataCari:=bil;
    while (not ketemu) and (bantu<>akhir) do
        begin
            if (dataCari = bantu^.info) then
            ketemu:=True
            else
                bantu:=bantu^.next;
        end;
    
    if ketemu then
        begin
            New(baru);
            baru^.info:=bilangan;
            if bantu = akhir then
                begin
                    akhir^.next:=baru;
                    akhir:=baru;
                    akhir^.next:=awal;
                end
                else
                    begin
                        baru^.next:=bantu^.next;
                        bantu^.next:=baru;
                    end;
        end
        else
            WriteLn('Data Tidak Ada!');
end;


procedure addWhere(bilangan:Integer);
var
    n:Integer;
    baru2:Pointer;
begin
New(baru);
baru:=awal;

Write('cari posisi ke berapa? : ' ); ReadLn(n);
    while n-1<>0 do
    begin
         n:=n-1;
         baru:=baru^.next;
    end;

    New(baru2);
    baru2:=baru^.next;

    New(bantu);
    bantu^.info:=bilangan;
    bantu^.next:=baru2;
    baru^.next:=bantu;
end;

procedure removeFront;
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
            awal:=awal^.next;
            akhir^.next:=awal;        
        end;

    Dispose(phapus);
end;

procedure removeBack(bil:Integer);
begin
    baru:=awal;

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
            bil:=akhir^.info;
            while phapus^.next<>akhir do
                begin
                    phapus:=phapus^.next;
                end;
            akhir:=phapus;
            phapus:=phapus^.next;
            akhir^.next:=awal;
        end;
    Dispose(phapus);
end;


procedure removeMiddle;
var
    ketemu:Boolean;
    dataCari:Integer;
    bil:Integer;

begin
    ketemu:=False;
    bantu:=awal;
    Write('Cari data yang akan di hapus : '); ReadLn(bil);
    dataCari:=bil;
    while (not ketemu) and (bantu<>akhir) do
        begin
            if (dataCari = bantu^.info) then
            ketemu:=True
            else
                bantu:=bantu^.next;
        end;


        if ketemu then
        begin
            phapus:=awal;
            bil:=phapus^.info;
            bil:=phapus;
            phapus:=phapus^.next;
            if bantu = akhir then
                begin
                    bil:=akhir^.info;
                    while phapus^.next<>akhir do
                        begin
                            phapus:=phapus^.next;
                        end;
                    akhir:=phapus;
                    phapus:=phapus^.next;
                    akhir^.next:=awal;
                end
                else
                    bantu^.next:=phapus^.next;
            Dispose(phapus);
        end
        else
            WriteLn('Data Tidak Ada!');
end;

procedure removeWhere;
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
            end;
      Dispose(phapus);
end;


procedure viewAll;
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
                Write(bantu^.info, ' ');
                bantu := bantu^.next;
            end;

            Write(bantu^.info); // node cuma satu
            writeln;
        end;
end;

//program utama
begin
    create;
    addFront(90);
    addFront(80);
    addFront(70);
    addFront(65);
    addBack(60);
    WriteLn();
    viewAll;

    removeMiddle;
    //addMiddle(2000);
    //removeBack(60);
    //addWhere(1000);
    viewAll;
    ReadLn;
end.