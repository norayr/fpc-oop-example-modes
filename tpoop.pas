unit tpoop;

interface

type
  PShape = ^TShape;
  TShape = object
    X, Y: Integer;
    constructor Init(AX, AY: Integer);
    procedure Move(dx, dy: Integer); virtual;
  end;

  TCircle = object(TShape)
    R: Integer;
    constructor Init(AX, AY, AR: Integer);
    procedure Move(dx, dy: Integer); virtual; {override}
  end;

implementation

constructor TShape.Init(AX, AY: Integer);
begin X := AX; Y := AY end;

procedure TShape.Move(dx, dy: Integer);
begin Inc(X, dx); Inc(Y, dy) end;

constructor TCircle.Init(AX, AY, AR: Integer);
begin inherited Init(AX, AY); R := AR end;

procedure TCircle.Move(dx, dy: Integer);
begin inherited Move(dx, dy) end;

var P: PShape;
begin
  New(P, Init(0,0));  { manual construction }
  P^.Move(5,5);
  Dispose(P);         { manual destruction }
end.


end tpoop.
