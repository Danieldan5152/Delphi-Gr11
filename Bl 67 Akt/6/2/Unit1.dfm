object frmInternetCafe: TfrmInternetCafe
  Left = 0
  Top = 0
  Caption = 'Internet Kaffee'
  ClientHeight = 278
  ClientWidth = 484
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
  object lblKVDag: TLabel
    Left = 8
    Top = 97
    Width = 95
    Height = 13
    Caption = 'Kliente vir die dag : '
  end
  object lblGGVDag: TLabel
    Left = 8
    Top = 116
    Width = 160
    Height = 13
    Caption = 'Gemiddeld inkomste vir die dag  R'
  end
  object lblGVDag: TLabel
    Left = 8
    Top = 135
    Width = 161
    Height = 13
    Caption = 'Inkomste vir die dag                   R'
  end
  object lblTydKlient: TLabel
    Left = 8
    Top = 196
    Width = 3
    Height = 13
  end
  object lblKosteKlient: TLabel
    Left = 8
    Top = 177
    Width = 144
    Height = 13
    Caption = 'Hoeveel geld die klient skuld R'
  end
  object lblToevoerHulp: TLabel
    Left = 8
    Top = 8
    Width = 203
    Height = 13
    Caption = 'Alle tye moet asvolg ingeslutel word 24:59'
  end
  object lblBegin: TLabel
    Left = 9
    Top = 27
    Width = 51
    Height = 13
    Caption = 'Begin Tyd:'
  end
  object lblEinde: TLabel
    Left = 9
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Eindig Tyd :'
  end
  object btnBereken: TButton
    Left = 8
    Top = 224
    Width = 75
    Height = 25
    Caption = '&Bereken'
    TabOrder = 0
    OnClick = btnBerekenClick
  end
  object bmbRetry: TBitBtn
    Left = 112
    Top = 224
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 1
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 224
    Top = 224
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object edtBegin: TEdit
    Left = 90
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtEinde: TEdit
    Left = 90
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
