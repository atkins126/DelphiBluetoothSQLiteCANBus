object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 352
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 521
    Height = 265
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Standard Kennlinien'
      object Label2: TLabel
        Left = 3
        Top = 3
        Width = 84
        Height = 13
        Caption = 'lblQuelleStandard'
      end
      object StringGrid2: TStringGrid
        Left = 0
        Top = 22
        Width = 510
        Height = 212
        ColCount = 10
        DefaultColWidth = 130
        FixedCols = 0
        RowCount = 101
        TabOrder = 0
        OnDblClick = StringGrid2DblClick
        OnSelectCell = StringGrid2SelectCell
        ColWidths = (
          64
          130
          130
          130
          130
          130
          130
          130
          130
          130)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sonder Kennlinien'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 74
        Height = 13
        Caption = 'lblQuelleSonder'
      end
      object StringGrid1: TStringGrid
        Left = 3
        Top = 22
        Width = 507
        Height = 212
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 275
    Width = 521
    Height = 41
    TabOrder = 1
    object Button1: TButton
      Left = 7
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Satzinfo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 88
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 169
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Diagramme'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 250
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Kopieren'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 331
      Top = 7
      Width = 75
      Height = 25
      Caption = 'L'#246'schen'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 412
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Einf'#252'gen'
      TabOrder = 5
    end
  end
  object Button7: TButton
    Left = 380
    Top = 322
    Width = 149
    Height = 25
    Caption = 'Kennlinien schliessen'
    TabOrder = 2
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 228
    Top = 322
    Width = 146
    Height = 25
    Caption = 'Kennlinie bearbeiten'
    TabOrder = 3
    OnClick = Button8Click
  end
  object ImageList1: TImageList
    Left = 116
    Top = 312
  end
end
