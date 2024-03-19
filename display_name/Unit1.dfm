object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object EnterNameLabel: TLabel
    Left = 256
    Top = 144
    Width = 65
    Height = 15
    Caption = 'Enter Name:'
  end
  object NameEditBox: TEdit
    Left = 232
    Top = 165
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 0
    Text = 'NameEditBox'
    OnKeyPress = OnNameEditBoxKeyPress
  end
  object DisplayNameButton: TButton
    Left = 232
    Top = 194
    Width = 121
    Height = 25
    Caption = 'Display Name'
    TabOrder = 1
    OnClick = DisplayNameButtonClick
  end
end
