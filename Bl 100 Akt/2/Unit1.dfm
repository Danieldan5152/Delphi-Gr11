object frmVierKants: TfrmVierKants
  Left = 0
  Top = 0
  Caption = 'Vierkants Wortels'
  ClientHeight = 181
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object redAfvoer: TRichEdit
    Left = 8
    Top = 8
    Width = 132
    Height = 161
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Die eerste 10 vierkants '
      'wortels:'
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    Zoom = 100
  end
  object btnVerwerk: TButton
    Left = 146
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Verwerk'
    TabOrder = 1
    OnClick = btnVerwerkClick
  end
  object bmbRetry: TBitBtn
    Left = 146
    Top = 72
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 146
    Top = 144
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
