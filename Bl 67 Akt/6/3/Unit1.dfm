object frmMuurPapier: TfrmMuurPapier
  Left = 0
  Top = 0
  Caption = 'Muur Papier Koste'
  ClientHeight = 173
  ClientWidth = 375
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
  object lblBreedte: TLabel
    Left = 19
    Top = 35
    Width = 137
    Height = 13
    Caption = 'Breedte van kamer in meter:'
  end
  object lblHoogte: TLabel
    Left = 19
    Top = 59
    Width = 134
    Height = 13
    Caption = 'Hoogte van kamer in meter:'
  end
  object lblAfvoerK: TLabel
    Left = 27
    Top = 120
    Width = 3
    Height = 13
  end
  object lblInfo: TLabel
    Left = 19
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Een rol kos '
  end
  object lblAfvoer: TLabel
    Left = 27
    Top = 102
    Width = 3
    Height = 13
  end
  object edtBreedte: TEdit
    Left = 159
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtHoogte: TEdit
    Left = 159
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnBewerk: TButton
    Left = 27
    Top = 139
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 2
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 128
    Top = 139
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 224
    Top = 139
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
