object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 285
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object OutputLabel: TLabel
    Left = 112
    Top = 184
    Width = 155
    Height = 13
    Caption = '0'
  end
  object AddButton: TButton
    Left = 112
    Top = 107
    Width = 65
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = AddButtonClick
  end
  object MinusButton: TButton
    Left = 202
    Top = 107
    Width = 65
    Height = 25
    Caption = '-'
    TabOrder = 1
    OnClick = MinusButtonClick
  end
  object MultiplyButton: TButton
    Left = 112
    Top = 138
    Width = 65
    Height = 25
    Caption = '*'
    TabOrder = 2
    OnClick = MultiplyButtonClick
  end
  object DivideButton: TButton
    Left = 202
    Top = 138
    Width = 65
    Height = 25
    Caption = '/'
    TabOrder = 3
    OnClick = DivideButtonClick
  end
  object Edit1: TEdit
    Left = 112
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 202
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 5
  end
end
