program nama_dan_npm;
uses crt;
 var
  nama: string;
  npm:string;
begin
clrscr;
 write('Ketik Nama Anda : '); readln(nama);
 write('Ketik NPM Anda : '); readln(npm);
 writeln('Selamat Datang ' ,nama);
 writeln('Dengan NPM ' ,npm);
 writeln;
 readln;
end.

