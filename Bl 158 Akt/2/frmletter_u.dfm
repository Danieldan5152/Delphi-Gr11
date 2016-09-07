object frmLetter: TfrmLetter
  Left = 220
  Top = 165
  Caption = 'GAME'
  ClientHeight = 161
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 13
  object lblLetter: TLabel
    Left = 50
    Top = 50
    Width = 8
    Height = 29
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSelect: TButton
    Left = 31
    Top = 13
    Width = 60
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = '&Select'
    TabOrder = 0
    OnClick = btnSelectClick
  end
  object bmbRetry: TBitBtn
    Left = 31
    Top = 128
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 1
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 141
    Top = 128
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
