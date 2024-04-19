unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    NameButton: TButton;
    SurnameButton: TButton;
    DisplayPanel: TPanel;
    procedure NameButtonClick(Sender: TObject);
    procedure SurnameButtonClick(Sender: TObject);
    procedure DisplayPanelClick(Sender: TObject);
  private
    { Private declarations }
    sName: String;
    sSurname: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DisplayPanelClick(Sender: TObject);
var
  SurnameLength : int32;
  i: int32;
  sReverseName : String;
begin
  SurnameLength := length(sSurname);

  for i := 0 to length(sName) do
  begin
    sReverseName := sReverseName + Name[length(Name) - i];
  end;

  DisplayPanel.Caption := String(sReverseName) + ' ' + sSurname + ', Surname Length: ' + IntToStr(SurnameLength);
end;

procedure TForm1.NameButtonClick(Sender: TObject);
begin
  sName := InputBox('Input Name Dialog', 'Enter name: ', '');
end;

procedure TForm1.SurnameButtonClick(Sender: TObject);
begin
  sSurname := InputBox('Input Surname Dialog', 'Enter surname: ', '');
end;

end.
