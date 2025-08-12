program test_objfpcoop;
{$mode objfpc}{$H+}

uses objfpcoop;

var
  a, b, c: TVec2;
begin
  a := TVec2.Create(1, 2);
  b := TVec2.Create(3, 4);
  try
    c := a.Add(b); // returns a new instance
    try
      WriteLn('objfpcoop: (', c.X:0:0, ', ', c.Y:0:0, ')'); // (4, 6)
    finally
      c.Free;
    end;
  finally
    a.Free;
    b.Free;
  end;
end.
