program forTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var i, n: integer;
begin
  write('����n��ֵ');
  read(n);
  for i:=1 to n do
    writeln('delphi7');
  writeln('i��ֵΪ��' + inttostr(i));
  read(n);
  { TODO -oUser -cConsole Main : Insert code here }
end.
