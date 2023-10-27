program pointer;
uses wincrt;
var p:^integer;
m,n :integer;
begin
 new(p);
 m :=10;
 n :=15;
 p := @m;{p sekarang menunjuk ke m}
 p^ := 12;{hal ini sama dengan m:=12}
 p := @n;{p sekarang menunjuk ke n}
 p^ :=m;{hal ini sama dengan n:=m}
 writeln('m=',m,',n=',n);
 readln;
 dispose(p);
end.
