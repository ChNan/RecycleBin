program emptyArg;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure var_sample(out s : string);
begin
// ʲô������
end;

var
  str : string;
begin
  str := 'delphi';
  writeln(str);//��ʾdelphi
  var_sample(str);
  writeln(str);// ����ʾ�κ�����
  readln(str);
  { TODO -oUser -cConsole Main : Insert code here }
end.
