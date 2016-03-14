object frmDownloadTime: TfrmDownloadTime
  Left = 0
  Top = 0
  Caption = 'frmDownloadTime'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object edtDownloadSize: TEdit
    Left = 24
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtDownloadSize'
  end
  object edtDownloaded: TEdit
    Left = 24
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtDownloaded'
  end
  object edtSpeed: TEdit
    Left = 24
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtSpeed'
  end
  object btnBereken: TButton
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = 'btnBereken'
    TabOrder = 3
    OnClick = btnBerekenClick
  end
end
