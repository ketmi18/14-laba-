var f:file of real;
    n,i:integer;
    a,s:real;
begin
assign(f,'4.txt');
rewrite(f);
write('Введите количество чисел в исходный файл n: ');
readln(n);
for i:=1 to n do
 begin
  Read(a);
  write(f,a);
 end;
reset(f);
s:=0;
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a,' ');
  if i mod 2<>0 then s:=s+a;
 end;
writeln;
close(f);
write('Вывод суммы  всех элементов с четными номерами: ', s);
end.