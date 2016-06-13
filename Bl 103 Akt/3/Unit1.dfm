object frmLogon: TfrmLogon
  Left = 0
  Top = 0
  Caption = 'Rekening Naam'
  ClientHeight = 201
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblVan: TLabel
    Left = 24
    Top = 24
    Width = 18
    Height = 13
    Caption = 'Van'
  end
  object lblDateOBirth: TLabel
    Left = 24
    Top = 51
    Width = 79
    Height = 13
    Caption = 'Geboorte Datum'
  end
  object lblAccountN: TLabel
    Left = 24
    Top = 96
    Width = 100
    Height = 13
    Caption = 'Nuwe rekening naam'
  end
  object edtVan: TEdit
    Left = 112
    Top = 21
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edtDateOBirth: TEdit
    Left = 112
    Top = 48
    Width = 169
    Height = 21
    TabOrder = 1
    Text = 'YYYY/MM/DD'
  end
  object edtAccountN: TEdit
    Left = 160
    Top = 93
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object btnVertoon: TButton
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Vertoon'
    TabOrder = 3
    OnClick = btnVertoonClick
  end
  object bmbRetry: TBitBtn
    Left = 136
    Top = 144
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 240
    Top = 144
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
end
