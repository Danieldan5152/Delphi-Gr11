object frmConvertNumbers: TfrmConvertNumbers
  Left = 192
  Top = 146
  Caption = 'Convert a number containing a word to a cell phone number'
  ClientHeight = 331
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblMsg: TLabel
    Left = 179
    Top = 19
    Width = 99
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Enter the word'
  end
  object lblMsgPre: TLabel
    Left = 32
    Top = 19
    Width = 104
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Enter the prefix'
  end
  object edtWord: TEdit
    Left = 179
    Top = 59
    Width = 97
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object btnConvert: TButton
    Left = 32
    Top = 113
    Width = 97
    Height = 33
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Convert'
    TabOrder = 1
    OnClick = btnConvertClick
  end
  object pnlDisplay: TPanel
    Left = 32
    Top = 173
    Width = 289
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 2
  end
  object edtPrefix: TEdit
    Left = 32
    Top = 58
    Width = 39
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
    Text = '08'
  end
end
