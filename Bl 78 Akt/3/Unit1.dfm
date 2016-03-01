object frmFunDay: TfrmFunDay
  Left = 0
  Top = 0
  Caption = 'PretDag'
  ClientHeight = 183
  ClientWidth = 267
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
  object lblNaam: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Naam ?'
  end
  object lblOuderdom: TLabel
    Left = 8
    Top = 38
    Width = 58
    Height = 13
    Caption = 'Ouderdom ?'
  end
  object lblAfvoer: TLabel
    Left = 8
    Top = 72
    Width = 3
    Height = 13
  end
  object lblKinders: TLabel
    Left = 8
    Top = 91
    Width = 76
    Height = 13
    Caption = 'Kinders al hier 0'
  end
  object lblOuers: TLabel
    Left = 8
    Top = 110
    Width = 70
    Height = 13
    Caption = 'Ouers al hier 0'
  end
  object lblTotaal: TLabel
    Left = 8
    Top = 129
    Width = 75
    Height = 13
    Caption = 'Mense al hier 0 '
  end
  object TEdit
    Left = 89
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object sedOuderdom: TSpinEdit
    Left = 89
    Top = 35
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnVertoon: TButton
    Left = 8
    Top = 148
    Width = 75
    Height = 25
    Caption = '&Vertoon'
    TabOrder = 2
    OnClick = btnVertoonClick
  end
  object bmbRetry: TBitBtn
    Left = 89
    Top = 148
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 170
    Top = 148
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
end
