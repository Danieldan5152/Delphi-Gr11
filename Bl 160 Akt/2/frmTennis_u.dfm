object frmTennis: TfrmTennis
  Left = 192
  Top = 114
  Caption = 'Choose the tennis teams'
  ClientHeight = 384
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 13
  object lblName: TLabel
    Left = 86
    Top = 31
    Width = 244
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Choose a number from 1 to 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sedSelect: TSpinEdit
    Left = 102
    Top = 63
    Width = 120
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MaxValue = 10
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object btnDisplay: TButton
    Left = 54
    Top = 102
    Width = 74
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Add Names&'
    TabOrder = 1
    OnClick = btnDisplayClick
  end
  object redA: TRichEdit
    Left = 16
    Top = 150
    Width = 182
    Height = 166
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Team A')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object redB: TRichEdit
    Left = 229
    Top = 150
    Width = 181
    Height = 166
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Team B')
    ParentFont = False
    TabOrder = 3
    Zoom = 100
  end
  object bmbRetry: TBitBtn
    Left = 157
    Top = 102
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 263
    Top = 102
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
end
