var f,g,h:file of real;
    n, i:integer;
    a:real;
begin
randomize;
assign(f,'файл1.txt');
rewrite(f);
write('Введите количество чисел исходного файла: ');
readln(n);
for i:=1 to n do
 begin
  readln(a);
  write(f,a);
 end;
randomize;
reset(f);
assign(g,'файл2.txt');
rewrite(g);
assign(h,'файл3.txt');
rewrite(h);
writeln('Содержание исходного файла:');
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a,' ');
  if odd(i)then write(g,a)
  else write(h,a)
 end;
writeln;
writeln;
seek(g,0);
writeln('Содержание файла чисел с четными номерами:');
while not eof(g) do
 begin
  read(g,a);
  write(a,' ');
 end;
close(g);
writeln;
writeln;
seek(h,0);
writeln('Содержание файла чисел с нечетными номерами:');
while not eof(h) do
 begin
  read(h,a);
  write(a,' ');
 end;
close(h);
end.