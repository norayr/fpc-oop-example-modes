program isooop;

type
  TShape = record
    x, y: Integer;
  end;

procedure ShapeInit(var s: TShape; ax, ay: Integer);
begin s.x := ax; s.y := ay end;

procedure ShapeMove(var s: TShape; dx, dy: Integer);
begin s.x := s.x + dx; s.y := s.y + dy end;

var s: TShape;
begin
  ShapeInit(s, 0, 0);
  ShapeMove(s, 5, 5);
end.

