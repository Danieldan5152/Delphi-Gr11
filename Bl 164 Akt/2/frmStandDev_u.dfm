object FrmStandardDeviation: TFrmStandardDeviation
  Left = 192
  Top = 146
  Width = 599
  Height = 563
  Caption = 'FrmStandardDeviation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 20
  object lblMsg: TLabel
    Left = 96
    Top = 168
    Width = 104
    Height = 20
    Caption = 'Enter a mark'
  end
  object edtMark: TEdit
    Left = 88
    Top = 208
    Width = 121
    Height = 28
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 88
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
  end
  object btnSD: TButton
    Left = 88
    Top = 320
    Width = 97
    Height = 89
    Caption = 'Calculate Standard Deviation'
    TabOrder = 2
    WordWrap = True
  end
  object pnlOut: TPanel
    Left = 240
    Top = 256
    Width = 321
    Height = 57
    TabOrder = 3
  end
  object memMsg: TMemo
    Left = 88
    Top = 16
    Width = 377
    Height = 129
    Lines.Strings = (
      'This program will calculate the '
      'Standard Deviation of a number of scores. '
      'The maximum number '
      'of scores you can '
      'enter is 20.')
    TabOrder = 4
    WordWrap = False
  end
end
