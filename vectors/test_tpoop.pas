program test_tpoop;
{$mode objfpc}

uses tpoop;

var
  a, b, c: TVec2;
begin
  a.Init(1, 2);
  b.Init(3, 4);
  c := a.Add(b);
  WriteLn('tpoop: (', c.X:0:0, ', ', c.Y:0:0, ')'); // (4, 6)
end.
