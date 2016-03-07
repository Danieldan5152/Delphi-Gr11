object frmMath: TfrmMath
  Left = 0
  Top = 0
  Caption = 'Wiskunde Toetser'
  ClientHeight = 192
  ClientWidth = 314
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
  object lblReels: TLabel
    Left = 8
    Top = 8
    Width = 283
    Height = 57
    Caption = 
      'Jy mag nie die volgende nommers gebruik nie. 0,1,2,5,10,20,50 om' +
      ' meer te maal nie .'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 80
    Top = 87
    Width = 12
    Height = 24
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 211
    Top = 87
    Width = 15
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object sedSom1: TSpinEdit
    Left = 8
    Top = 84
    Width = 66
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 0
  end
  object sedSom2: TSpinEdit
    Left = 120
    Top = 84
    Width = 65
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 1
    Value = 0
  end
  object sedSTotaal: TSpinEdit
    Left = 242
    Top = 84
    Width = 65
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 2
    Value = 0
  end
  object btnToets: TButton
    Left = 232
    Top = 136
    Width = 75
    Height = 49
    Caption = 'Toets Die &Antwoord'
    TabOrder = 3
    WordWrap = True
    OnClick = btnToetsClick
  end
  object edtAfvoer: TEdit
    Left = 8
    Top = 136
    Width = 218
    Height = 21
    TabOrder = 4
  end
  object bmbRetry: TBitBtn
    Left = 21
    Top = 160
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = bmbRetryClick
  end
  object bmbClose: TBitBtn
    Left = 135
    Top = 160
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 6
  end
end
