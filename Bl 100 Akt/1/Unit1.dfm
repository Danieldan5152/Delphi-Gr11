object frmLoops: TfrmLoops
  Left = 0
  Top = 0
  Caption = 'Loopings'
  ClientHeight = 278
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnA: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = '&A'
    TabOrder = 0
    OnClick = btnAClick
  end
  object btnB: TButton
    Left = 8
    Top = 47
    Width = 75
    Height = 25
    Caption = '&B'
    TabOrder = 1
    OnClick = btnBClick
  end
  object btnC: TButton
    Left = 8
    Top = 78
    Width = 75
    Height = 25
    Caption = '&C'
    TabOrder = 2
    OnClick = btnCClick
  end
  object btnD: TButton
    Left = 8
    Top = 109
    Width = 75
    Height = 25
    Caption = '&D'
    TabOrder = 3
    OnClick = btnDClick
  end
  object btnE: TButton
    Left = 8
    Top = 137
    Width = 75
    Height = 25
    Caption = '&E'
    TabOrder = 4
    OnClick = btnEClick
  end
  object redAfvoer: TRichEdit
    Left = 104
    Top = 18
    Width = 217
    Height = 247
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object bmbRetry: TBitBtn
    Left = 8
    Top = 199
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 8
    Top = 230
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  object btnF: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = '&F'
    TabOrder = 8
    OnClick = btnFClick
  end
end
