object frmGasterHuis: TfrmGasterHuis
  Left = 0
  Top = 0
  Caption = 'Gaste Huis Kwatasies'
  ClientHeight = 179
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object lblGaan_Af: TLabel
    Left = 16
    Top = 12
    Width = 219
    Height = 25
    Caption = 'Klik onder vir kwatasies'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblQuotes: TLabel
    Left = 272
    Top = 13
    Width = 240
    Height = 29
    Caption = 'Kwatasies per items'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblAfvoerK: TLabel
    Left = 336
    Top = 48
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAfvoerO: TLabel
    Left = 336
    Top = 94
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAfvoerA: TLabel
    Left = 336
    Top = 141
    Width = 6
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnKamers: TButton
    Left = 16
    Top = 43
    Width = 219
    Height = 25
    Caption = 'Hoeveel &Kamers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnKamersClick
  end
  object btnOntbyt: TButton
    Left = 16
    Top = 88
    Width = 219
    Height = 25
    Caption = 'Hoeveel &Ontbyte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnOntbytClick
  end
  object btnAandetes: TButton
    Left = 16
    Top = 135
    Width = 219
    Height = 25
    Caption = 'Hoeveel &Aandetes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnAandetesClick
  end
end
