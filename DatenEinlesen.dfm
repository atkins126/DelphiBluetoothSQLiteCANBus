object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Daten von Machine einlesen'
  ClientHeight = 201
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 360
    Height = 161
    TabOrder = 0
    object Gauge1: TGauge
      Left = 8
      Top = 135
      Width = 345
      Height = 17
      Progress = 0
    end
    object Button1: TButton
      Left = 103
      Top = 8
      Width = 250
      Height = 25
      Caption = 'Standard - Kennlinien laden'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 103
      Top = 39
      Width = 250
      Height = 25
      Caption = 'Sonder - Kennlinien laden'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 103
      Top = 70
      Width = 250
      Height = 25
      Caption = 'Jobs Koffer 1 laden'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 103
      Top = 101
      Width = 250
      Height = 25
      Caption = 'Jobs Koffer 2 laden'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 16
    Top = 16
    Width = 89
    Height = 121
    BevelOuter = bvLowered
    TabOrder = 1
  end
  object Button5: TButton
    Left = 272
    Top = 175
    Width = 96
    Height = 25
    Caption = 'Abbrechen'
    TabOrder = 2
    OnClick = Button5Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 112
    Top = 176
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 144
    Top = 176
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    Left = 336
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 336
    Top = 48
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 336
    Top = 88
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    Left = 336
    Top = 120
  end
end
