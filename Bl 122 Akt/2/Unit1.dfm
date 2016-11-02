object frmPswrdCrck: TfrmPswrdCrck
  Left = 0
  Top = 0
  Caption = 'Pasword Cracker'
  ClientHeight = 144
  ClientWidth = 263
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
    Left = 24
    Top = 8
    Width = 149
    Height = 13
    Caption = 'Enter Password four char max.'
  end
  object lblResult: TLabel
    Left = 24
    Top = 72
    Width = 3
    Height = 13
  end
  object edtPassword: TEdit
    Left = 24
    Top = 32
    Width = 75
    Height = 21
    MaxLength = 4
    PasswordChar = '*'
    TabOrder = 0
    Text = 'edtPassword'
  end
  object btnCrack: TButton
    Left = 8
    Top = 107
    Width = 75
    Height = 25
    Caption = '&Crack'
    TabOrder = 1
    OnClick = btnCrackClick
  end
  object bmbRetry: TBitBtn
    Left = 89
    Top = 107
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 170
    Top = 107
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object edtC1: TEdit
    Left = 159
    Top = 32
    Width = 20
    Height = 21
    MaxLength = 1
    ReadOnly = True
    TabOrder = 4
  end
  object edtC2: TEdit
    Left = 181
    Top = 32
    Width = 20
    Height = 21
    MaxLength = 2
    ReadOnly = True
    TabOrder = 5
  end
  object edtC3: TEdit
    Left = 203
    Top = 32
    Width = 20
    Height = 21
    MaxLength = 3
    ReadOnly = True
    TabOrder = 6
  end
  object edtC4: TEdit
    Left = 225
    Top = 32
    Width = 20
    Height = 21
    MaxLength = 4
    ReadOnly = True
    TabOrder = 7
  end
end
