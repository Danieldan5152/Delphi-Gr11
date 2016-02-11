object frmKosteSMS: TfrmKosteSMS
  Left = 0
  Top = 0
  Caption = 'Koste vir '#39'n SMS'
  ClientHeight = 123
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = z
  PixelsPerInch = 96
  TextHeight = 13
  object lblSMSString: TLabel
    Left = 8
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Die SMS String'
  end
  object edtSMSString: TEdit
    Left = 88
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object edtAfvoerK: TEdit
    Left = 8
    Top = 48
    Width = 297
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btnBewerk: TButton
    Left = 8
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 2
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 104
    Top = 88
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 216
    Top = 88
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 4
  end
end
