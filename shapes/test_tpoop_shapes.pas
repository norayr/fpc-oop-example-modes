program test_tpoop_shapes;
{$mode objfpc}

uses tpoop_shapes;

var
  S: TShape;
  PC: PCircle;
begin
  { Value-style use without heap }
  S.Init(0, 0);
  S.Move(1, 1);
  WriteLn('tpoop shape at (', S.X:0:0, ', ', S.Y:0:0, ') area=', S.Area:0:0);

  { Heap allocation with New/Dispose }
  New(PC, Init(0, 0, 10));
  try
    PC^.Move(5, 5);
    WriteLn('tpoop circle at (', PC^.X:0:0, ', ', PC^.Y:0:0, ') area=', PC^.Area:0:0);
  finally
    Dispose(PC);
  end;
end.
