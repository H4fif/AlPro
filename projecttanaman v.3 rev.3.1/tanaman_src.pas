program Data_Tumbuhan;
uses crt;
const
     max = 50;
type
    TDTumbuhan = record
            id: string[6];
            nama: string;
            kerajaan: string;
            divisi: string;
            kelas: string;
            ordo: string;
    end;
var
   data : array [1..max] of TDTumbuhan;
   bdata: integer;
   menu: char;
label
     IDTumbuhan,IsiData,IDTumbuhanEdit,IsiEditData;
{ Procedure Area }
procedure lihat_data;
var
   i:integer;
begin
     if bdata>0 then
        begin
        clrscr;
        gotoxy(34,2);writeln('DATA TANAMAN');
       gotoxy(1,3);
write('----------------------------------------------------------------------------');
gotoxy(1,4);
write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
gotoxy(1,5);
write('----------------------------------------------------------------------------');

              for i:=1 to bdata do
                 begin
                      gotoxy(1,5+i);
                      write('|');
                      if (data[i].id ='') then
                         begin
                              gotoxy(3,5+i);
                              write('--');
                         end
                      else
                      gotoxy(3,5+i);
                      write(data[i].id);
                      gotoxy(10,5+i);
                      write('|');

                      if (data[i].nama = '') then
                         begin
                              gotoxy(17,5+i);
                              write('--');
                         end
                      else
                      gotoxy(12,5+i);
                      write(data[i].nama);
                      gotoxy(25,5+i);
                      write('|');

                      if (data[i].kerajaan = '') then
                         begin
                              gotoxy(30,5+i);
                              write('--');
                         end
                      else
                      gotoxy(27,5+i);
                      write(data[i].kerajaan);
                      gotoxy(36,5+i);
                      write('|');

                      if (data[i].divisi = '') then
                         begin
                              gotoxy(41,5+i);
                              write('--');
                         end
                      else
                      gotoxy(38,5+i);
                      write(data[i].divisi);
                      gotoxy(47,5+i);
                      write('|');

                      if (data[i].kelas = '') then
                         begin
                              gotoxy(53,5+i);
                              write('-');
                         end
                      else
                      gotoxy(49,5+i);
                      write(data[i].kelas);
                      gotoxy(59,5+i);
                      write('|');

                      if (data[i].ordo = '') then
                         begin
                              gotoxy(67,5+i);
                              writeln('--');
                         end
                      else
                      gotoxy(61,5+i);
                      writeln(data[i].ordo);
                      gotoxy(76,5+i);
                      write('|');
                 end;
gotoxy(1,6+i);
writeln('----------------------------------------------------------------------------');
        writeln('Tekan tombol untuk melanjutkan. ');
        end
     else
         writeln('ERROR: Tidak ada data yang ditemukan atau data kosong. ');
         readkey;
end;

procedure tambah_data;
var
   i:integer;
begin
     if bdata<max then
        begin
             bdata:=bdata+1;
             IDTumbuhan:
             write('ID Tumbuhan       : ');readln(data[bdata].id);
                       if (data[bdata].id = '') then
                          begin
                               writeln('ERROR: ID Tanaman tidak boleh kosong.');
                               GoTo IDTumbuhan;
                          end;
             data[bdata].id:=upcase(data[bdata].id);
                       if (bdata = 1) then
                          GoTo IsiData
                       else
                       for i:=1 to (bdata-1) do
                                if (data[bdata].id = data[i].id) then
                                begin
                                     writeln('Error: ID Tanaman tidak boleh kosong.');
                                     bdata:=bdata-1;
                                     readkey;
                                     GoTo IDTumbuhan;
                                end;
             IsiData:
             write('Nama Tumbuhan     : ');readln(data[bdata].nama);
             data[bdata].nama:=upcase(data[bdata].nama);
             write('Kerajaan Tumbuhan : ');readln(data[bdata].kerajaan);
             data[bdata].kerajaan:=upcase(data[bdata].kerajaan);
             write('Divisi Tumbuhan   : ');readln(data[bdata].divisi);
             data[bdata].divisi:=upcase(data[bdata].divisi);
             write('Kelas Tumbuhan    : ');readln(data[bdata].kelas);
             data[bdata].kelas:=upcase(data[bdata].kelas);
             write('Ordo Tumbuhan     : ');readln(data[bdata].ordo);
             data[bdata].ordo:=upcase(data[bdata].ordo);
        end
     else
         writeln('Data Penuh');
         readkey;
