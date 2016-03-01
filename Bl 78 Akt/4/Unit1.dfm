object frmCourier: TfrmCourier
  Left = 0
  Top = 0
  Caption = 'Courier Besigheid'
  ClientHeight = 180
  ClientWidth = 303
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
  object lblAfstand: TLabel
    Left = 8
    Top = 35
    Width = 92
    Height = 13
    Caption = 'Afstand van Pakkie'
  end
  object lblTotaal: TLabel
    Left = 128
    Top = 115
    Width = 74
    Height = 13
    Caption = 'Totale Koste R:'
  end
  object lblGewig: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 13
    Caption = 'Gewig Van Pakkie'
  end
  object radTipeVervoer: TRadioGroup
    Left = 8
    Top = 62
    Width = 105
    Height = 105
    Caption = 'Tipe Vervoer'
    ItemIndex = 0
    Items.Strings = (
      'Pad'
      'Trein'
      'Lug'
      'Skip')
    TabOrder = 0
  end
  object cbxVersekering: TCheckBox
    Left = 128
    Top = 77
    Width = 129
    Height = 17
    Caption = 'Versekering op pakkie?'
    TabOrder = 1
  end
  object cbxHoeP: TCheckBox
    Left = 128
    Top = 92
    Width = 145
    Height = 17
    Caption = 'Hoe Prioriteit op Pakkie?'
    TabOrder = 2
  end
  object edtTotaal: TEdit
    Left = 208
    Top = 115
    Width = 57
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object btnBewerk: TButton
    Left = 119
    Top = 142
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 4
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 190
    Top = 6
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 208
    Top = 142
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
  object edtGewig: TEdit
    Left = 106
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 7
  end
  object edtAfstand: TEdit
    Left = 106
    Top = 35
    Width = 65
    Height = 21
    TabOrder = 8
  end
end
