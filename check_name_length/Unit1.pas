unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    NameLabel: TLabel;
    NameEdit: TEdit;
    SpinEdit1: TSpinEdit;
    CheckNameLengthButton: TButton;
    DisplayButton: TButton;
    EnterNameLengthLabel: TLabel;
    procedure CheckNameLengthButtonClick(Sender: TObject);
    procedure DisplayNameButtonClick(Sender: TObject);
  private
    NameLength : Int32;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DisplayNameButtonClick(Sender: TObject);
var
  NameEntered : Boolean;
  Num: Int32;
begin
  NameEntered := False;
  Num :=
end;

procedure TForm1.CheckNameLengthButtonClick(Sender: TObject);
var
  Name: string;
begin
  Name := NameEdit.Text;
  NameLength := Length(Name);
end;

end.
