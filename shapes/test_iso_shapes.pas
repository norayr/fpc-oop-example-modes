program test_iso_shapes;
{$mode iso}

type
  TShape = record X, Y: real end;
  TCircle = record S: TShape; R: real end;

procedure ShapeInit(var s: TShape; ax, ay: real); begin s.X := ax; s.Y := ay end;
procedure ShapeMove(var s: TShape; dx, dy: real); begin s.X := s.X + dx; s.Y := s.Y + dy end;
function  ShapeArea(const s: TShape): real; begin ShapeArea := 0.0 end;

procedure CircleInit(var c: TCircle; ax, ay, r: real); begin ShapeInit(c.S, ax, ay); c.R := r end;
procedure CircleMove(var c: TCircle; dx, dy: real); begin ShapeMove(c.S, dx, dy) end;
function  CircleArea(const c: TCircle): real; begin CircleArea := 3.14159265358979323846 * c.R * c.R end;

var S: TShape; C: TCircle;
begin
  ShapeInit(S, 0.0, 0.0); ShapeMove(S, 1.0, 1.0);
  write('iso shape at (', S.X:0:0, ', ', S.Y:0:0, ') area='); write(ShapeArea(S):0:0); writeln;

  CircleInit(C, 0.0, 0.0, 10.0); CircleMove(C, 5.0, 5.0);
  write('iso circle at (', C.S.X:0:0, ', ', C.S.Y:0:0, ') area='); write(CircleArea(C):0:0); writeln;
end.
