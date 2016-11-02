object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 380
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnBereken: TButton
    Left = 48
    Top = 288
    Width = 75
    Height = 25
    Caption = 'btnBereken'
    TabOrder = 0
    OnClick = btnBerekenClick
  end
  object redJunior: TRichEdit
    Left = 64
    Top = 80
    Width = 129
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redJunior')
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object redSenior: TRichEdit
    Left = 216
    Top = 80
    Width = 161
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redSenior')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
end
