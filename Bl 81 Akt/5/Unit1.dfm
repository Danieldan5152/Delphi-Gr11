object frmStemme: TfrmStemme
  Left = 0
  Top = 0
  Caption = 'SCR Leerder'
  ClientHeight = 194
  ClientWidth = 264
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
  object lblGr11L: TLabel
    Left = 8
    Top = 11
    Width = 65
    Height = 13
    Caption = 'Gr11 leerders'
  end
  object lblGr12L: TLabel
    Left = 8
    Top = 39
    Width = 65
    Height = 13
    Caption = 'Gr12 leerders'
  end
  object lblGr11Stem: TLabel
    Left = 8
    Top = 67
    Width = 64
    Height = 13
    Caption = 'Gr11 Stemme'
  end
  object lblGr12Stem: TLabel
    Left = 10
    Top = 95
    Width = 63
    Height = 13
    Caption = 'Gr12 stemme'
  end
  object sedGr11L: TSpinEdit
    Left = 96
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object sedGr12L: TSpinEdit
    Left = 96
    Top = 36
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object sedGr11Stem: TSpinEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object sedGr12Stem: TSpinEdit
    Left = 96
    Top = 92
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object btnBewerk: TButton
    Left = 6
    Top = 159
    Width = 75
    Height = 25
    Caption = 'btnBewerk'
    TabOrder = 4
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 93
    Top = 159
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 174
    Top = 159
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
  object edtAfvoer: TEdit
    Left = 8
    Top = 136
    Width = 241
    Height = 17
    ReadOnly = True
    TabOrder = 7
  end
end
