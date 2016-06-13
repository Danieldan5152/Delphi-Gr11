object frmInterest: TfrmInterest
  Left = 0
  Top = 0
  Caption = 'Car Payments'
  ClientHeight = 349
  ClientWidth = 337
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
  object lblCost: TLabel
    Left = 8
    Top = 19
    Width = 133
    Height = 13
    Caption = 'Type in initial price of car: R'
  end
  object lblMonthlyP: TLabel
    Left = 8
    Top = 56
    Width = 154
    Height = 13
    Caption = 'Type in the monthly payment: R'
  end
  object lblInterestR: TLabel
    Left = 8
    Top = 88
    Width = 135
    Height = 13
    Caption = 'Type in the interest rate: %'
  end
  object lblMonthsToPay: TLabel
    Left = 8
    Top = 128
    Width = 197
    Height = 13
    Caption = 'Months it will take to pay halve the price:'
  end
  object edtCost: TEdit
    Left = 203
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtMonthlyP: TEdit
    Left = 203
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtInterestR: TEdit
    Left = 203
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCalculate: TButton
    Left = 224
    Top = 129
    Width = 75
    Height = 25
    Caption = '&Calculate'
    TabOrder = 3
    OnClick = btnCalculateClick
  end
  object bmbRetry: TBitBtn
    Left = 8
    Top = 313
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 249
    Top = 313
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
  object redMonthsToPay: TRichEdit
    Left = 8
    Top = 160
    Width = 316
    Height = 147
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 6
    Zoom = 100
  end
end
