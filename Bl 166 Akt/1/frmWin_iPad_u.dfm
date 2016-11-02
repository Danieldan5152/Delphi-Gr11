object frmWinner: TfrmWinner
  Left = 274
  Top = 200
  Width = 507
  Height = 620
  Caption = 'Winner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object btnReadAndDisplay: TButton
    Left = 20
    Top = 20
    Width = 129
    Height = 30
    Caption = 'Read and Display'
    TabOrder = 0
  end
  object redOutput: TRichEdit
    Left = 20
    Top = 128
    Width = 221
    Height = 417
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnDetermineWinner: TButton
    Left = 187
    Top = 20
    Width = 122
    Height = 30
    Caption = 'Determine Winner'
    TabOrder = 2
  end
  object pnlWinner: TPanel
    Left = 20
    Top = 59
    Width = 237
    Height = 51
    TabOrder = 3
  end
end
