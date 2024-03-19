object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 248
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object CalculateButton: TButton
    Left = 88
    Top = 97
    Width = 89
    Height = 25
    Caption = 'Calculate'
    TabOrder = 0
    OnClick = CalculateButtonClick
  end
  object QuestionPanel: TPanel
    Left = 88
    Top = 50
    Width = 185
    Height = 41
    TabOrder = 1
  end
  object OutputPanel: TPanel
    Left = 88
    Top = 157
    Width = 185
    Height = 41
    TabOrder = 2
  end
  object NextQuestionButton: TButton
    Left = 183
    Top = 97
    Width = 91
    Height = 25
    Caption = 'Next Question'
    TabOrder = 3
    OnClick = NextQuestionButtonClick
  end
  object AnswerEdit: TEdit
    Left = 88
    Top = 128
    Width = 185
    Height = 23
    TabOrder = 4
  end
end
