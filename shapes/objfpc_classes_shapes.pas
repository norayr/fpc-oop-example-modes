unit objfpc_classes_shapes;

{$mode objfpc}

interface

type
  { Delphi-style classes: reference type, heap-allocated, single inheritance }
  TShape = class
  protected
    FX, FY: Double;
  public
    constructor Create(AX, AY: Double);
    procedure Move(dx, dy: Double); virtual;
    function Area: Double; virtual;
    property X: Double read FX write FX;
    property Y: Double read FY write FY;
  end;

  TCircle = class(TShape)
  protected
    FR: Double;
  public
    constructor Create(AX, AY, AR: Double);
    procedure Move(dx, dy: Double); override;
    function Area: Double; override;
    property R: Double read FR write FR;
  end;

implementation

uses Math;

constructor TShape.Create(AX, AY: Double);
begin
  inherited Create;
  FX := AX; FY := AY;
end;

procedure TShape.Move(dx, dy: Double);
begin
  FX := FX + dx;
  FY := FY + dy;
end;

function TShape.Area: Double;
begin
  Result := 0.0;
end;

constructor TCircle.Create(AX, AY, AR: Double);
begin
  inherited Create(AX, AY);
  FR := AR;
end;

procedure TCircle.Move(dx, dy: Double);
begin
  inherited Move(dx, dy);
end;

function TCircle.Area: Double;
begin
  Result := Pi * FR * FR;
end;

end.
