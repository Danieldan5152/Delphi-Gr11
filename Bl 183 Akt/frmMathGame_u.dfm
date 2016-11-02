object frmMathGame: TfrmMathGame
  Left = 307
  Top = 242
  Caption = 'Mathematical Game'
  ClientHeight = 252
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object btnAdd: TButton
    Left = 15
    Top = 96
    Width = 150
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'ADD'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnMultiply: TButton
    Left = 369
    Top = 96
    Width = 151
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'MULTIPLY'
    TabOrder = 1
    OnClick = btnMultiplyClick
  end
  object btnSubtract: TButton
    Left = 194
    Top = 96
    Width = 150
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'SUBTRACT'
    TabOrder = 2
    OnClick = btnSubtractClick
  end
  object sedVal1: TSpinEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object sedVal2: TSpinEdit
    Left = 280
    Top = 8
    Width = 121
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
end
