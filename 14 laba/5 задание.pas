var
 s:String;
 f: File of Real;
 a,b,c,max:Real;
 i:integer;
 n:real;
 
begin
  Assign(f,'5.txt');
  rewrite(f);
  writeln ('Введите вещественные числа: ');
  for i:=1 to 5 do begin
      read(n);
      write(f,n);
  end;
  close(f);
  Reset(f); 
  Read(f,a);
  Read(f,b);
  c:=b;
  writeln('Результат (последний локальный максимум): ');
  if (b>a) then max:=b;
  while (not eof(f)) do
   begin
    c:=b;
    b:=a;
    Read(f,a);
    if (a<b) and (b>c) then max:=b;
   end;
  if b<a then max:=a;
  Writeln(max);
  Close(f);
end.