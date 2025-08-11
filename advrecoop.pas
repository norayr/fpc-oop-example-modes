unit advrecoop;

{$mode objfpc}{$H+}{$modeswitch advancedrecords}

interface

type
  TVec2 = record
  private
    FX, FY: Double;
  public
    constructor Create(AX, AY: Double);
    function Length: Double;
    class operator +(const a, b: TVec2) r: TVec2;  // <-- name result "r"
    property X: Double read FX write FX;
    property Y: Double read FY write FY;
  end;

implementation

uses Math;

constructor TVec2.Create(AX, AY: Double);
begin
  FX := AX; FY := AY;
end;

function TVec2.Length: Double;
begin
  Result := Sqrt(FX*FX + FY*FY);
end;

class operator TVec2.+(const a, b: TVec2) r: TVec2;  // <-- qualify with TVec2
begin
  r.FX := a.FX + b.FX;
  r.FY := a.FY + b.FY;
end;

end.

