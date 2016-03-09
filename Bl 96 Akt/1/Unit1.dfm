object frmGroot5: TfrmGroot5
  Left = 0
  Top = 0
  Caption = 'Groot Vyf Gesien?'
  ClientHeight = 168
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblOpskrif: TLabel
    Left = 215
    Top = 8
    Width = 30
    Height = 13
    Caption = 'Totale'
  end
  object lblBuffel: TLabel
    Left = 215
    Top = 35
    Width = 3
    Height = 13
  end
  object lblOlifant: TLabel
    Left = 215
    Top = 54
    Width = 3
    Height = 13
  end
  object lblRhino: TLabel
    Left = 215
    Top = 73
    Width = 3
    Height = 13
  end
  object lblleeu: TLabel
    Left = 215
    Top = 92
    Width = 3
    Height = 13
  end
  object lblLuuiperd: TLabel
    Left = 215
    Top = 111
    Width = 3
    Height = 13
  end
  object rgpGroot5: TRadioGroup
    Left = 8
    Top = 24
    Width = 185
    Height = 105
    Caption = 'Die Groot Vyf'
    Items.Strings = (
      'Buffel'
      'Olifant'
      'Rhino'
      'Leeu'
      'Luuiperd')
    TabOrder = 0
    OnClick = rgpGroot5Click
  end
  object bmbRetry: TBitBtn
    Left = 16
    Top = 135
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 1
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 215
    Top = 135
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
