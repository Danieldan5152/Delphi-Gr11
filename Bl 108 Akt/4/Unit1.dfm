object frmPasswordTester: TfrmPasswordTester
  Left = 0
  Top = 0
  Caption = 'Password Tester'
  ClientHeight = 115
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPassword: TLabel
    Left = 16
    Top = 19
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblConclusion: TLabel
    Left = 64
    Top = 43
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object edtPassword: TEdit
    Left = 97
    Top = 16
    Width = 144
    Height = 21
    TabOrder = 0
  end
  object btnTest: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Test'
    TabOrder = 1
    OnClick = btnTestClick
  end
  object bmbRetry: TBitBtn
    Left = 97
    Top = 80
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 178
    Top = 80
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
end
