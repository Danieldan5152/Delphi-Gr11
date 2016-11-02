object frmQuestions: TfrmQuestions
  Left = 192
  Top = 179
  Caption = 'Computer related questions'
  ClientHeight = 387
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDisplay: TPanel
    Left = 6
    Top = 6
    Width = 571
    Height = 264
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
    object lblQuestion1: TLabel
      Left = 83
      Top = 38
      Width = 3
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
    end
    object lblMsg: TLabel
      Left = 38
      Top = 70
      Width = 47
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Answer:'
    end
    object btnSubmit: TButton
      Left = 147
      Top = 102
      Width = 103
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&Submit Answer '
      TabOrder = 0
      OnClick = btnSubmitClick
    end
    object edtAnswer1: TEdit
      Left = 115
      Top = 64
      Width = 161
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 1
    end
    object btnQuestio1: TButton
      Left = 141
      Top = 13
      Width = 109
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Show Question '
      TabOrder = 2
      OnClick = btnQuestio1Click
    end
    object pnlResult: TPanel
      Left = 64
      Top = 147
      Width = 289
      Height = 39
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 3
    end
  end
end
