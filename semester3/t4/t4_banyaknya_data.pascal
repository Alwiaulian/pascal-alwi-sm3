Program tugas4_banyaknya_data;
uses crt;
 var
 nilai: array[1..50] of integer;
 n,j :integer;
begin
clrscr;
 write('Masukkan Banyaknya Data : '); readln(n);
 for j := 1 to n do
 begin
  write('Masukkan Nilai Untuk Data Ke- ',j,' : '); readln(nilai[j]);
 end;
  for j := 1 to n do
  begin
   writeln(' Data Nilai Yang Anda Masukkan Yaitu ');
   writeln('Data ke- ',j,' : ',nilai[j]);
  end;
  readln;
end.
