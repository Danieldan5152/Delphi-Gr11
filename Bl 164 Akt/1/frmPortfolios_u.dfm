object frmPortfolios: TfrmPortfolios
  Left = 192
  Top = 114
  Width = 908
  Height = 613
  Caption = 'Portfolios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object redOutput: TRichEdit
    Left = 30
    Top = 236
    Width = 611
    Height = 297
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pnlSelect: TPanel
    Left = 384
    Top = 20
    Width = 346
    Height = 208
    TabOrder = 1
    Visible = False
    object lblSubject: TLabel
      Left = 20
      Top = 25
      Width = 45
      Height = 16
      Caption = 'Subject'
    end
    object Label2: TLabel
      Left = 30
      Top = 89
      Width = 87
      Height = 16
      Caption = 'Level (HG/SG)'
    end
    object edtSubject: TEdit
      Left = 128
      Top = 25
      Width = 149
      Height = 24
      TabOrder = 0
    end
    object edtLevel: TEdit
      Left = 128
      Top = 84
      Width = 149
      Height = 24
      TabOrder = 1
    end
    object btnSelect: TButton
      Left = 138
      Top = 138
      Width = 92
      Height = 31
      Caption = 'Select'
      TabOrder = 2
    end
  end
  object pnlRead: TPanel
    Left = 20
    Top = 20
    Width = 336
    Height = 109
    TabOrder = 2
    object lblNumLearners: TLabel
      Left = 10
      Top = 15
      Width = 114
      Height = 16
      Caption = 'Number of learners'
    end
    object edtNumber: TEdit
      Left = 148
      Top = 15
      Width = 149
      Height = 24
      TabOrder = 0
    end
    object btnEnter: TButton
      Left = 106
      Top = 59
      Width = 92
      Height = 31
      Caption = 'Enter'
      TabOrder = 1
    end
  end
  object bmbClose: TBitBtn
    Left = 679
    Top = 502
    Width = 93
    Height = 31
    TabOrder = 3
    Kind = bkClose
  end
end
