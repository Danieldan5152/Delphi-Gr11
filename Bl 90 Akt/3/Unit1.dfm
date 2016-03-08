object frmWoordSpeeltjie: TfrmWoordSpeeltjie
  Left = 0
  Top = 0
  Caption = 'Woord Speel'
  ClientHeight = 107
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblVoorigeW: TLabel
    Left = 24
    Top = 8
    Width = 3
    Height = 13
  end
  object edtWoord: TEdit
    Left = 8
    Top = 40
    Width = 180
    Height = 21
    TabOrder = 0
  end
  object btnBereken: TButton
    Left = 8
    Top = 67
    Width = 75
    Height = 25
    Caption = '&Bereken'
    TabOrder = 1
    OnClick = btnBerekenClick
  end
  object bmbRetry: TBitBtn
    Left = 113
    Top = 67
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 113
    Top = 9
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
