object frmRadio: TfrmRadio
  Left = 196
  Top = 107
  Caption = 'Radio Yebo'
  ClientHeight = 286
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblChoose: TLabel
    Left = 40
    Top = 72
    Width = 122
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Choose a number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblHead: TLabel
    Left = 104
    Top = 24
    Width = 170
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Radio Yebo Competition'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPick: TButton
    Left = 112
    Top = 112
    Width = 185
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Pick the prize'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnPickClick
  end
  object bmbNext: TBitBtn
    Left = 40
    Top = 200
    Width = 121
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Next listener'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkRetry
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
  end
  object bmbClose: TBitBtn
    Left = 224
    Top = 200
    Width = 75
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkClose
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
  end
  object pnlPrizes: TPanel
    Left = 112
    Top = 144
    Width = 185
    Height = 41
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
  end
  object sedNumber: TSpinEdit
    Left = 176
    Top = 64
    Width = 121
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    MaxValue = 5
    MinValue = 1
    TabOrder = 4
    Value = 1
  end
  object cbxVerdubbel: TCheckBox
    Left = 8
    Top = 116
    Width = 97
    Height = 17
    Caption = 'Double Prize'
    TabOrder = 5
  end
end
