unit tpoop_shapes;

{$mode objfpc}

interface

type
  { Turbo Pascal-style objects: value type, inheritance, manual lifetime optional }
  PShape = ^TShape;
  TShape = object
    X, Y: Double;
    constructor Init(AX, AY: Double);
    procedure Move(dx, dy: Double); virtual;
    function Area: Double; virtual;
  end;

  PCircle = ^TCircle;
  TCircle = object(TShape)
    R: Double;
    constructor Init(AX, AY, AR: Double);
    procedure Move(dx, dy: Double); virtual;    { override }
    function Area: Double; virtual;             { override }
  end;

implementation

uses Math;

constructor TShape.Init(AX, AY: Double);
begin
  X := AX; Y := AY;
end;

procedure TShape.Move(dx, dy: Double);
begin
  X := X + dx;
  Y := Y + dy;
end;

function TShape.Area: Double;
begin
  Area := 0.0;
end;

constructor TCircle.Init(AX, AY, AR: Double);
begin
  inherited Init(AX, AY);
  R := AR;
end;

procedure TCircle.Move(dx, dy: Double);
begin
  inherited Move(dx, dy);
end;

function TCircle.Area: Double;
begin
  Area := Pi * R * R;
end;

end.
