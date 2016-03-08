object frmKooldrank: TfrmKooldrank
  Left = 0
  Top = 0
  Caption = 'frmKooldrank'
  ClientHeight = 229
  ClientWidth = 310
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
  object lblMachNo: TLabel
    Left = 8
    Top = 27
    Width = 72
    Height = 13
    Caption = 'Machine naam:'
  end
  object lblUre: TLabel
    Left = 117
    Top = 27
    Width = 55
    Height = 13
    Caption = 'Ure gewerk'
  end
  object lblMachTot: TLabel
    Left = 22
    Top = 46
    Width = 3
    Height = 13
  end
  object edtMachNo: TEdit
    Left = 86
    Top = 24
    Width = 25
    Height = 21
    TabOrder = 0
  end
  object sedUre: TSpinEdit
    Left = 178
    Top = 24
    Width = 39
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnMach: TButton
    Left = 223
    Top = 22
    Width = 75
    Height = 25
    Caption = '&Plus'
    TabOrder = 2
    OnClick = btnMachClick
  end
  object btnVertoon: TButton
    Left = 8
    Top = 65
    Width = 75
    Height = 25
    Caption = '&Vertoon Data'
    TabOrder = 3
    OnClick = btnVertoonClick
  end
  object redAfvoer: TRichEdit
    Left = 8
    Top = 104
    Width = 266
    Height = 97
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    Zoom = 100
  end
  object bmbRetry: TBitBtn
    Left = 97
    Top = 65
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 192
    Top = 65
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
end
