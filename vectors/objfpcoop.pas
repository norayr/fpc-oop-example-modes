unit objfpcoop;

{$mode objfpc}{$H+}

interface

type
  { Delphi-style class (reference type, heap-allocated) }
  TVec2 = class
  private
    FX, FY: Double;
  public
    constructor Create(AX, AY: Double);
    function Length: Double;
    function Add(const B: TVec2): TVec2;  // returns a NEW instance (sum)
    property X: Double read FX write FX;
    property Y: Double read FY write FY;
  end;

implementation

uses Math;

constructor TVec2.Create(AX, AY: Double);
begin
  inherited Create;
  FX := AX; FY := AY;
end;

function TVec2.Length: Double;
begin
  Result := Sqrt(FX*FX + FY*FY);
end;

function TVec2.Add(const B: TVec2): TVec2;
begin
  if B = nil then
    Exit(TVec2.Create(FX, FY));
  Result := TVec2.Create(FX + B.FX, FY + B.FY);
end;

end.