end;

procedure cari_data_id;
var
   dicari:string;
   i:integer;
begin
     if bdata>0 then
        begin
             write('ID Tumbuhan yang dicari : ');readln(dicari);
             dicari:=upcase(dicari);
             i:=1;
             while(data[i].id<>dicari)and(i<bdata)do
                  i:=i+1;
                  if data[i].id = dicari then
                     begin
                          writeln('Data Ditemukan');
gotoxy(1,15);
write('----------------------------------------------------------------------------');
gotoxy(1,16);
write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
gotoxy(1,17);
write('----------------------------------------------------------------------------');
gotoxy(1,18);
write('|');
                         if (data[i].id ='') then
                            begin
                              gotoxy(3,18);
                              write('--');
                            end
                         else
                         gotoxy(3,18);
                         write(data[i].id);
                         gotoxy(10,18);
                         write('|');

                         if (data[i].nama = '') then
                            begin
                                 gotoxy(17,18);
                                 write('--');
                                 end
                         else
                         gotoxy(12,18);
                         write(data[i].nama);
                         gotoxy(25,18);
                         write('|');

                         if (data[i].kerajaan = '') then
                            begin
                                 gotoxy(30,18);
                                 write('--');
                            end
                         else
                         gotoxy(27,18);
                         write(data[i].kerajaan);
                         gotoxy(36,18);
                         write('|');

                         if (data[i].divisi = '') then
                            begin
                                 gotoxy(41,18);
                                 write('--');
                            end
                         else
                         gotoxy(38,18);
                         write(data[i].divisi);
                         gotoxy(47,18);
                         write('|');

                         if (data[i].kelas = '') then
                            begin
                                 gotoxy(53,18);
                                 write('-');
                            end
                         else
                         gotoxy(49,18);
                         write(data[i].kelas);
                         gotoxy(59,18);
                         write('|');

                         if (data[i].ordo = '') then
                            begin
                                 gotoxy(67,18);
                                 writeln('--');
                                 end
                            else
                         gotoxy(61,18);
                         writeln(data[i].ordo);
                         gotoxy(76,18);
                         write('|');
gotoxy(1,19);
writeln('----------------------------------------------------------------------------');
                     end
                   else
                       writeln('Error: Data tidak ditemukan. ');
        end
      else
          writeln('Error: Data kosong. ');
          readkey;
end;

procedure cari_data_nama;
var
   dicari:string;
   i,ditemukan:integer;
begin
     if bdata>0 then
        begin
             write('Nama Tumbuhan yang dicari : ');readln(dicari);
             dicari:=dicari;
             if (dicari <> '') then
                 dicari:=(upcase(dicari));
             i:=0;
             ditemukan:=0;
             while(data[i].nama<>dicari)and(i<=bdata)do
                  begin
                       i:=i+1;
                       if data[i].nama = dicari then
                          begin
                               writeln('Data Ditemukan');
