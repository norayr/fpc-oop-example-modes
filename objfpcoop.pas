unit objfpcoop;

interface
//uses Classes;

type
  TShape = class
  protected
    FX, FY: Integer;
  public
    constructor Create(AX, AY: Integer);
    procedure Move(dx, dy: Integer); virtual;
  end;

  TCircle = class(TShape)
  private
    FR: Integer;
  public
    constructor Create(AX, AY, AR: Integer);
    procedure Move(dx,dy: Integer); override;
  end;

implementation

constructor TShape.Create(AX, AY: Integer);
begin inherited Create; FX := AX; FY := AY; end;

procedure TShape.Move(dx, dy: Integer);
begin Inc(FX, dx); Inc(FY, dy) end;

constructor TCircle.Create(AX, AY, AR: Integer);
begin inherited Create(AX, AY); FR := AR; end;

procedure TCircle.Move(dx, dy: Integer);
begin inherited Move(dx, dy) end;

var S: TShape;
begin
  S := TCircle.Create(0,0,10);
  try S.Move(5,5); finally S.Free end;
end.


end objfpcoop.
