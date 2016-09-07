object frmChooseMovie: TfrmChooseMovie
  Left = 192
  Top = 107
  Caption = 'Choose a movie'
  ClientHeight = 244
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Palatino Linotype'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 18
  object lblHead: TLabel
    Left = 13
    Top = 6
    Width = 466
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Choose the number of the movie you want to watch - click on Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Papyrus'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object redList: TRichEdit
    Left = 13
    Top = 38
    Width = 145
    Height = 183
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 2
    Zoom = 100
  end
  object sedChoose: TSpinEdit
    Left = 170
    Top = 38
    Width = 95
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    EditorEnabled = False
    MaxValue = 8
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object btnAdd: TButton
    Left = 189
    Top = 69
    Width = 59
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = '&Add'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object redView: TRichEdit
    Left = 270
    Top = 38
    Width = 183
    Height = 183
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
    Zoom = 100
  end
  object bmbClose: TBitBtn
    Left = 189
    Top = 201
    Width = 59
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object bmbRetry: TBitBtn
    Left = 188
    Top = 166
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbRetryClick
  end
end