gotoxy(1,15);
write('----------------------------------------------------------------------------');
gotoxy(1,16);
write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
gotoxy(1,17);
write('----------------------------------------------------------------------------');
gotoxy(1,18);
write('|');
                              if (data[i].id ='') then
                                 begin
                                      gotoxy(3,18);
                                      write('--');
                                 end
                              else
                              gotoxy(3,18);
                              write(data[i].id);
                              gotoxy(10,18);
                              write('|');

                              if (data[i].nama = '') then
                                 begin
                                      gotoxy(17,18);
                                      write('--');
                                 end
                              else
                              gotoxy(12,18);
                              write(data[i].nama);
                              gotoxy(25,18);
                              write('|');

                              if (data[i].kerajaan = '') then
                                 begin
                                      gotoxy(30,18);
                                      write('--');
                                 end
                              else
                              gotoxy(27,18);
                              write(data[i].kerajaan);
                              gotoxy(36,18);
                              write('|');

                              if (data[i].divisi = '') then
                                 begin
                                      gotoxy(41,18);
                                      write('--');
                                 end
                              else
                              gotoxy(38,18);
                              write(data[i].divisi);
                              gotoxy(47,18);
                              write('|');

                              if (data[i].kelas = '') then
                                 begin
                                      gotoxy(53,18);
                                      write('-');
                                 end
                              else
                              gotoxy(49,18);
                              write(data[i].kelas);
                              gotoxy(59,18);
                              write('|');

                              if (data[i].ordo = '') then
                                 begin
                                      gotoxy(67,18);
                                      writeln('--');
                                 end
                              else
                              gotoxy(61,18);
                              writeln(data[i].ordo);
                              gotoxy(76,18);
                              write('|');
gotoxy(1,19);
writeln('----------------------------------------------------------------------------');
                              ditemukan:=1;
                         end;
                 end;
             if (ditemukan = 0) then
                writeln('Error: Data tidak ditemukan. ')
        end
      else
          writeln('Error: Data kosong. ');
          readkey;
end;

procedure data_delete;
var
   dicari:string;
   posisi:integer;
   i:integer;
   ans:char;
begin
     if bdata>0 then
        begin
             write('ID Tumbuhan yang dicari : ');readln(dicari);
             dicari:=upcase(dicari);
             i:=1;
             while(data[i].id<>dicari)and(i<bdata)do
                  i:=i+1;
                  if data[i].id = dicari then
                     begin
                          writeln('Data Ditemukan');
gotoxy(1,15);
write('----------------------------------------------------------------------------');
gotoxy(1,16);
write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
gotoxy(1,17);
write('----------------------------------------------------------------------------');
gotoxy(1,18);
write('|');
                              if (data[i].id ='') then
                                 begin
                                      gotoxy(3,18);
                                      write('--');
                                 end
                              else
                              gotoxy(3,18);
                              write(data[i].id);
                              gotoxy(10,18);
                              write('|');

                              if (data[i].nama = '') then
                                 begin
                                      gotoxy(17,18);
                                      write('--');
                                 end
                              else
                              gotoxy(12,18);
                              write(data[i].nama);
                              gotoxy(25,18);
                              write('|');

                              if (data[i].kerajaan = '') then
                                 begin
                                      gotoxy(30,18);
                                      write('--');
                                 end
                              else
                              gotoxy(27,18);
                              write(data[i].kerajaan);
                              gotoxy(36,18);
                              write('|');

                              if (data[i].divisi = '') then
                                 begin
                                      gotoxy(41,18);
                                      write('--');
                                 end
                              else
                              gotoxy(38,18);
                              write(data[i].divisi);
                              gotoxy(47,18);
                              write('|');

                              if (data[i].kelas = '') then
                                 begin
                                      gotoxy(53,18);
                                      write('-');
                                 end
                              else
                              gotoxy(49,18);
                              write(data[i].kelas);
                              gotoxy(59,18);
                              write('|');

                              if (data[i].ordo = '') then
                                 begin
                                      gotoxy(67,18);
                                      writeln('--');
                                 end
                              else
                              gotoxy(61,18);
                              writeln(data[i].ordo);
                              gotoxy(76,18);
                              write('|');
gotoxy(1,19);
writeln('----------------------------------------------------------------------------');
                          posisi:=i;
                          writeln('Hapus data ini? [Y/N] ');read(ans);

                          if upcase(ans)='Y' then
                             begin
                                  writeln('Melakukan penghapusan data..../');
                                  for i:=posisi to bdata-1 do
                                      data[i].id:=data[i+1].id;
                                      data[i].nama:=data[i+1].nama;
                                      data[i].kerajaan:=data[i+1].kerajaan;
                                      data[i].divisi:=data[i+1].divisi;
                                      data[i].kelas:=data[i+1].kelas;
                                      data[i].ordo:=data[i+1].ordo;

                                      bdata:=bdata-1;
                                      writeln('Penghapusan data BERHASIL.');
                             end;
                     end
                   else
                       writeln('Error: Data tidak ditemukan. ');
        end
      else
          writeln('Error: Data kosong. ');
          readkey;
