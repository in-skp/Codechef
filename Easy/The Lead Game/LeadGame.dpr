    program LeadGame;

    {$APPTYPE CONSOLE}

    uses
    SysUtils;

    var
    NoOfRounds : LongInt;
    arrScores : array[1..2] of array of LongInt;
    i : LongInt;

    procedure FindLeadGameWinner;
    var
    k, ko : LongInt;
    Diff : LongInt;
    MaxLead : LongInt;
    Val1, Val2 : LongInt;
    begin
    MaxLead := 0;
    Val1 := 0;
    Val2 := 0;
    for k:=Low(arrScores[1]) to High(arrScores[1]) do
    begin
      Val1 := Val1 + arrScores[1,k];
      Val2 := Val2 + arrScores[2,k];
      Diff := Abs(Val1-Val2);
      if Diff >= MaxLead then
      MaxLead := Diff;
      if Val1 >= Val2 then
        ko := 1
      else
        ko := 2;
    end ;
    writeln(ko,' ',MaxLead)
    end;


    begin
    { TODO -oUser -cConsole Main : Insert code here }
    readln(NoOfRounds);
    setlength(arrScores[1],NoOfRounds);
    setlength(arrScores[2],NoOfRounds);
    for i:=0 to NoOfRounds-1 do
    begin
    readln(arrScores[1,i],arrScores[2,i]);
    end;
    FindLeadGameWinner;
    //readln;
    end.
