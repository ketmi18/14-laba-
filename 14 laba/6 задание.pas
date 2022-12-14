var
 f,f1: File of real;
 a,b,max1,min1:real;
 i,max2,min2,n:integer;
begin
Assign(f,'6.txt');
rewrite(f);
write('Введите количество чисел в исходной файле n: ');
readln(n);
for i:=1 to n do
 begin
  Read(a);
  write(f,a);
 end;
Reset(f);
  i:=1;
  while (not eof(f)) do
   begin
    Read(f,b);
    if (b>max1) or (i=1) then
     begin
      max1:=b;
      max2:=i;
     end;;
    if (b<min1) or (i=1) then
     begin
      min1:=b;
      min2:=i;
     end;;
    inc(i);
   end;
  Close(f);
  Reset(f);
  Assign(f1,'66.txt');
  ReWrite(f1);
  i:=1;
  while (not eof(f)) do
   begin
    Read(f,b);
    if i=max2 then Write(f1,min1)
    else if i=min2 then Write(f1,max1)
         else Write(f1,b);
    inc(i);
   end;
  Close(f);
  Close(f1);
  Erase(f);
reset(f1);
while not eof(f1) do begin
read(f1,a);write(a,' ');
end;
close(f1);
Rename(f1,'666.txt');
end.