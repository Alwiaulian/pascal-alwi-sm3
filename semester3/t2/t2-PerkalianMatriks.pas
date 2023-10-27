program PerkalianMatriks;
uses crt;
  var
  ab,bc,cd:array[1..5,1..5]of integer;
  ij,jk,kl,xy,yz,zz : integer;
  begin
    clrscr;
    writeln('Input Ukuran matrik A');
    write('Input Baris : '); readln(xy);
    write('Input Kolom : '); readln(yz);
    writeln;
    writeln;
    writeln('Input Ukuran Matrik B ');
    Writeln('Input Baris :',yz);
    writeln('Input Kolom :');
    readln(zz);
    for ij:= 1 to xy do
    for jk:= 1 to yz do
     begin
     writeln;
     writeln('Input Nilai Matrik A');
     write('Elemen A[',ij,',',jk,'] : ');
     readln(ab[ij,jk]);
     end;
     writeln;
      for ij:=1 to yz do
      for jk:=1 to zz do
       begin
       writeln;
       writeln('Input Nilai Matrik B');
       write('Elemen B[',ij,',',jk,']: ');
       readln(bc[ij,jk]);
       end;

        for ij:=1 to xy do
        for jk:=1 to zz do
        for kl:=1 to yz do
        cd[ij,jk]:=cd[ij,jk] + ab[ij,kl] * bc[kl,jk];
        writeln;
        writeln;
        writeln('Hasil dari perkalian matrik A dengan matrik B yaitu : ');
        writeln;
         for ij:=1 to xy do
         begin
         for jk:=1 to zz do
         write(cd[ij,jk],'');
         writeln;
         end;
          writeln;
          readln;
end.
