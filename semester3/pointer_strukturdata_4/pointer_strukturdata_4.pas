program pointer_data_mhs;
uses crt;
type ptr=^string;
 var pointer_nama,pointer_kelas,pointer_npm:ptr;
 nama,kelas,npm:string;
 x,n:integer;
begin
clrscr;
 Writeln('      INPUT DATA         ');
 writeln('');
 writeln('Masukkan Banyak Data: ');
 readln(n);
 for x:= 1 to n do
  begin
   writeln('Data Ke ',x);
   write('Nama = '); readln(nama);
   write('Kelas = '); readln(kelas);
   write('NPM = '); readln(npm);
   pointer_nama:= @nama;
   pointer_kelas:= @kelas;
   pointer_npm:= @npm;
   writeln('Nama = ',pointer_nama^);
   writeln('Kelas = ',pointer_kelas^);
   writeln('NPM = ',pointer_npm^);
  end;
  readln;
end.
