object frmClassMarks: TfrmClassMarks
  Left = 213
  Top = 152
  Width = 1088
  Height = 563
  Caption = 'Class Marks'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object btnEnter: TButton
    Left = 59
    Top = 26
    Width = 112
    Height = 31
    Caption = 'Enter marks'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnEnterClick
  end
  object bmbClose: TBitBtn
    Left = 61
    Top = 239
    Width = 92
    Height = 31
    TabOrder = 1
    Kind = bkClose
  end
  object redOut: TRichEdit
    Left = 58
    Top = 71
    Width = 327
    Height = 149
    TabOrder = 2
  end
end
