object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NameLabel: TLabel
    Left = 72
    Top = 40
    Width = 84
    Height = 13
    Caption = 'Enter your name:'
  end
  object EnterNameLengthLabel: TLabel
    Left = 72
    Top = 109
    Width = 92
    Height = 13
    Caption = 'Enter Name Length'
  end
  object NameEdit: TEdit
    Left = 72
    Top = 59
    Width = 129
    Height = 21
    TabOrder = 0
    Text = '...'
  end
  object SpinEdit1: TSpinEdit
    Left = 72
    Top = 128
    Width = 129
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object CheckNameLengthButton: TButton
    Left = 256
    Top = 57
    Width = 105
    Height = 25
    Caption = 'Check Name Length'
    TabOrder = 2
  end
  object DisplayButton: TButton
    Left = 264
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Display Name'
    TabOrder = 3
    OnClick = DisplayNameButtonClick
  end
end
