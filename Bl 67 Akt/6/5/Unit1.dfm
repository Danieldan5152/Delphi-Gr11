object frmVoorletter: TfrmVoorletter
  Left = 0
  Top = 0
  Caption = 'Jou voorletter'
  ClientHeight = 114
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
  object lblNaamENVan: TLabel
    Left = 8
    Top = 24
    Width = 63
    Height = 13
    Caption = 'Naam en Van'
  end
  object lblVanENVoorlett: TLabel
    Left = 8
    Top = 51
    Width = 104
    Height = 13
    Caption = 'Jou Van en Voorletter'
  end
  object edtNaamENVan: TEdit
    Left = 118
    Top = 21
    Width = 138
    Height = 21
    TabOrder = 0
  end
  object btnBewerk: TButton
    Left = 15
    Top = 81
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 1
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 96
    Top = 81
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object bmbClose: TBitBtn
    Left = 177
    Top = 81
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object edtVanENVoorlett: TEdit
    Left = 118
    Top = 48
    Width = 138
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
end
