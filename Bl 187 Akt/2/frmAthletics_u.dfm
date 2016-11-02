object frmAthletics: TfrmAthletics
  Left = 246
  Top = 197
  Caption = 'Display names in team colours'
  ClientHeight = 409
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 13
  object edtSurname: TEdit
    Left = 26
    Top = 32
    Width = 135
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object rgpItem: TRadioGroup
    Left = 198
    Top = 26
    Width = 148
    Height = 103
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Item'
    ItemIndex = 0
    Items.Strings = (
      'Long jump'
      'Shot put'
      'Track event'
      'Hop, skip and jump')
    TabOrder = 1
  end
  object btnDisplay: TButton
    Left = 26
    Top = 70
    Width = 77
    Height = 33
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Display'
    TabOrder = 2
    OnClick = btnDisplayClick
  end
  object redOut: TRichEdit
    Left = 26
    Top = 141
    Width = 200
    Height = 240
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Zoom = 100
  end
end
