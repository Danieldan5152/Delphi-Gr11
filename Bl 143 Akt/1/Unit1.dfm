object frmProcData: TfrmProcData
  Left = 0
  Top = 0
  Caption = 'frmProcData'
  ClientHeight = 388
  ClientWidth = 558
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
  object btnBereken: TButton
    Left = 48
    Top = 288
    Width = 75
    Height = 25
    Caption = 'btnBereken'
    TabOrder = 0
    OnClick = btnBerekenClick
  end
  object redJunior: TRichEdit
    Left = 48
    Top = 56
    Width = 217
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redJunior')
    ParentFont = False
    TabOrder = 1
  end
  object redSenior: TRichEdit
    Left = 271
    Top = 56
    Width = 226
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redSenior')
    ParentFont = False
    TabOrder = 2
  end
end
