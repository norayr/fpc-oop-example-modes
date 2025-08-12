program test_advrec_shapes;
{$mode objfpc}{$modeswitch advancedrecords}

uses advrec_shapes;

var
  C: TCircleR;
begin
  C := TCircleR.Create(0, 0, 10);
  C.Move(5, 5);
  WriteLn('advrec circle at (', C.X:0:0, ', ', C.Y:0:0, ') area=', C.Area:0:0);
end.
