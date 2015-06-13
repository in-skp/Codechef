program InputTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Counter,i : LongInt;
  TotalCases, Divisor : LongInt;
  Number : LongInt;
  arrNumbers : array of LongInt;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  Readln(TotalCases,Divisor);
  Counter := 0;
  SetLength(arrNumbers,TotalCases);
  for i:=0 to TotalCases-1 do
  begin
    Readln(Number);
    arrNumbers[i] := Number;
    //if (Number mod Divisor) = 0 then Inc(Counter);
  end;
  for i:=Low(arrNumbers) to High(arrNumbers) do
  begin
    if arrNumbers[i] mod Divisor = 0 then
    Inc(Counter);
  end;
  writeln(Counter);
  //readln;
end.
