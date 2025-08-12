unit advrec_shapes;

{$mode objfpc}{$modeswitch advancedrecords}

interface

type
  { Advanced record: value type, no inheritance, methods allowed }
  TCircleR = record
  private
    FX, FY, FR: Double;
  public
    constructor Create(AX, AY, AR: Double);
    procedure Move(const dx, dy: Double);
    function Area: Double;
    property X: Double read FX write FX;
    property Y: Double read FY write FY;
    property R: Double read FR write FR;
  end;

implementation

uses Math;

constructor TCircleR.Create(AX, AY, AR: Double);
begin
  FX := AX; FY := AY; FR := AR;
end;

procedure TCircleR.Move(const dx, dy: Double);
begin
  FX := FX + dx;
  FY := FY + dy;
end;

function TCircleR.Area: Double;
begin
  Result := Pi * FR * FR;
end;

end.
