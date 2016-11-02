object frmPswrdCrck: TfrmPswrdCrck
  Left = 0
  Top = 0
  Caption = 'frmPswrdCrck'
  ClientHeight = 201
  ClientWidth = 331
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
    Width = 56
    Height = 13
    Caption = 'lblPassword'
  end
  object lblResult: TLabel
    Left = 24
    Top = 88
    Width = 40
    Height = 13
    Caption = 'lblResult'
  end
  object edtPassword: TEdit
    Left = 24
    Top = 32
    Width = 59
    Height = 21
    MaxLength = 4
    PasswordChar = '*'
    TabOrder = 0
    Text = 'edtPassword'
  end
  object btnCrack: TButton
    Left = 8
    Top = 139
    Width = 75
    Height = 25
    Caption = 'btnCrack'
    TabOrder = 1
    OnClick = btnCrackClick
  end
  object bmbRetry: TBitBtn
    Left = 158
    Top = 139
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object edtC1: TEdit
    Left = 142
    Top = 32
    Width = 32
    Height = 21
    MaxLength = 1
    ReadOnly = True
    TabOrder = 4
    Text = 'edtC1'
  end
  object edtC2: TEdit
    Left = 180
    Top = 32
    Width = 32
    Height = 21
    MaxLength = 2
    ReadOnly = True
    TabOrder = 5
    Text = 'edtC2'
  end
  object edtC3: TEdit
    Left = 218
    Top = 32
    Width = 32
    Height = 21
    MaxLength = 3
    ReadOnly = True
    TabOrder = 6
    Text = 'edtC3'
  end
  object edtC4: TEdit
    Left = 256
    Top = 32
    Width = 32
    Height = 21
    MaxLength = 4
    ReadOnly = True
    TabOrder = 7
    Text = 'edtC4'
  end
end
