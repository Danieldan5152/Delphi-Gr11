object frmWoorde: TfrmWoorde
  Left = 0
  Top = 0
  Caption = 'Woorde Verwerk'
  ClientHeight = 108
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAfvoer: TLabel
    Left = 13
    Top = 88
    Width = 3
    Height = 13
  end
  object edtToevoer: TEdit
    Left = 8
    Top = 8
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object btnBereken: TButton
    Left = 13
    Top = 48
    Width = 75
    Height = 25
    Caption = '&Bereken'
    TabOrder = 1
    OnClick = btnBerekenClick
  end
  object bmbRetry: TBitBtn
    Left = 94
    Top = 48
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 184
    Top = 48
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
