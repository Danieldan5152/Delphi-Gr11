object frmAtletiek: TfrmAtletiek
  Left = 0
  Top = 0
  Caption = 'Atletiek tye'
  ClientHeight = 134
  ClientWidth = 239
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
  object btnBeginSleutel: TButton
    Left = 150
    Top = 8
    Width = 75
    Height = 42
    Caption = '&Sleutel in tye en verwerk'
    TabOrder = 0
    WordWrap = True
    OnClick = btnBeginSleutelClick
  end
  object redAfvoer: TRichEdit
    Left = 8
    Top = 8
    Width = 136
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    Zoom = 100
  end
  object bmbRetry: TBitBtn
    Left = 150
    Top = 56
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 150
    Top = 87
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
