program ConsoleSandbox;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Rectangle in 'Rectangle.pas';

type
  Rectangle = class
    private
      Width, Height: int32;

    public
      constructor Create(w, h: int32);

      procedure SetWidthAndHeight(w, h: int32);
      function GetWidth():  int32;
      function GetHeight(): int32;

      procedure Draw();
  end;

constructor Rectangle.Create(w, h: int32);
begin
  Width  := w;
  Height := h;
end;

procedure Rectangle.SetWidthAndHeight(w, h: int32);
begin
  Width  := w;
  Height := h;
end;

function Rectangle.GetWidth(): int32;
begin
  GetWidth := Width;
end;

function Rectangle.GetHeight(): int32;
begin
  GetHeight := Height;
end;

procedure Rectangle.Draw();
var
  x, y: int32;
begin
  for y := 1 to Height do
  begin
    for x := 1 to Width do
      write(' * ');
    writeln('');
  end;

end;

var
  rect1: Rectangle;
begin
  rect1 := Rectangle.Create(5, 5);
  rect1.Draw;

  writeln(IntToStr(Sizeof(rect1)));

  Sleep(5000);
end.