end;

procedure data_edit;
var
   dicari:string;
   posisi:integer;
   i,j,k,l:integer;
   ans:char;
   temp:TDTumbuhan;
begin
     if bdata>0 then
        begin
        clrscr;
        gotoxy(34,2);writeln('DATA TANAMAN');
       gotoxy(1,3);
write('----------------------------------------------------------------------------');
gotoxy(1,4);
write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
gotoxy(1,5);
write('----------------------------------------------------------------------------');

              for i:=1 to bdata do
                 begin
                      gotoxy(1,5+i);
                      write('|');
                      if (data[i].id ='') then
                         begin
                              gotoxy(3,5+i);
                              write('--');
                         end
                      else
                      gotoxy(3,5+i);
                      write(data[i].id);
                      gotoxy(10,5+i);
                      write('|');

                      if (data[i].nama = '') then
                         begin
                              gotoxy(17,5+i);
                              write('--');
                         end
                      else
                      gotoxy(12,5+i);
                      write(data[i].nama);
                      gotoxy(25,5+i);
                      write('|');

                      if (data[i].kerajaan = '') then
                         begin
                              gotoxy(30,5+i);
                              write('--');
                         end
                      else
                      gotoxy(27,5+i);
                      write(data[i].kerajaan);
                      gotoxy(36,5+i);
                      write('|');

                      if (data[i].divisi = '') then
                         begin
                              gotoxy(41,5+i);
                              write('--');
                         end
                      else
                      gotoxy(38,5+i);
                      write(data[i].divisi);
                      gotoxy(47,5+i);
                      write('|');

                      if (data[i].kelas = '') then
                         begin
                              gotoxy(53,5+i);
                              write('-');
                         end
                      else
                      gotoxy(49,5+i);
                      write(data[i].kelas);
                      gotoxy(59,5+i);
                      write('|');

                      if (data[i].ordo = '') then
                         begin
                              gotoxy(67,5+i);
                              writeln('--');
                         end
                      else
                      gotoxy(61,5+i);
                      writeln(data[i].ordo);
                      gotoxy(76,5+i);
                      write('|');
                 end;
