program sumInt;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n, i: 1..100;
  sum:integer;
begin
  write('������һ��1��100�������');
  read(n);
  sum := 0; //��sumֵ��ʼ��Ϊ0
  i := 1;
  while i <= n do
  begin
    sum := sum + i;
    i := i+1;
  end;
  writeln(inttostr(sum));
  read;
  { TODO -oUser -cConsole Main : Insert code here }
end.
