object frmSMS_K: TfrmSMS_K
  Left = 0
  Top = 0
  Caption = 'SMS String Koste '
  ClientHeight = 91
  ClientWidth = 296
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
  object lblAfvoer: TLabel
    Left = 8
    Top = 35
    Width = 3
    Height = 13
  end
  object edtToevoer: TEdit
    Left = 8
    Top = 8
    Width = 283
    Height = 21
    TabOrder = 0
  end
  object btnBewerk: TButton
    Left = 217
    Top = 54
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 1
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 8
    Top = 54
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 89
    Top = 54
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