gotoxy(1,6+i);
writeln('----------------------------------------------------------------------------');
             write('ID Tumbuhan yang dicari : ');readln(dicari);
             dicari:=upcase(dicari);
             i:=0;
             while(data[i].id<>dicari)and(i<=bdata)do
             begin
                  i:=i+1;
                  if data[i].id = dicari then
                     begin
                          writeln('Data Ditemukan dengan id "',data[i].id,'", dengan nama tumbuhan "',data[i].nama,
                                  '", dengan kerajaan "',data[i].kerajaan,'", dengan divisi "',data[i].divisi,
                                  '", dengan kelas "',data[i].kelas,'" dan ordo "',data[i].ordo,'"');
                          posisi:=i;
                          temp:=data[i];
                          writeln('Ubah data ini? [Y/N] ');readln(ans);

                          if (upcase(ans)='Y') then
                             begin
                                  IDTumbuhanEdit:
                                  write('ID Tumbuhan       : ');readln(data[posisi].id);
                                            data[posisi].id:=upcase(data[posisi].id);
                                            if (data[posisi].id = '') then
                                               begin
                                                    writeln('Error: ID Tanaman tidak boleh kosong.');
                                                    GoTo IDTumbuhanEdit;
                                               end;
                                               j:=1;
                                               if (j<=posisi) and (j<>j+1) then
                                                  begin
                                                       k:=1;
                                                       j:=j+1;
                                                  end
                                               else
                                                   k:=0;
                                           repeat
                                                 begin
                                                      for l:=1 to bdata do
                                                          begin
                                                      k:=k+1;
                                                          if ((upcase(data[posisi].id)) = (upcase(data[k].id))) then
                                                             begin
                                                                  if (l = posisi) and ((upcase(data[posisi].id)) = (upcase(data[k].id))) then
                                                                     begin
                                                                          GoTo IsiEditData;
                                                                     end;
                                                                  data[i]:=temp;
                                                                          writeln('Error: ID Tanaman telah digunakan.');
                                                                  GoTo IDTumbuhanEdit;
                                                             end;
                                                             end;
                                                  end;
                                            until (k <> bdata);

                                           IsiEditData:
                                  write('Nama Tumbuhan     : ');readln(data[posisi].nama);
                                  data[posisi].nama:=upcase(data[posisi].nama);
                                  write('Kerajaan Tumbuhan : ');readln(data[posisi].kerajaan);
                                  data[posisi].kerajaan:=upcase(data[posisi].kerajaan);
                                  write('Divisi Tumbuhan   : ');readln(data[posisi].divisi);
                                  data[posisi].divisi:=upcase(data[posisi].divisi);
                                  write('Kelas Tumbuhan    : ');readln(data[posisi].kelas);
                                  data[posisi].kelas:=upcase(data[posisi].kelas);
                                  write('Ordo Tumbuhan     : ');readln(data[posisi].ordo);
                                  data[posisi].ordo:=upcase(data[posisi].ordo);

                                  writeln('Data telah diubah.');
                             end;
                     end
                   else
                       writeln('Error: Data tidak ditemukan. ');
        end;
        end
      else
          writeln('Error: Data kosong. ');
          readkey;
end;

procedure urut_data_id;
var
   i,j,imin:integer;
   temp:TDTumbuhan;
begin
     writeln('Melakukan pengurutan.../');
     for i:=1 to bdata-1 do
         begin
              imin:=i;
              for j:=i+1 to bdata do
              begin
                   if (upcase(data[imin].id))<(upcase(data[j].id)) then
                   imin:=j;
              end;
              temp:=data[i];
              data[i]:=data[imin];
              data[imin]:=temp;
         end;
         writeln('Pengurutan BERHASIL.');
         readkey;
end;

procedure urut_data_nama;
var
   i,j,imin:integer;
   temp:TDTumbuhan;
begin
     writeln('Melakukan pengurutan.../');
     for i:=1 to bdata-1 do
         begin
              imin:=i;
              for j:=i+1 to bdata do
              begin
                   if (data[imin].nama)>(data[j].nama) then
                   imin:=j;
              end;
              temp:=data[i];
              data[i]:=data[imin];
              data[imin]:=temp;
         end;
         writeln('Pengurutan BERHASIL.');
         readkey;
end;

procedure save_file;
var
   f:file of TDTumbuhan;
   i:integer;
begin
     assign(f,'tumbuhan.data');
     rewrite(f);
     for i:=1 to bdata do
         write (f,data[i]);
     close(f);
     writeln('Data telah tersimpan.');
     readkey;
end;

procedure open_file;
var
   f:file of TDTumbuhan;
   databaru:TDTumbuhan;
begin
     assign(f,'tumbuhan.data');
     {I-}
     reset(f);
     {I+}
     if IOResult=0 then
     begin
          while eof(f)=false do
          begin
               read(f,databaru);
               if bdata<max then
               begin
                    bdata:=bdata+1;
                    data[bdata]:=databaru;
               end;
          end;
          close(f);
          writeln('Telah ditemukan ',bdata,' data.');
          readkey;
     end
     else
         begin
              writeln('Error: Tidak ada data yang ditemukan.');
              readkey;
          end;
end;

procedure filter_data;
var
   i,posisi,ditemukan:integer;
   filter:string;
