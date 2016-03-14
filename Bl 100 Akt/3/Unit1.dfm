object frmPondNARand: TfrmPondNARand
  Left = 0
  Top = 0
  Caption = 'Pond Na Rand'
  ClientHeight = 250
  ClientWidth = 290
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
    Top = 16
    Width = 177
    Height = 13
    Caption = 'Sleutel in die huidige pond waarde R:'
  end
  object edtToevoer: TEdit
    Left = 191
    Top = 8
    Width = 83
    Height = 21
    TabOrder = 0
  end
  object redAfvoer: TRichEdit
    Left = 8
    Top = 35
    Width = 185
    Height = 198
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnBereken: TButton
    Left = 199
    Top = 33
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
