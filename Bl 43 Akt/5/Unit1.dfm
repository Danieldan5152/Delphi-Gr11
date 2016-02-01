object frmHuisSkool: TfrmHuisSkool
  Left = 0
  Top = 0
  Caption = 'Van huis na Skool'
  ClientHeight = 104
  ClientWidth = 231
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
    Top = 36
    Width = 3
    Height = 13
  end
  object sedMin: TSpinEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnBewerk: TButton
    Left = 135
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 1
    OnClick = btnBewerkClick
  end
  object bmbReset: TBitBtn
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 135
    Top = 64
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
