unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var iAge: int32;
begin
  iAge := StrToInt(Edit1.Text);

  case iAge of
  14:  Label1.Caption := 'Fourteen';
  15:  Label1.Caption := 'Fifteen';
  16:  Label1.Caption := '61';
  17:  Label1.Caption := '71';
  18:  Label1.Caption := 'Eighteen';
  else Label1.Caption := Edit1.Text;
  end;
end;

end.
