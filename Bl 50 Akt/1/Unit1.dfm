object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SRC Stemme beverking'
  ClientHeight = 179
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPiet: TLabel
    Left = 228
    Top = 43
    Width = 31
    Height = 13
    Caption = 'Piet: 0'
  end
  object lblSanny: TLabel
    Left = 228
    Top = 62
    Width = 43
    Height = 13
    Caption = 'Sanny: 0'
  end
  object lblSakkie: TLabel
    Left = 228
    Top = 81
    Width = 43
    Height = 13
    Caption = 'Sakkie: 0'
  end
  object lblStemme: TLabel
    Left = 207
    Top = 24
    Width = 99
    Height = 13
    Caption = 'Stemme vir leerders:'
  end
  object rgpLeerders: TRadioGroup
    Left = 16
    Top = 24
    Width = 185
    Height = 105
    Caption = 'SRC Nomenassies'
    Items.Strings = (
      'Piet'
      'Sanny'
      'Sakkie')
    TabOrder = 0
  end
  object btnVerwerk: TButton
    Left = 16
    Top = 135
    Width = 75
    Height = 25
    Caption = '&Verwerk'
    TabOrder = 1
    OnClick = btnVerwerkClick
  end
  object bmbClose: TBitBtn
    Left = 248
    Top = 135
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object bmbReset: TBitBtn
    Left = 144
    Top = 135
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bmbResetClick
  end
end
