program Pointer;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  
var
  p:^Integer;
  n:Integer;
  
begin
  p:= @n;// p points to n
  n := 98;
  writeln(pinteger(p)^);// ����ת����ȡp
  pinteger(p)^ := 78; // ����n��ֵ
  writeln(pinteger(p)^);
  readln;
end.
