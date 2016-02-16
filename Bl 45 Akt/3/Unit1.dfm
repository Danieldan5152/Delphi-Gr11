object frmTaxiBestuurder: TfrmTaxiBestuurder
  Left = 0
  Top = 0
  Caption = 'Taxi Bestuurder Geld verdien'
  ClientHeight = 264
  ClientWidth = 352
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
  object lblNaam: TLabel
    Left = 24
    Top = 19
    Width = 27
    Height = 13
    Caption = 'Naam'
  end
  object lblPassesiers: TLabel
    Left = 24
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Passesiers'
  end
  object lblKostePRit: TLabel
    Left = 24
    Top = 96
    Width = 72
    Height = 13
    Caption = 'Koste per Rit R'
  end
  object lblDPMaand: TLabel
    Left = 24
    Top = 143
    Width = 124
    Height = 13
    Caption = 'Dae gewerk vir die maand'
  end
  object lblPDag: TLabel
    Left = 24
    Top = 184
    Width = 3
    Height = 13
  end
  object lblPMaand: TLabel
    Left = 24
    Top = 203
    Width = 3
    Height = 13
  end
  object edtNaam: TEdit
    Left = 216
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object sedPassesiers: TSpinEdit
    Left = 216
    Top = 53
    Width = 121
    Height = 22
    MaxValue = 99999999
    MinValue = 1
    TabOrder = 1
    Value = 0
  end
  object edtKostePRit: TEdit
    Left = 216
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object sedWPMaand: TSpinEdit
    Left = 216
    Top = 140
    Width = 121
    Height = 22
    MaxValue = 99999999
    MinValue = 1
    TabOrder = 3
    Value = 0
  end
  object btnBewerk: TButton
    Left = 24
    Top = 224
    Width = 75
    Height = 25
    Caption = '&Bewerk'
    TabOrder = 4
    OnClick = btnBewerkClick
  end
  object bmbReset: TBitBtn
    Left = 170
    Top = 224
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 5
    OnClick = bmbResetClick
  end
  object bmbClose: TBitBtn
    Left = 262
    Top = 224
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 6
  end
end
