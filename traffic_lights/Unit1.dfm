object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 317
  ClientWidth = 113
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = OnFormCreate
  TextHeight = 15
  object RedLight: TShape
    Left = 24
    Top = 32
    Width = 65
    Height = 65
    Brush.Color = clRed
    Shape = stCircle
  end
  object GreenLight: TShape
    Left = 24
    Top = 224
    Width = 65
    Height = 65
    Brush.Color = clLime
    Shape = stCircle
  end
  object YellowLight: TShape
    Left = 24
    Top = 128
    Width = 65
    Height = 65
    Brush.Color = clYellow
    Shape = stCircle
  end
  object Timer1: TTimer
    OnTimer = OnTimerTick
    Left = 56
    Top = 192
  end
end
