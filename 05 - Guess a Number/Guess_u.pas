unit Guess_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmGuessANumber = class(TForm)
    edtGuess: TEdit;
    lblEnterHint: TLabel;
    lblNumberTries: TLabel;
    lblNumberTriesHint: TLabel;
    lblWinning: TLabel;
    lblWinningNo: TLabel;
    btnGuess: TButton;
    lblMessage: TLabel;
    btnGetScore: TButton;
    lblScoreHint: TLabel;
    lblScore: TLabel;
    procedure btnGuessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGetScoreClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGuessANumber: TfrmGuessANumber;
  iScore, iNoTries : integer;

implementation

{$R *.dfm}

procedure TfrmGuessANumber.btnGetScoreClick(Sender: TObject);
begin
  lblScore.Caption := IntToStr(iScore);
end;

procedure TfrmGuessANumber.btnGuessClick(Sender: TObject);
var iWinNo, iGuessNo : integer;
begin
  lblMessage.Caption := '';
  iWinNo := Random(51) + 50;
  iGuessNo := StrToInt(edtGuess.Text);

  if (iGuessNo > 49) and (iGuessNo < 101) then
  begin
    inc(iNoTries);
    lblNumberTries.Caption := IntToStr(iNoTries);
    lblWinningNo.Caption := IntToStr(iWinNo);

    if iWinNo = iGuessNo then
    begin
      iScore := iScore + 10;
      lblMessage.Caption := 'Great Stuff';
    end
    else if (iGuessNo > (iWinNo - 6)) and (iGuessNo < iWinNo) then
    begin
      iScore := iScore + 1;
      lblMessage.Caption := 'Keep going';
    end;
  end
  else
  begin
    lblMessage.Caption := 'Number must be between 50 and 100.';
  end;
end;

procedure TfrmGuessANumber.FormCreate(Sender: TObject);
begin
   iScore := 0;
   iNoTries :=0;
end;

end.


