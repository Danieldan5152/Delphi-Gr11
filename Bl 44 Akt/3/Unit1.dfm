object frmITPunte: TfrmITPunte
  Left = 0
  Top = 0
  Caption = 'IT Gemiddeld berekening'
  ClientHeight = 208
  ClientWidth = 287
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
  object lblPunt_1: TLabel
    Left = 8
    Top = 43
    Width = 103
    Height = 13
    Caption = 'IT Punt 1 Persentasie'
  end
  object lblPunt_2: TLabel
    Left = 8
    Top = 78
    Width = 103
    Height = 13
    Caption = 'IT Punt 2 Persentasie'
  end
  object lblPunt_3: TLabel
    Left = 8
    Top = 110
    Width = 103
    Height = 13
    Caption = 'IT Punt 3 Persentasie'
  end
  object lblAfvoer: TLabel
    Left = 8
    Top = 136
    Width = 3
    Height = 13
  end
  object lblNaam: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Naam'
  end
  object edtPunt_1: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPunt_2: TEdit
    Left = 128
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtPunt_3: TEdit
    Left = 128
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnBereken: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Bereken'
    TabOrder = 3
    OnClick = btnBerekenClick
  end
  object bmbRetry: TBitBtn
    Left = 96
    Top = 168
    Width = 75
    Height = 25
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 177
    Top = 168
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
  object edtNaam: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
