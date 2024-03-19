unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    RedLight: TShape;
    GreenLight: TShape;
    YellowLight: TShape;
    Timer1: TTimer;
    procedure OnFormCreate(Sender: TObject);
    procedure OnTimerTick(Sender: TObject);
  private
    { Private declarations }
    iCount : Int32;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.OnFormCreate(Sender: TObject);
begin
  iCount := 0;
end;

procedure TForm1.OnTimerTick(Sender: TObject);
begin
  case iCount of
  1:
    begin
      RedLight.Brush.Color    := clRed;
      YellowLight.Brush.Color := clWhite;
      GreenLight.Brush.Color  := clWhite;
    end;
  20:
    begin
      RedLight.Brush.Color    := clWhite;
      YellowLight.Brush.Color := clYellow;
      GreenLight.Brush.Color  := clWhite;
    end;
  30:
    begin
      RedLight.Brush.Color    := clWhite;
      YellowLight.Brush.Color := clWhite;
      GreenLight.Brush.Color  := clLime;
    end;
  end;

  if iCount > 40 then
    iCount := 0;

  form1.Caption := IntToStr(iCount);

  inc(iCount, 1);
end;

end.
