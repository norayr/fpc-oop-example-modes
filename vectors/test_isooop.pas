program test_isooop;
{$mode iso}

type
  TVec2 = record
    X, Y: real;
  end;

procedure Vec2Init(var v: TVec2; ax, ay: real);
begin
  v.X := ax; v.Y := ay;
end;

function Vec2Add(const a, b: TVec2): TVec2;
begin
  Vec2Add.X := a.X + b.X;
  Vec2Add.Y := a.Y + b.Y;
end;

var
  a, b, c: TVec2;
begin
  Vec2Init(a, 1.0, 2.0);
  Vec2Init(b, 3.0, 4.0);
  c := Vec2Add(a, b);
  write('isooop: ('); write(c.X:0:0); write(', '); write(c.Y:0:0); writeln(')');
end.

