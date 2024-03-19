unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    AddButton: TButton;
    MinusButton: TButton;
    MultiplyButton: TButton;
    DivideButton: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    OutputLabel: TLabel;
    procedure AddButtonClick(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplyButtonClick(Sender: TObject);
    procedure DivideButtonClick(Sender: TObject);
  private
    Num1, Num2 : Int32;
    Operation : Char;

    procedure DoOperation();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DoOperation;
var
  Output : Int32;
begin
  Num1 := StrToInt(Edit1.Text);
  Num2 := StrToInt(Edit2.Text);

  case Operation of
    '+': Output := Num1 + Num2;
    '-': Output := Num1 - Num2;
    '*': Output := Num1 * Num2;
    '/': Output := Num1 div Num2;
  end;

  OutputLabel.Caption := IntToStr(Output);
end;

procedure TForm1.AddButtonClick(Sender: TObject);
begin
  Operation := '+';
  DoOperation();
end;

procedure TForm1.MinusButtonClick(Sender: TObject);
begin
  Operation := '-';
  DoOperation();
end;

procedure TForm1.DivideButtonClick(Sender: TObject);
begin
  Operation := '/';
  DoOperation();
end;

procedure TForm1.MultiplyButtonClick(Sender: TObject);
begin
  Operation := '*';
  DoOperation();
end;

end.
