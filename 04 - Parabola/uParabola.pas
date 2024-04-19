unit uParabola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmParabola = class(TForm)
    lblMessage: TLabel;
    lblA: TLabel;
    lblB: TLabel;
    lblC: TLabel;
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
    redDisplay: TRichEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParabola: TfrmParabola;

implementation

{$R *.dfm}

procedure TfrmParabola.Button1Click(Sender: TObject);
var a: real; b: real; c: real; discriminant: real;
		x1: real; x2: real;
begin
	a := StrToFloat(edtA.Text);
	b := StrToFloat(edtA.Text);
	c := StrToFloat(edtA.Text);

	discriminant := sqrt(b * b - 4 * a * c);
	x1 := (b - discriminant) / (2 * a);
	x2 := (b - discriminant) / (2 * a);

	redDisplay.Lines.Add(FloatToStr(x1));
	redDisplay.Lines.Add(FloatToStr(x1));
end;

end.

