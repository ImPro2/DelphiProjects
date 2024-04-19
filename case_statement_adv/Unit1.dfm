object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ColorRadioGroup: TRadioGroup
    Left = 216
    Top = 160
    Width = 185
    Height = 145
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Red'
      'Orange'
      'Yellow'
      'Green'
      'Blue'
      'Indigo'
      'Violet')
    TabOrder = 0
    OnClick = ColorRadioGroupClick
  end
  object PercentageSpinEdit: TSpinEdit
    Left = 344
    Top = 376
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object PercentageInfoButton: TButton
    Left = 224
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Info'
    TabOrder = 2
    OnClick = PercentageInfoButtonClick
  end
end
