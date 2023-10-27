program record_data_mhs;
uses crt;
 type mhs=record
  nama:string[25];
  npm:string[15];
  nilai:integer;
 end;

  var
  data_mhs:array [1..100] of mhs;
  i,n: integer;
  grade: char;
  procedure input;

begin
clrscr;

 write('Masukkan Jumlah Data : '); readln(n);
 clrscr;
 for i:=1 to n do
 with data_mhs[i] do
  begin
   writeln('Data Ke- ',i);
   write('Nama : '); readln(nama);
   write('NPM  : '); readln(npm);
   write('Nilai : '); readln(nilai);
   writeln;
  end;
   readkey;
end;

 procedure output;
 begin
  clrscr;
  writeln(' ----------------------------------------------');
  writeln('| NO |     NPM    |    NAMA    | NILAI | GRADE |');
  writeln('------------------------------------------------');
  writeln('|  |              |            |       |       |');
   for i:= 1 to n do
    with data_mhs[i] do
    begin
     writeln('|  |              |            |       |       |');
     gotoxy(3,i+3); writeln(i);
     gotoxy(8,i+3); writeln(npm);
     gotoxy(20,i+3); writeln(nama);
     gotoxy(38,i+3); writeln(nilai);
     if nilai<50 then grade:='E';
     if nilai>=50 then grade:='D';
     if nilai>=60 then grade:='C';
     if nilai>=70 then grade:='B';
     if nilai>=80 then grade:='A';
     gotoxy(46,i+3); writeln(grade);
    end;
    writeln('|------------------------------------------------|');
    readkey;
   end;
   
begin
   input;
   output;
end.




