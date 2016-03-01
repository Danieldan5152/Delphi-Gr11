object frmPass: TfrmPass
  Left = 0
  Top = 0
  Caption = 'Nuwe kode'
  ClientHeight = 134
  ClientWidth = 279
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
  object lblToevoer: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Naam en Van'
  end
  object lblVoorLetters: TLabel
    Left = 8
    Top = 35
    Width = 79
    Height = 13
    Caption = 'Jou Voor Letters'
  end
  object lblPas: TLabel
    Left = 8
    Top = 70
    Width = 72
    Height = 13
    Caption = 'Jou nuwe kode'
  end
  object edtToevoer: TEdit
    Left = 90
    Top = 5
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object edtVoorLetters: TEdit
    Left = 93
    Top = 32
    Width = 44
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edtPass: TEdit
    Left = 93
    Top = 59
    Width = 44
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object btnBewerk: TButton
    Left = 0
    Top = 99
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 1
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 102
    Top = 99
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 192
    Top = 99
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
end
