object frmAdjustPrices: TfrmAdjustPrices
  Left = 192
  Top = 114
  Width = 677
  Height = 735
  Caption = 'Adjust prices'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 39
    Top = 30
    Width = 269
    Height = 24
    Caption = 'Type in percentage increase'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object redNormal: TRichEdit
    Left = 49
    Top = 177
    Width = 228
    Height = 474
    TabOrder = 0
  end
  object edtIncrease: TEdit
    Left = 49
    Top = 69
    Width = 96
    Height = 24
    TabOrder = 1
  end
  object btnAdjust: TButton
    Left = 49
    Top = 118
    Width = 93
    Height = 31
    Caption = 'Increase'
    TabOrder = 2
  end
  object redAdjust: TRichEdit
    Left = 325
    Top = 177
    Width = 228
    Height = 474
    TabOrder = 3
  end
end
