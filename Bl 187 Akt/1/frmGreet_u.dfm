object frmGreet: TfrmGreet
  Left = 294
  Top = 224
  Caption = 'Greet me in a specific language'
  ClientHeight = 363
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object lblMsg: TLabel
    Left = 24
    Top = 7
    Width = 113
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Enter your name'
  end
  object btnEng: TButton
    Left = 24
    Top = 128
    Width = 76
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'English'
    TabOrder = 0
    OnClick = btnEngClick
  end
  object btnAfr: TButton
    Left = 24
    Top = 202
    Width = 76
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Afrikaans'
    TabOrder = 1
    OnClick = btnAfrClick
  end
  object btnFrench: TButton
    Left = 24
    Top = 275
    Width = 76
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'French'
    TabOrder = 2
    OnClick = btnFrenchClick
  end
  object pnlMsg: TPanel
    Left = 30
    Top = 71
    Width = 385
    Height = 39
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'In which language do you want to be greeted?'
    TabOrder = 3
  end
  object pnlOut: TPanel
    Left = 178
    Top = 173
    Width = 333
    Height = 78
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 4
  end
  object edtName: TEdit
    Left = 24
    Top = 32
    Width = 225
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 5
  end
end
