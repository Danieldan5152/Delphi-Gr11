object frmConcert: TfrmConcert
  Left = 0
  Top = 0
  Caption = 'Koste vir konsert'
  ClientHeight = 237
  ClientWidth = 308
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
  object lblKAdult: TLabel
    Left = 15
    Top = 16
    Width = 128
    Height = 13
    Caption = 'Koste per Groot persoon R'
  end
  object lblKKid: TLabel
    Left = 15
    Top = 40
    Width = 78
    Height = 13
    Caption = 'Koste per kind R'
  end
  object lblAdults: TLabel
    Left = 14
    Top = 75
    Width = 103
    Height = 13
    Caption = 'Hoeveel Groot Mense'
  end
  object lblKids: TLabel
    Left = 15
    Top = 103
    Width = 77
    Height = 13
    Caption = 'Hoeveel Kinders'
  end
  object lblKAdults: TLabel
    Left = 16
    Top = 133
    Width = 3
    Height = 13
  end
  object lblKKids: TLabel
    Left = 16
    Top = 152
    Width = 3
    Height = 13
  end
  object lblKTotale: TLabel
    Left = 15
    Top = 171
    Width = 3
    Height = 13
  end
  object edtKAdult: TEdit
    Left = 166
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtKKid: TEdit
    Left = 167
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object sedAdults: TSpinEdit
    Left = 167
    Top = 69
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object sedKids: TSpinEdit
    Left = 167
    Top = 97
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object btnBewerk: TButton
    Left = 8
    Top = 204
    Width = 121
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 4
    OnClick = btnBewerkClick
  end
  object bmbReset: TBitBtn
    Left = 132
    Top = 204
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 213
    Top = 204
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
end
