unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    CalculateButton: TButton;
    QuestionPanel: TPanel;
    OutputPanel: TPanel;
    NextQuestionButton: TButton;
    AnswerEdit: TEdit;
    procedure CalculateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextQuestionButtonClick(Sender: TObject);
  private
    Answer : Int32;
    Num1, Num2 : Int32;

    // Changes the panel captions and generates the next set of random numbers.
    procedure NextQuestion();
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalculateButtonClick(Sender: TObject);
var
  userAnswer : Int32;
begin
  userAnswer := StrToInt(AnswerEdit.Text);
  if Answer = userAnswer then
  begin
    OutputPanel.Caption := 'Well done!';
    OutputPanel.Color := clLime;
  end else
  begin
    OutputPanel.Caption := 'Incorrect! The answer is: ' + IntToStr(Answer);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  NextQuestion();
end;

procedure TForm1.NextQuestion;
begin
  Num1 := Random(16);
  Num2 := Random(16);

  Answer := Num1 + Num2;

  QuestionPanel.Caption := IntToStr(Num1) + ' + ' + IntToStr(Num2) + ' = ?';
  OutputPanel.Caption := '';
end;

procedure TForm1.NextQuestionButtonClick(Sender: TObject);
begin
  NextQuestion();
end;

end.
