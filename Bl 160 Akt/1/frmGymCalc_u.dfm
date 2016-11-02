object frmGymCalc: TfrmGymCalc
  Left = 184
  Top = 206
  Caption = 'frmGymCalc'
  ClientHeight = 332
  ClientWidth = 680
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
    Left = 19
    Top = 45
    Width = 152
    Height = 80
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 
      'Click the Button to enter the number of minutes you want to work' +
      ' out for each day of the week'
    WordWrap = True
  end
  object lblIntensity: TLabel
    Left = 230
    Top = 51
    Width = 139
    Height = 48
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Choose the intensity you want to work at'
    WordWrap = True
  end
  object rgpIntensity: TRadioGroup
    Left = 230
    Top = 96
    Width = 110
    Height = 129
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ItemIndex = 0
    Items.Strings = (
      'Low'
      'Medium'
      'High')
    TabOrder = 0
  end
  object btnTimes: TButton
    Left = 19
    Top = 122
    Width = 71
    Height = 39
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Time'
    TabOrder = 1
    WordWrap = True
    OnClick = btnTimesClick
  end
  object redOut: TRichEdit
    Left = 461
    Top = 51
    Width = 193
    Height = 251
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object bmbRetry: TBitBtn
    Left = 19
    Top = 277
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 344
    Top = 277
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
