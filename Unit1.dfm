object Form1: TForm1
  Left = 600
  Top = 185
  Width = 256
  Height = 250
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 72
    Top = 48
  end
end
