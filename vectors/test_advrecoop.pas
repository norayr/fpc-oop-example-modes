program test_advrecoop;
{$mode objfpc}{$H+}{$modeswitch advancedrecords}

uses advrecoop;

var
  a, b, c: TVec2;
begin
  a := TVec2.Create(1, 2);
  b := TVec2.Create(3, 4);
  c := a + b;
  WriteLn('advrecoop: (', c.X:0:0, ', ', c.Y:0:0, ')'); // (4, 6)
end.
