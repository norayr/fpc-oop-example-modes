program test_objfpc_classes_shapes;
{$mode objfpc}

uses objfpc_classes_shapes;

var
  S: TShape;
  C: TCircle;
begin
  S := TShape.Create(0, 0);
  try
    S.Move(1, 1);
    WriteLn('class shape at (', S.X:0:0, ', ', S.Y:0:0, ') area=', S.Area:0:0);
  finally
    S.Free;
  end;

  C := TCircle.Create(0, 0, 10);
  try
    C.Move(5, 5);
    WriteLn('class circle at (', C.X:0:0, ', ', C.Y:0:0, ') area=', C.Area:0:0);
  finally
    C.Free;
  end;
end.
