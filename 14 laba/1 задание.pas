var f:file of char;
    c:char;
    i,n:integer;
begin
assign(f,'1.txt');
rewrite(f);
write('Введите количество символов в исходный файл n:');
read(n);
writeln('Введите в исходный файл ', n,' символов, включая пробел:');
for i:=1 to n do
 begin
  read(c);
  write(f,c);
 end;
reset(f);
n:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,c);
  if c= ' ' then n:=i;
 end;
if n=-1 then
 begin
  writeln('Пробел не введён');
  close(f);
 end
else
 begin
  seek(f,n);
  truncate(f);
  seek(f,0); {seek возвращает курсор в позицию n}
  close(f);
 end;
end.