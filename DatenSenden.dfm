object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Daten Senden'
  ClientHeight = 244
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 450
    Height = 201
    TabOrder = 0
    object Gauge1: TGauge
      Left = 8
      Top = 167
      Width = 433
      Height = 26
      Progress = 0
    end
  end
  object Button1: TButton
    Left = 8
    Top = 211
    Width = 113
    Height = 25
    Caption = #220'bertragen'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 215
    Width = 106
    Height = 25
    Caption = 'Abbrechen'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel2: TPanel
    Left = 16
    Top = 16
    Width = 97
    Height = 89
    BevelOuter = bvLowered
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 119
    Top = 16
    Width = 330
    Height = 153
    TabOrder = 4
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 313
      Height = 105
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 16
      Width = 145
      Height = 17
      Caption = 'Alle Standard - Kennlinien'
      TabOrder = 1
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 39
      Width = 145
      Height = 17
      Caption = 'Alle Sonder - Kennlinien'
      TabOrder = 2
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 62
      Width = 113
      Height = 17
      Caption = 'Alle Jobs Koffer 1'
      TabOrder = 3
    end
    object RadioButton4: TRadioButton
      Left = 16
      Top = 85
      Width = 113
      Height = 17
      Caption = 'Alle Jobs Koffer 2'
      TabOrder = 4
    end
    object RadioButton5: TRadioButton
      Left = 184
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Ausgew. Kennlinie'
      TabOrder = 5
    end
    object RadioButton6: TRadioButton
      Left = 184
      Top = 62
      Width = 113
      Height = 17
      Caption = 'Ausgew. Job'
      TabOrder = 6
    end
    object Panel4: TPanel
      Left = 8
      Top = 119
      Width = 313
      Height = 26
      Caption = 'Text'
      TabOrder = 7
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\ssani\Desktop\KennlinienProject\Win32\Debug\Ke' +
        'nnlinienDB.db'
      'DriverID=SQLite')
    Left = 432
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM SatzDaten')
    Left = 432
    Top = 32
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Grunddaten')
    Left = 432
    Top = 64
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Stutzpunkt')
    Left = 432
    Top = 96
  end
end
