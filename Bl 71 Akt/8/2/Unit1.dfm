object frmCellNo: TfrmCellNo
  Left = 0
  Top = 0
  Caption = 'Cell No'
  ClientHeight = 104
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblToevoer: TLabel
    Left = 8
    Top = 8
    Width = 95
    Height = 13
    Caption = 'Sleutel in jou sel NO'
  end
  object edtToevoer: TEdit
    Left = 109
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object btnBewerk: TButton
    Left = 8
    Top = 71
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 1
    OnClick = btnBewerkClick
  end
  object bmbRetry: TBitBtn
    Left = 98
    Top = 72
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 187
    Top = 72
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object edtAfvoer: TEdit
    Left = 109
    Top = 35
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
end
