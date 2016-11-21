program doubleLink_list;

type
    pointer=^node;
    node=record
        info:integer;
        next,prev:pointer;
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
            baru^.next := Nil;
            baru^.prev := Nil;
            awal:=baru;
            akhir:=baru;
        end
        else
            begin
                baru^.info := bilangan;
                baru^.prev := Nil;
                baru^.next := awal;
                awal^.prev := baru;
                awal := baru;
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
    addFront(90);
    addFront(80);
    addFront(70);


    viewAll;
    ReadLn;
end.