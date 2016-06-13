object frmOvenTemp: TfrmOvenTemp
  Left = 0
  Top = 0
  Caption = 'Oven Heating Time'
  ClientHeight = 193
  ClientWidth = 301
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
  object lblTemp: TLabel
    Left = 16
    Top = 19
    Width = 138
    Height = 13
    Caption = 'Temp goal in degrees Celcius'
  end
  object memTime: TMemo
    Left = 16
    Top = 43
    Width = 185
    Height = 134
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object edtTemp: TEdit
    Left = 160
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnDisplay: TButton
    Left = 207
    Top = 43
    Width = 75
    Height = 25
    Caption = '&Display'
    TabOrder = 1
    OnClick = btnDisplayClick
  end
  object bmbRetry: TBitBtn
    Left = 206
    Top = 121
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 207
    Top = 152
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
