object frmPCWV: TfrmPCWV
  Left = 0
  Top = 0
  Caption = 'Rekenaar waardevermindering'
  ClientHeight = 247
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblToevoer: TLabel
    Left = 8
    Top = 19
    Width = 115
    Height = 13
    Caption = 'Kosprys van rekenaar R'
  end
  object edtToevoer: TEdit
    Left = 129
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object redAfvoer: TRichEdit
    Left = 8
    Top = 43
    Width = 185
    Height = 190
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnBereken: TButton
    Left = 199
    Top = 43
    Width = 75
    Height = 25
    Caption = '&Bereken'
    TabOrder = 2
    OnClick = btnBerekenClick
  end
  object bmbRetry: TBitBtn
    Left = 199
    Top = 177
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 199
    Top = 208
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
end
