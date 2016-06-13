object frmDiceOdds: TfrmDiceOdds
  Left = 0
  Top = 0
  Caption = 'frmDiceOdds'
  ClientHeight = 201
  ClientWidth = 331
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
  object lblOdds: TLabel
    Left = 48
    Top = 24
    Width = 35
    Height = 13
    Caption = 'lblOdds'
  end
  object btnCalculate: TButton
    Left = 24
    Top = 107
    Width = 75
    Height = 25
    Caption = 'btnCalculate'
    TabOrder = 0
    OnClick = btnCalculateClick
  end
  object bmbRetry: TBitBtn
    Left = 128
    Top = 107
    Width = 75
    Height = 25
    Caption = 'bmbRetry'
    TabOrder = 1
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 248
    Top = 107
    Width = 75
    Height = 25
    Caption = 'bmbClose'
    TabOrder = 2
  end
end