begin
     ditemukan:=0;
     if bdata>0 then
        begin
             write('Filter data nama yang mengandung : ');readln(filter);
             filter:=upcase(filter);
             for i:=1 to bdata do
                 begin
                      posisi:=pos(filter, data[i].nama);
                      if (posisi <> 0) then
                         begin
                              ditemukan:=ditemukan+1;
                              gotoxy(1,17+ditemukan);
                              write('|');
                              if (data[i].id ='') then
                                 begin
                                      gotoxy(3,17+ditemukan);
                                      write('--');
                                 end
                              else
                              gotoxy(3,17+ditemukan);
                              write(data[i].id);
                              gotoxy(10,17+ditemukan);
                              write('|');

                              if (data[i].nama = '') then
                                 begin
                                      gotoxy(17,17+ditemukan);
                                      write('--');
                                 end
                              else
                              gotoxy(12,17+ditemukan);
                              write(data[i].nama);
                              gotoxy(25,17+ditemukan);
                              write('|');

                              if (data[i].kerajaan = '') then
                                 begin
                                      gotoxy(30,17+ditemukan);
                                      write('--');
                                 end
                              else
                              gotoxy(27,17+ditemukan);
                              write(data[i].kerajaan);
                              gotoxy(36,17+ditemukan);
                              write('|');

                              if (data[i].divisi = '') then
                                 begin
                                      gotoxy(41,17+ditemukan);
                                      write('--');
                                 end
                              else
                              gotoxy(38,17+ditemukan);
                              write(data[i].divisi);
                              gotoxy(47,17+ditemukan);
                              write('|');

                              if (data[i].kelas = '') then
                                 begin
                                      gotoxy(53,17+ditemukan);
                                      write('-');
                                 end
                              else
                              gotoxy(49,17+ditemukan);
                              write(data[i].kelas);
                              gotoxy(59,17+ditemukan);
                              write('|');

                              if (data[i].ordo = '') then
                                 begin
                                      gotoxy(67,17+ditemukan);
                                      writeln('--');
                                 end
                              else
                              gotoxy(61,17+ditemukan);
                              writeln(data[i].ordo);
                              gotoxy(76,17+ditemukan);
                              write('|');
                        end;
                 end;
             if (ditemukan = 0)then
                 begin
                      writeln('Error: Tidak ada data nama yang mengandung ',upcase(filter));
                 end
             else
                 gotoxy(1,15);
                 write('----------------------------------------------------------------------------');
                 gotoxy(1,16);
                 write('|   ID   | NAMA TANAMAN | KERAJAAN |  DIVISI  |   KELAS   |      ORDO      |');
                 gotoxy(1,17);
                 write('----------------------------------------------------------------------------');
                 gotoxy(1,18+ditemukan);
                 writeln('----------------------------------------------------------------------------');
                 writeln('Telah ditemukan ',ditemukan,' data yang mengandung ',upcase(filter));
        end
     else
     writeln('Error: Data kosong');
     readkey;
end;
{ end of Procedure Area }
begin
     bdata:=0;
     open_file;
     repeat
           clrscr;
           writeln('--------------- DATA TANAMAN ----------------');
           writeln('1. Lihat Data.                               ');
           writeln('2. Tambah Data.                              ');
           writeln('3. Pencarian Data Berdasarkan ID.            ');
           writeln('4. Pencarian Data Berdasarkan Nama.          ');
           writeln('5. Penghapusan Data.                         ');
           writeln('6. Edit Data.                                ');
           writeln('7. Urutkan Berdasarkan ID. (Descending)      ');
           writeln('8. Urutkan Data Berdasarkan Nama. (Ascending)');
           writeln('9. Filter Data.                              ');
           writeln('0. Keluar.                                   ');
           writeln('=============================================');
           write('Pilihan : ');readln(menu);

           if menu = '1' then
              lihat_data
           else
           if menu = '2' then
              tambah_data
           else
           if menu = '3' then
              cari_data_id
           else
           if menu = '4' then
              cari_data_nama
           else
           if menu = '5' then
              data_delete
           else
           if menu = '6' then
              data_edit
           else
           if menu = '7' then
              urut_data_id
           else
           if menu = '8' then
              urut_data_nama
           else
           if menu = '9' then
               filter_data;

     until menu='0';
     if bdata>0 then
        save_file;
end.
