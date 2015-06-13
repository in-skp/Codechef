program HolesInText;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  TotalCases : integer;
  HoleString : string;
  i,j : integer;
  arrOutput : array of integer;
  Counter :integer;

begin
  { TODO -oUser -cConsole Main : Insert code here }
  Readln(TotalCases);
  SetLength(arrOutput,TotalCases);
  for i:=0 to TotalCases-1 do
  begin
    Readln(HoleString);
    Counter := 0;
    for j:=0 to Length(HoleString) do
    begin
      case HoleString[j] of
        'A','D','O','P','Q','R' : Counter := Counter + 1;
        'B' : Counter := Counter + 2;
        else Counter := Counter + 0;
      end;
    end;
    arrOutput[i] := Counter;
  end;
  for i:=Low(arrOutput) to High(arrOutput) do
  begin
    Writeln(arrOutput[i]);
  end;
  //readln;
end.
