    program TurboSort;

    {$APPTYPE CONSOLE}

    uses
    SysUtils;

    procedure QuickSort(var A: array of LongInt; iLo, iHi: LongInt) ;
    var
    Lo, Hi, Pivot, T: LongInt;
    begin
    Lo := iLo;
    Hi := iHi;
    Pivot := A[(Lo + Hi) div 2];
    repeat
    while A[Lo] < Pivot do Inc(Lo) ;
    while A[Hi] > Pivot do Dec(Hi) ;
    if Lo <= Hi then
    begin
    T := A[Lo];
    A[Lo] := A[Hi];
    A[Hi] := T;
    Inc(Lo) ;
    Dec(Hi) ;
    end;
    until Lo > Hi;
    if Hi > iLo then QuickSort(A, iLo, Hi) ;
    if Lo < iHi then QuickSort(A, Lo, iHi) ;
    end;

    var
    arrInput : array of LongInt;
    TotalCases, i : LongInt;
    begin
    { TODO -oUser -cConsole Main : Insert code here }
    readln(TotalCases);
    setlength(arrInput,TotalCases);
    for i:=0 to TotalCases-1 do
    begin
    readln(arrInput[i]);
    end;
    QuickSort(arrInput, Low(arrInput), High(arrInput)) ;
    for i:=Low(arrInput) to High(arrInput) do
    begin
    writeln(arrInput[i]);
    end;
    //readln;
    end.
