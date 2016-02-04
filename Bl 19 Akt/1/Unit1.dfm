object frmInfo: TfrmInfo
  Left = 0
  Top = 0
  Caption = 'Info'
  ClientHeight = 292
  ClientWidth = 435
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
    Left = 32
    Top = 27
    Width = 27
    Height = 13
    Caption = 'Naam'
  end
  object lblVan: TLabel
    Left = 32
    Top = 67
    Width = 18
    Height = 13
    Caption = 'Van'
  end
  object lblFoon: TLabel
    Left = 240
    Top = 27
    Width = 24
    Height = 13
    Caption = 'Foon'
  end
  object lblSel: TLabel
    Left = 240
    Top = 67
    Width = 14
    Height = 13
    Caption = 'Sel'
  end
  object lblEPos: TLabel
    Left = 240
    Top = 107
    Width = 23
    Height = 13
    Caption = 'EPos'
  end
  object edtNaam: TEdit
    Left = 80
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtVan: TEdit
    Left = 80
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtFoon: TEdit
    Left = 288
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtSel: TEdit
    Left = 288
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtEPos: TEdit
    Left = 288
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btnAdd: TButton
    Left = 288
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Add'
    TabOrder = 5
    OnClick = btnAddClick
  end
  object bmbReset: TBitBtn
    Left = 288
    Top = 192
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 288
    Top = 240
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  object redAfvoer: TRichEdit
    Left = 32
    Top = 128
    Width = 185
    Height = 137
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssHorizontal
    TabOrder = 8
  end
end
