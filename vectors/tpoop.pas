unit tpoop;

{$mode objfpc}  { TP/BP-style object; works in objfpc mode }
interface

type
  { Turbo Pascal-style object (value type; often used by value) }
  TVec2 = object
    X, Y: Double;
    constructor Init(AX, AY: Double);
    function Length: Double;
    function Add(const B: TVec2): TVec2;  // value-returning method
  end;

implementation

uses Math;

constructor TVec2.Init(AX, AY: Double);
begin
  X := AX; Y := AY;
end;

function TVec2.Length: Double;
begin
  Length := Sqrt(X*X + Y*Y);
end;

function TVec2.Add(const B: TVec2): TVec2;
begin
  Add.X := X + B.X;
  Add.Y := Y + B.Y;
end;

end.
