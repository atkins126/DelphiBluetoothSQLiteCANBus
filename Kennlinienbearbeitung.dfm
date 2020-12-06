object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Kennlinienbearbeitung'
  ClientHeight = 637
  ClientWidth = 1244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 861
    Height = 73
    TabOrder = 0
    object Label1: TLabel
      Left = 42
      Top = 14
      Width = 48
      Height = 13
      Caption = 'Verfahren'
    end
    object Label2: TLabel
      Left = 42
      Top = 45
      Width = 48
      Height = 13
      Caption = 'Werkstoff'
    end
    object Label3: TLabel
      Left = 367
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Draht'
    end
    object Label4: TLabel
      Left = 376
      Top = 45
      Width = 18
      Height = 13
      Caption = 'Gas'
    end
    object Label5: TLabel
      Left = 630
      Top = 14
      Width = 60
      Height = 13
      Caption = 'Bezeichnung'
    end
    object Panel5: TPanel
      Left = 96
      Top = 8
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object Panel6: TPanel
      Left = 96
      Top = 39
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 400
      Top = 8
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 2
    end
    object Panel8: TPanel
      Left = 400
      Top = 39
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 3
    end
    object Panel9: TPanel
      Left = 696
      Top = 8
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 4
    end
    object Panel10: TPanel
      Left = 696
      Top = 39
      Width = 161
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 87
    Width = 193
    Height = 378
    TabOrder = 1
    object Label6: TLabel
      Left = 80
      Top = 13
      Width = 42
      Height = 13
      Caption = 'Kennlinie'
    end
    object Label7: TLabel
      Left = 70
      Top = 38
      Width = 52
      Height = 13
      Caption = 'St'#252'tzpunkt'
    end
    object Panel11: TPanel
      Left = 128
      Top = 7
      Width = 57
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object Panel12: TPanel
      Left = 128
      Top = 32
      Width = 57
      Height = 25
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object ListBox1: TListBox
      Left = 8
      Top = 63
      Width = 177
      Height = 226
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 23
      ParentFont = False
      TabOrder = 2
      OnDblClick = ListBox1DblClick
    end
    object Button1: TButton
      Left = 8
      Top = 295
      Width = 177
      Height = 25
      Caption = 'STP Neu'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 8
      Top = 318
      Width = 177
      Height = 25
      Caption = 'STP L'#246'schen'
      TabOrder = 4
    end
    object Button3: TButton
      Left = 8
      Top = 341
      Width = 177
      Height = 25
      Caption = 'STP Kopieren'
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 471
    Width = 193
    Height = 162
    TabOrder = 2
    object Image1: TImage
      Left = 1
      Top = 0
      Width = 189
      Height = 90
      Center = True
      IncrementalDisplay = True
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000000000000000000000000000000000000
        0000000000000000FFFFFF00C0C0C00000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000001000000000000000000000000000000101010000000000
        0000000000000000110110100000000000000000000000010100101100000000
        0000000000000011010200101000000000000000000001010020201011000000
        0000000000001101020002001010000000000000000101002000002010110000
        0000000000010102000000020010100000000000000100200000000020101100
        0000000000010200000000000200101000000000001020000000000000201011
        0000000000100000000000000002001010000000001000000000000000002010
        1100000000010000000000000000020010100000000010000000000000000020
        1011000000000100000000000000000200101000000000100000000000000000
        2010100000000001000000000000000002001000000000001000000000000000
        0020110000000000010000000000000000020100000000000010000000000000
        0000010000000000000100000000000000000100000000000000100000000000
        0000100000000000000001000000000000010000000000000000001000000000
        0010000000000000000000010000000001000000000000000000000010000000
        1000000000000000000000000100000100000000000000000000000000100010
        0000000000000000000000000001010000000000000000000000000000001000
        00000000FFDFFFFFFF8BFFFFFF01FFFFFE00FFFFFC007FFFF8003FFFF0001FFF
        E0000FFFE00007FFE00003FFE00001FFC00000FFC000007FC000003FE000001F
        F000000FF8000007FC000007FE000007FF000003FF800003FFC00003FFE00003
        FFF00007FFF8000FFFFC001FFFFE003FFFFF007FFFFF80FFFFFFC1FFFFFFE3FF
        FFFFF7FF}
    end
    object Button9: TButton
      Left = 0
      Top = 136
      Width = 189
      Height = 25
      Caption = 'bbtSynergieEinAus'
      TabOrder = 0
      OnClick = Button9Click
    end
    object RadioGroup1: TRadioGroup
      Left = 0
      Top = 96
      Width = 189
      Height = 34
      Caption = 'Scan'
      TabOrder = 1
    end
    object ProgressBar1: TProgressBar
      Left = 42
      Top = 107
      Width = 135
      Height = 17
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 202
    Top = 87
    Width = 666
    Height = 546
    TabOrder = 3
    object Panel13: TPanel
      Left = 10
      Top = 10
      Width = 647
      Height = 55
      TabOrder = 0
      object Label8: TLabel
        Left = 108
        Top = 19
        Width = 44
        Height = 13
        Caption = 'Vorschub'
      end
      object Label9: TLabel
        Left = 308
        Top = 5
        Width = 48
        Height = 13
        Caption = 'Spannung'
      end
      object Label10: TLabel
        Left = 318
        Top = 34
        Width = 35
        Height = 13
        Caption = 'Drossel'
      end
      object Label11: TLabel
        Left = 510
        Top = 4
        Width = 43
        Height = 13
        Caption = 'Stromset'
      end
      object Label12: TLabel
        Left = 500
        Top = 34
        Width = 49
        Height = 13
        Caption = 'Blechdicke'
      end
      object Label53: TLabel
        Left = 207
        Top = 20
        Width = 28
        Height = 13
        Caption = 'm/min'
      end
      object Label54: TLabel
        Left = 405
        Top = 7
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object Label55: TLabel
        Left = 405
        Top = 34
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label56: TLabel
        Left = 600
        Top = 7
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object Label57: TLabel
        Left = 598
        Top = 34
        Width = 16
        Height = 13
        Caption = 'mm'
      end
      object MaskEdit1: TMaskEdit
        Left = 158
        Top = 16
        Width = 43
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit2: TMaskEdit
        Left = 358
        Top = 3
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object MaskEdit3: TMaskEdit
        Left = 358
        Top = 30
        Width = 41
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object MaskEdit4: TMaskEdit
        Left = 555
        Top = 3
        Width = 41
        Height = 21
        TabOrder = 3
        Text = ''
      end
      object MaskEdit5: TMaskEdit
        Left = 555
        Top = 30
        Width = 40
        Height = 21
        TabOrder = 4
        Text = ''
      end
      object Panel22: TPanel
        Left = 237
        Top = 1
        Width = 34
        Height = 53
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object Panel23: TPanel
        Left = 423
        Top = 1
        Width = 33
        Height = 53
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object Panel24: TPanel
        Left = 613
        Top = 1
        Width = 34
        Height = 53
        BevelOuter = bvLowered
        TabOrder = 7
      end
      object Panel45: TPanel
        Left = 239
        Top = 10
        Width = 29
        Height = 33
        BevelOuter = bvLowered
        TabOrder = 8
      end
      object Panel46: TPanel
        Left = 427
        Top = 3
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 9
      end
      object Panel47: TPanel
        Left = 427
        Top = 28
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 10
      end
      object Panel48: TPanel
        Left = 618
        Top = 3
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 11
      end
      object Panel49: TPanel
        Left = 618
        Top = 28
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 12
      end
    end
    object Panel14: TPanel
      Left = 10
      Top = 70
      Width = 647
      Height = 58
      TabOrder = 1
      object Label13: TLabel
        Left = 94
        Top = 6
        Width = 63
        Height = 13
        Caption = 'Einschleichen'
      end
      object Label14: TLabel
        Left = 45
        Top = 37
        Width = 111
        Height = 13
        Caption = 'Drossel - '#220'berblendzeit'
      end
      object Label15: TLabel
        Left = 310
        Top = 6
        Width = 47
        Height = 13
        Caption = 'Amplitude'
      end
      object Label16: TLabel
        Left = 305
        Top = 37
        Width = 52
        Height = 13
        Caption = 'Puls-Dauer'
      end
      object Label17: TLabel
        Left = 495
        Top = 6
        Width = 59
        Height = 13
        Caption = #220'berh'#246'hung'
      end
      object Label18: TLabel
        Left = 495
        Top = 36
        Width = 57
        Height = 13
        Caption = 'Motorflanke'
      end
      object Label47: TLabel
        Left = 0
        Top = 0
        Width = 29
        Height = 13
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 205
        Top = 6
        Width = 28
        Height = 13
        Caption = 'm/min'
      end
      object Label59: TLabel
        Left = 205
        Top = 37
        Width = 5
        Height = 13
        Caption = 's'
      end
      object Label60: TLabel
        Left = 405
        Top = 6
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object Label61: TLabel
        Left = 405
        Top = 37
        Width = 13
        Height = 13
        Caption = 'ms'
      end
      object Label62: TLabel
        Left = 597
        Top = 6
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label63: TLabel
        Left = 597
        Top = 36
        Width = 11
        Height = 13
        Caption = '%'
      end
      object MaskEdit6: TMaskEdit
        Left = 158
        Top = 4
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit7: TMaskEdit
        Left = 158
        Top = 34
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object MaskEdit8: TMaskEdit
        Left = 358
        Top = 4
        Width = 41
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object MaskEdit9: TMaskEdit
        Left = 358
        Top = 34
        Width = 41
        Height = 21
        TabOrder = 3
        Text = ''
      end
      object MaskEdit10: TMaskEdit
        Left = 555
        Top = 4
        Width = 41
        Height = 21
        TabOrder = 4
        Text = ''
      end
      object MaskEdit11: TMaskEdit
        Left = 555
        Top = 34
        Width = 41
        Height = 21
        TabOrder = 5
        Text = ''
      end
      object Panel25: TPanel
        Left = 237
        Top = 1
        Width = 33
        Height = 56
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object Panel26: TPanel
        Left = 424
        Top = 1
        Width = 33
        Height = 56
        BevelOuter = bvLowered
        TabOrder = 7
      end
      object Panel27: TPanel
        Left = 614
        Top = 1
        Width = 33
        Height = 56
        BevelOuter = bvLowered
        TabOrder = 8
      end
      object Panel50: TPanel
        Left = 241
        Top = 3
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 9
      end
      object Panel51: TPanel
        Left = 241
        Top = 29
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 10
      end
      object Panel52: TPanel
        Left = 428
        Top = 3
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 11
      end
      object Panel53: TPanel
        Left = 428
        Top = 29
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 12
      end
      object Panel54: TPanel
        Left = 618
        Top = 4
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 13
      end
      object Panel55: TPanel
        Left = 618
        Top = 31
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 14
      end
    end
    object Panel15: TPanel
      Left = 10
      Top = 135
      Width = 647
      Height = 162
      TabOrder = 2
      object Label19: TLabel
        Left = 110
        Top = 9
        Width = 45
        Height = 13
        Caption = 'Frequenz'
      end
      object Label20: TLabel
        Left = 298
        Top = 9
        Width = 59
        Height = 13
        Caption = 'Grundxxxxx'
      end
      object Label21: TLabel
        Left = 510
        Top = 9
        Width = 43
        Height = 13
        Caption = 'Rundung'
      end
      object Label48: TLabel
        Left = 0
        Top = 0
        Width = 23
        Height = 13
        Caption = 'Puls'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 205
        Top = 8
        Width = 12
        Height = 13
        Caption = 'Hz'
      end
      object Label65: TLabel
        Left = 405
        Top = 8
        Width = 6
        Height = 13
        Caption = 'e'
      end
      object Label66: TLabel
        Left = 597
        Top = 8
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Panel20: TPanel
        Left = 8
        Top = 32
        Width = 637
        Height = 121
        BevelOuter = bvLowered
        TabOrder = 0
        object Label22: TLabel
          Left = 107
          Top = 12
          Width = 35
          Height = 13
          Caption = 'Slope 1'
        end
        object Label23: TLabel
          Left = 107
          Top = 39
          Width = 35
          Height = 13
          Caption = 'Slope 2'
        end
        object Label24: TLabel
          Left = 107
          Top = 66
          Width = 35
          Height = 13
          Caption = 'Slope 3'
        end
        object Label25: TLabel
          Left = 107
          Top = 93
          Width = 35
          Height = 13
          Caption = 'Slope 4'
        end
        object Label26: TLabel
          Left = 293
          Top = 12
          Width = 56
          Height = 13
          Caption = 'Amplitude 1'
        end
        object Label27: TLabel
          Left = 293
          Top = 39
          Width = 56
          Height = 13
          Caption = 'Amplitude 2'
        end
        object Label28: TLabel
          Left = 293
          Top = 66
          Width = 56
          Height = 13
          Caption = 'Amplitude 3'
        end
        object Label29: TLabel
          Left = 510
          Top = 13
          Width = 27
          Height = 13
          Caption = 'Zeit 1'
        end
        object Label30: TLabel
          Left = 510
          Top = 39
          Width = 27
          Height = 13
          Caption = 'Zeit 2'
        end
        object Label31: TLabel
          Left = 510
          Top = 66
          Width = 27
          Height = 13
          Caption = 'Zeit 3'
        end
        object Label67: TLabel
          Left = 197
          Top = 12
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label68: TLabel
          Left = 197
          Top = 39
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label69: TLabel
          Left = 197
          Top = 66
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label70: TLabel
          Left = 197
          Top = 93
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label71: TLabel
          Left = 397
          Top = 12
          Width = 6
          Height = 13
          Caption = 'e'
        end
        object Label72: TLabel
          Left = 397
          Top = 39
          Width = 6
          Height = 13
          Caption = 'e'
        end
        object Label73: TLabel
          Left = 397
          Top = 66
          Width = 6
          Height = 13
          Caption = 'e'
        end
        object Label74: TLabel
          Left = 590
          Top = 12
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label75: TLabel
          Left = 590
          Top = 39
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object Label76: TLabel
          Left = 590
          Top = 66
          Width = 13
          Height = 13
          Caption = 'ms'
        end
        object MaskEdit15: TMaskEdit
          Left = 150
          Top = 8
          Width = 41
          Height = 21
          TabOrder = 0
          Text = ''
        end
        object MaskEdit16: TMaskEdit
          Left = 150
          Top = 62
          Width = 41
          Height = 21
          TabOrder = 1
          Text = ''
        end
        object MaskEdit17: TMaskEdit
          Left = 150
          Top = 89
          Width = 41
          Height = 21
          TabOrder = 2
          Text = ''
        end
        object MaskEdit18: TMaskEdit
          Left = 150
          Top = 35
          Width = 41
          Height = 21
          TabOrder = 3
          Text = ''
        end
        object MaskEdit19: TMaskEdit
          Left = 350
          Top = 8
          Width = 41
          Height = 21
          TabOrder = 4
          Text = ''
        end
        object MaskEdit20: TMaskEdit
          Left = 350
          Top = 35
          Width = 41
          Height = 21
          TabOrder = 5
          Text = ''
        end
        object MaskEdit21: TMaskEdit
          Left = 350
          Top = 62
          Width = 41
          Height = 21
          TabOrder = 6
          Text = ''
        end
        object MaskEdit22: TMaskEdit
          Left = 547
          Top = 8
          Width = 41
          Height = 21
          TabOrder = 7
          Text = ''
        end
        object MaskEdit23: TMaskEdit
          Left = 547
          Top = 35
          Width = 41
          Height = 21
          TabOrder = 8
          Text = ''
        end
        object MaskEdit24: TMaskEdit
          Left = 547
          Top = 62
          Width = 41
          Height = 21
          TabOrder = 9
          Text = ''
        end
        object Panel31: TPanel
          Left = 229
          Top = 1
          Width = 33
          Height = 119
          BevelOuter = bvLowered
          TabOrder = 10
        end
        object Panel32: TPanel
          Left = 416
          Top = 1
          Width = 33
          Height = 119
          BevelOuter = bvLowered
          TabOrder = 11
        end
        object Panel33: TPanel
          Left = 604
          Top = 1
          Width = 33
          Height = 119
          BevelOuter = bvLowered
          TabOrder = 12
        end
      end
      object MaskEdit12: TMaskEdit
        Left = 158
        Top = 5
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object MaskEdit13: TMaskEdit
        Left = 358
        Top = 5
        Width = 41
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object MaskEdit14: TMaskEdit
        Left = 555
        Top = 5
        Width = 41
        Height = 21
        TabOrder = 3
        Text = ''
      end
      object Panel28: TPanel
        Left = 237
        Top = 1
        Width = 34
        Height = 31
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object Panel29: TPanel
        Left = 424
        Top = 1
        Width = 33
        Height = 31
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object Panel30: TPanel
        Left = 614
        Top = 1
        Width = 33
        Height = 31
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object Panel56: TPanel
        Left = 242
        Top = 2
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 7
      end
      object Panel57: TPanel
        Left = 428
        Top = 4
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 8
      end
      object Panel58: TPanel
        Left = 618
        Top = 4
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 9
      end
      object Panel59: TPanel
        Left = 242
        Top = 37
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 10
      end
      object Panel60: TPanel
        Left = 242
        Top = 64
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 11
      end
      object Panel61: TPanel
        Left = 242
        Top = 92
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 12
      end
      object Panel62: TPanel
        Left = 242
        Top = 121
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 13
      end
      object Panel63: TPanel
        Left = 428
        Top = 36
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 14
      end
      object Panel64: TPanel
        Left = 428
        Top = 65
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 15
      end
      object Panel65: TPanel
        Left = 428
        Top = 96
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 16
      end
      object Panel67: TPanel
        Left = 617
        Top = 65
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 17
      end
      object Panel68: TPanel
        Left = 617
        Top = 94
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 18
      end
    end
    object Panel16: TPanel
      Left = 10
      Top = 303
      Width = 647
      Height = 41
      ParentBackground = False
      TabOrder = 3
      object Label32: TLabel
        Left = 124
        Top = 13
        Width = 29
        Height = 13
        Caption = 'Dauer'
      end
      object Label33: TLabel
        Left = 305
        Top = 13
        Width = 50
        Height = 13
        Caption = 'Amplitude '
      end
      object Label49: TLabel
        Left = 0
        Top = 0
        Width = 43
        Height = 13
        Caption = 'Endpuls'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label77: TLabel
        Left = 200
        Top = 13
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label78: TLabel
        Left = 400
        Top = 13
        Width = 11
        Height = 13
        Caption = '%'
      end
      object MaskEdit25: TMaskEdit
        Left = 158
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit26: TMaskEdit
        Left = 358
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object Panel34: TPanel
        Left = 237
        Top = 1
        Width = 33
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object Panel35: TPanel
        Left = 424
        Top = 1
        Width = 33
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object Panel69: TPanel
        Left = 241
        Top = 8
        Width = 26
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object Panel70: TPanel
        Left = 428
        Top = 8
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 5
      end
    end
    object Panel17: TPanel
      Left = 10
      Top = 349
      Width = 647
      Height = 41
      TabOrder = 4
      object Label34: TLabel
        Left = 73
        Top = 13
        Width = 81
        Height = 13
        Caption = 'Innenwiderstand'
      end
      object Label35: TLabel
        Left = 325
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Abfall'
      end
      object Label36: TLabel
        Left = 510
        Top = 13
        Width = 40
        Height = 13
        Caption = 'Dynamic'
      end
      object Label50: TLabel
        Left = 0
        Top = 0
        Width = 42
        Height = 13
        Caption = 'Drossel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label79: TLabel
        Left = 200
        Top = 13
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label80: TLabel
        Left = 400
        Top = 13
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label81: TLabel
        Left = 598
        Top = 13
        Width = 11
        Height = 13
        Caption = '%'
      end
      object MaskEdit27: TMaskEdit
        Left = 158
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit28: TMaskEdit
        Left = 358
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object MaskEdit29: TMaskEdit
        Left = 555
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object Panel36: TPanel
        Left = 237
        Top = 1
        Width = 34
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object Panel37: TPanel
        Left = 424
        Top = 1
        Width = 33
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object Panel38: TPanel
        Left = 610
        Top = 0
        Width = 35
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object Panel71: TPanel
        Left = 242
        Top = 7
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object Panel72: TPanel
        Left = 428
        Top = 7
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 7
      end
      object Panel73: TPanel
        Left = 616
        Top = 7
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 8
      end
    end
    object Panel18: TPanel
      Left = 10
      Top = 397
      Width = 647
      Height = 68
      TabOrder = 5
      object Label37: TLabel
        Left = 114
        Top = 12
        Width = 38
        Height = 13
        Caption = 'Sollwert'
      end
      object Label38: TLabel
        Left = 110
        Top = 44
        Width = 45
        Height = 13
        Caption = 'Frequenz'
      end
      object Label39: TLabel
        Left = 297
        Top = 14
        Width = 56
        Height = 13
        Caption = 'Grundstrom'
      end
      object Label40: TLabel
        Left = 310
        Top = 44
        Width = 44
        Height = 13
        Caption = 'Vorschub'
      end
      object Label41: TLabel
        Left = 475
        Top = 14
        Width = 74
        Height = 13
        Caption = 'Pulsamplitude 1'
      end
      object Label42: TLabel
        Left = 505
        Top = 44
        Width = 45
        Height = 13
        Caption = 'Pulszeit 1'
      end
      object Label51: TLabel
        Left = 0
        Top = 0
        Width = 21
        Height = 13
        Caption = 'LBR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label82: TLabel
        Left = 202
        Top = 12
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object Label83: TLabel
        Left = 200
        Top = 44
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label84: TLabel
        Left = 400
        Top = 14
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label85: TLabel
        Left = 400
        Top = 44
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label86: TLabel
        Left = 598
        Top = 14
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label87: TLabel
        Left = 598
        Top = 44
        Width = 11
        Height = 13
        Caption = '%'
      end
      object MaskEdit30: TMaskEdit
        Left = 158
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit31: TMaskEdit
        Left = 158
        Top = 39
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object MaskEdit32: TMaskEdit
        Left = 358
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object MaskEdit33: TMaskEdit
        Left = 358
        Top = 39
        Width = 41
        Height = 21
        TabOrder = 3
        Text = ''
      end
      object MaskEdit34: TMaskEdit
        Left = 555
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 4
        Text = ''
      end
      object MaskEdit35: TMaskEdit
        Left = 555
        Top = 39
        Width = 41
        Height = 21
        TabOrder = 5
        Text = ''
      end
      object Panel39: TPanel
        Left = 237
        Top = 1
        Width = 34
        Height = 66
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object Panel40: TPanel
        Left = 424
        Top = 1
        Width = 33
        Height = 66
        BevelOuter = bvLowered
        TabOrder = 7
      end
      object Panel41: TPanel
        Left = 611
        Top = 1
        Width = 35
        Height = 66
        BevelOuter = bvLowered
        TabOrder = 8
      end
      object Panel74: TPanel
        Left = 242
        Top = 8
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 9
      end
      object Panel75: TPanel
        Left = 242
        Top = 37
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 10
      end
      object Panel76: TPanel
        Left = 428
        Top = 6
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 11
      end
      object Panel77: TPanel
        Left = 428
        Top = 37
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 12
      end
      object Panel78: TPanel
        Left = 617
        Top = 6
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 13
      end
      object Panel79: TPanel
        Left = 617
        Top = 38
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 14
      end
    end
    object Panel19: TPanel
      Left = 10
      Top = 471
      Width = 231
      Height = 41
      TabOrder = 6
      object Label43: TLabel
        Left = 110
        Top = 14
        Width = 44
        Height = 13
        Caption = 'Neg. Zeit'
      end
      object Label52: TLabel
        Left = 0
        Top = 0
        Width = 46
        Height = 13
        Caption = 'HC-MAG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label88: TLabel
        Left = 207
        Top = 14
        Width = 13
        Height = 13
        Caption = 'ms'
      end
      object MaskEdit36: TMaskEdit
        Left = 160
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object Panel42: TPanel
        Left = 62
        Top = 1
        Width = 33
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object Panel80: TPanel
        Left = 66
        Top = 8
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 2
      end
    end
    object Panel21: TPanel
      Left = 247
      Top = 471
      Width = 410
      Height = 41
      TabOrder = 7
      object Label44: TLabel
        Left = 45
        Top = 14
        Width = 71
        Height = 13
        Caption = 'Pos. Amplitude'
      end
      object Label45: TLabel
        Left = 240
        Top = 14
        Width = 73
        Height = 13
        Caption = 'Neg. Amplitude'
      end
      object Label46: TLabel
        Left = 0
        Top = 0
        Width = 25
        Height = 13
        Caption = 'RMT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label89: TLabel
        Left = 168
        Top = 14
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object Label90: TLabel
        Left = 365
        Top = 14
        Width = 6
        Height = 13
        Caption = 'V'
      end
      object MaskEdit37: TMaskEdit
        Left = 121
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object MaskEdit38: TMaskEdit
        Left = 318
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 1
        Text = ''
      end
      object Panel43: TPanel
        Left = 187
        Top = 1
        Width = 33
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object Panel44: TPanel
        Left = 375
        Top = 0
        Width = 35
        Height = 39
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object Panel81: TPanel
        Left = 192
        Top = 8
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 4
      end
      object Panel82: TPanel
        Left = 380
        Top = 8
        Width = 25
        Height = 25
        BevelOuter = bvLowered
        TabOrder = 5
      end
    end
    object Button4: TButton
      Left = 10
      Top = 518
      Width = 118
      Height = 25
      Caption = 'XL-CSV-Datei'
      TabOrder = 8
    end
    object Button5: TButton
      Left = 151
      Top = 518
      Width = 123
      Height = 25
      Caption = 'Puls-Formen'
      TabOrder = 9
    end
    object Button6: TButton
      Left = 293
      Top = 518
      Width = 116
      Height = 25
      Caption = 'Diagramme'
      TabOrder = 10
    end
    object Button7: TButton
      Left = 424
      Top = 518
      Width = 115
      Height = 25
      Caption = 'STP speichern'
      TabOrder = 11
    end
    object Button8: TButton
      Left = 545
      Top = 518
      Width = 114
      Height = 25
      Caption = 'Verlassen'
      TabOrder = 12
    end
  end
  object Panel66: TPanel
    Left = 829
    Top = 260
    Width = 25
    Height = 25
    BevelOuter = bvLowered
    TabOrder = 4
  end
  object Panel83: TPanel
    Left = 871
    Top = 8
    Width = 370
    Height = 136
    TabOrder = 5
    object Label105: TLabel
      Left = 51
      Top = 43
      Width = 15
      Height = 13
      Caption = 'Nr.'
    end
    object Label106: TLabel
      Left = 48
      Top = 92
      Width = 18
      Height = 13
      Caption = 'Typ'
    end
    object Label107: TLabel
      Left = 198
      Top = 43
      Width = 60
      Height = 13
      Caption = 'Bezeichnung'
    end
    object Label108: TLabel
      Left = 4
      Top = 0
      Width = 51
      Height = 13
      Caption = 'Kennlinie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel84: TPanel
      Left = 72
      Top = 37
      Width = 97
      Height = 26
      BevelOuter = bvLowered
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
    end
    object Panel85: TPanel
      Left = 72
      Top = 85
      Width = 97
      Height = 27
      BevelOuter = bvLowered
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 1
    end
    object Panel86: TPanel
      Left = 264
      Top = 37
      Width = 97
      Height = 26
      BevelOuter = bvLowered
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 2
    end
    object Panel87: TPanel
      Left = 264
      Top = 85
      Width = 97
      Height = 27
      BevelOuter = bvLowered
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 3
    end
  end
  object Panel88: TPanel
    Left = 871
    Top = 150
    Width = 370
    Height = 193
    TabOrder = 6
    object Label91: TLabel
      Left = 13
      Top = 72
      Width = 85
      Height = 13
      Caption = 'Shweissspannung'
    end
    object Label98: TLabel
      Left = 28
      Top = 29
      Width = 70
      Height = 13
      Caption = 'Schweissstrom'
    end
    object Label99: TLabel
      Left = 27
      Top = 120
      Width = 71
      Height = 13
      Caption = 'Drahtvorschub'
    end
    object Label100: TLabel
      Left = 45
      Top = 160
      Width = 53
      Height = 13
      Caption = 'Betriebsart'
    end
    object Label101: TLabel
      Left = 222
      Top = 160
      Width = 36
      Height = 13
      Caption = 'GasTyp'
    end
    object Label102: TLabel
      Left = 210
      Top = 29
      Width = 48
      Height = 13
      Caption = 'Verfahren'
    end
    object Label103: TLabel
      Left = 210
      Top = 72
      Width = 48
      Height = 13
      Caption = 'Werkstoff'
    end
    object Label104: TLabel
      Left = 196
      Top = 120
      Width = 62
      Height = 13
      Caption = 'Durchmesser'
    end
    object Label116: TLabel
      Left = 3
      Top = 0
      Width = 49
      Height = 13
      Caption = 'Istwerte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel89: TPanel
      Left = 104
      Top = 22
      Width = 41
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object Panel90: TPanel
      Left = 104
      Top = 65
      Width = 41
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object Panel91: TPanel
      Left = 104
      Top = 107
      Width = 41
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 2
    end
    object Panel92: TPanel
      Left = 264
      Top = 22
      Width = 97
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 3
    end
    object Panel93: TPanel
      Left = 264
      Top = 65
      Width = 97
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 4
    end
    object Panel94: TPanel
      Left = 264
      Top = 108
      Width = 97
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 5
    end
    object Panel95: TPanel
      Left = 264
      Top = 152
      Width = 97
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 6
    end
    object Panel96: TPanel
      Left = 104
      Top = 150
      Width = 89
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 7
    end
  end
  object Panel97: TPanel
    Left = 871
    Top = 343
    Width = 370
    Height = 257
    TabOrder = 7
    object Label92: TLabel
      Left = 11
      Top = 48
      Width = 71
      Height = 13
      Caption = 'Drahtvorschub'
    end
    object Label93: TLabel
      Left = 34
      Top = 112
      Width = 48
      Height = 13
      Caption = 'Set-Strom'
    end
    object Label94: TLabel
      Left = 34
      Top = 176
      Width = 48
      Height = 13
      Caption = 'Spannung'
    end
    object Label95: TLabel
      Left = 209
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Blechdicke'
    end
    object Label96: TLabel
      Left = 195
      Top = 112
      Width = 63
      Height = 13
      Caption = 'Einschleichen'
    end
    object Label97: TLabel
      Left = 223
      Top = 176
      Width = 35
      Height = 13
      Caption = 'Drossel'
    end
    object Label109: TLabel
      Left = 151
      Top = 48
      Width = 28
      Height = 13
      Caption = 'm/min'
    end
    object Label110: TLabel
      Left = 151
      Top = 112
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object Label111: TLabel
      Left = 151
      Top = 176
      Width = 6
      Height = 13
      Caption = 'V'
    end
    object Label112: TLabel
      Left = 327
      Top = 48
      Width = 16
      Height = 13
      Caption = 'mm'
    end
    object Label113: TLabel
      Left = 327
      Top = 112
      Width = 28
      Height = 13
      Caption = 'm/min'
    end
    object Label114: TLabel
      Left = 327
      Top = 176
      Width = 11
      Height = 13
      Caption = '%'
    end
    object Label115: TLabel
      Left = 3
      Top = 6
      Width = 50
      Height = 13
      Caption = 'Synergie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel99: TPanel
      Left = 88
      Top = 32
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 0
    end
    object Panel100: TPanel
      Left = 88
      Top = 96
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object Panel101: TPanel
      Left = 88
      Top = 160
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 2
    end
    object Panel102: TPanel
      Left = 264
      Top = 32
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 3
    end
    object Panel103: TPanel
      Left = 264
      Top = 96
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 4
    end
    object Panel104: TPanel
      Left = 264
      Top = 160
      Width = 57
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 5
    end
  end
  object Panel98: TPanel
    Left = 868
    Top = 594
    Width = 373
    Height = 35
    TabOrder = 8
    object ProgressBar2: TProgressBar
      Left = 6
      Top = 8
      Width = 363
      Height = 17
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 1212
    Top = 552
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 1168
    Top = 552
  end
end
