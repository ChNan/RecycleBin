program caseTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  N: integer;
  
begin
  { TODO -oUser -cConsole Main : Insert code here }
  write('������һ��1��4������֣�');
  read(n);
  case N of
    1:writeln('*');
    2:writeln('**');
    3:writeln('***');
    4:writeln('****');
  else
    writeln('��������ֲ���1��4֮��');
  end;
  readln;
end.
