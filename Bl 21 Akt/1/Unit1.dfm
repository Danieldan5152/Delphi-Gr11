object frmSimCal: TfrmSimCal
  Left = 206
  Top = 77
  Caption = 'Simple Calculator'
  ClientHeight = 210
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object sedEersteG: TSpinEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object edtAfvoer: TEdit
    Left = 32
    Top = 120
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btnPlus: TButton
    Left = 192
    Top = 16
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btnPlusClick
  end
  object btnMinus: TButton
    Left = 192
    Top = 62
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = btnMinusClick
  end
  object btnMaal: TButton
    Left = 192
    Top = 102
    Width = 75
    Height = 25
    Caption = 'X'
    TabOrder = 4
    OnClick = btnMaalClick
  end
  object btnDeel: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = btnDeelClick
  end
  object bmbReset: TBitBtn
    Left = 24
    Top = 176
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 6
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 128
    Top = 176
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 7
  end
  object sedTweedeG: TSpinEdit
    Left = 32
    Top = 72
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
end
