object frmMemo: TfrmMemo
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Memo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object pnlAnswers: TPanel
    Left = 138
    Top = 158
    Width = 474
    Height = 247
    TabOrder = 0
    object lblName: TLabel
      Left = 20
      Top = 44
      Width = 83
      Height = 16
      Caption = 'Learner name'
    end
    object lblScore: TLabel
      Left = 98
      Top = 153
      Width = 3
      Height = 16
    end
    object btnEnter: TButton
      Left = 20
      Top = 89
      Width = 119
      Height = 30
      Caption = 'Enter answers'
      TabOrder = 0
      Visible = False
    end
    object edtName: TEdit
      Left = 148
      Top = 44
      Width = 149
      Height = 24
      TabOrder = 1
    end
    object btnReset: TBitBtn
      Left = 49
      Top = 177
      Width = 93
      Height = 31
      Caption = '&Reset'
      TabOrder = 2
      Kind = bkRetry
    end
  end
end
