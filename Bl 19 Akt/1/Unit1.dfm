object frmInfo: TfrmInfo
  Left = 0
  Top = 0
  Caption = 'frmInfo'
  ClientHeight = 315
  ClientWidth = 521
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
    Top = 51
    Width = 37
    Height = 13
    Caption = 'lblNaam'
  end
  object lblVan: TLabel
    Left = 32
    Top = 91
    Width = 28
    Height = 13
    Caption = 'lblVan'
  end
  object lblFoon: TLabel
    Left = 312
    Top = 51
    Width = 34
    Height = 13
    Caption = 'lblFoon'
  end
  object lblSel: TLabel
    Left = 312
    Top = 91
    Width = 24
    Height = 13
    Caption = 'lblSel'
  end
  object lblEPos: TLabel
    Left = 312
    Top = 131
    Width = 33
    Height = 13
    Caption = 'lblEPos'
  end
  object edtNaam: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtNaam'
  end
  object edtVan: TEdit
    Left = 80
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtVan'
  end
  object edtFoon: TEdit
    Left = 360
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtFoon'
  end
  object edtSel: TEdit
    Left = 360
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtSel'
  end
  object edtEPos: TEdit
    Left = 360
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edtEPos'
  end
  object redAfvoer: TRichEdit
    Left = 80
    Top = 152
    Width = 185
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HideScrollBars = False
    Lines.Strings = (
      'redAfvoer')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
    Zoom = 100
  end
  object btnAdd: TButton
    Left = 360
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btnAdd'
    TabOrder = 6
    OnClick = btnAddClick
  end
  object bmbReset: TBitBtn
    Left = 360
    Top = 216
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 7
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 360
    Top = 264
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 8
  end
end
