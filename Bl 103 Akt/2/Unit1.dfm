object frmPswrd: TfrmPswrd
  Left = 0
  Top = 0
  Caption = 'Password Generator'
  ClientHeight = 77
  ClientWidth = 261
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
  object edtPswrd: TEdit
    Left = 15
    Top = 46
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object btnGenerate: TButton
    Left = 15
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Generate'
    TabOrder = 1
    OnClick = btnGenerateClick
  end
  object bmbRetry: TBitBtn
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 177
    Top = 8
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
