object frmASCII: TfrmASCII
  Left = 0
  Top = 0
  Caption = 'Verandering van letters'
  ClientHeight = 121
  ClientWidth = 550
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
  object lblLetter: TLabel
    Left = 8
    Top = 8
    Width = 182
    Height = 13
    Caption = 'Sleutel '#39'n letter tussen (A..Z) of (a..z)'
  end
  object lblASCII: TLabel
    Left = 313
    Top = 8
    Width = 234
    Height = 13
    Caption = 'sleutel in '#39'n nommer tussen (65..90) of (97..122)'
  end
  object edtLetter: TEdit
    Left = 24
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'A'
  end
  object sedASCII: TSpinEdit
    Left = 392
    Top = 45
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 65
  end
  object btnLetter: TButton
    Left = 216
    Top = 25
    Width = 75
    Height = 25
    Caption = '<< Na Letter'
    TabOrder = 2
    OnClick = btnLetterClick
  end
  object btnASCII: TButton
    Left = 216
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Na ASCII >>'
    TabOrder = 3
    OnClick = btnASCIIClick
  end
  object bmbRetry: TBitBtn
    Left = 24
    Top = 80
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 448
    Top = 80
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
end
