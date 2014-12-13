object frmGolongan: TfrmGolongan
  Left = 340
  Top = 83
  Width = 901
  Height = 480
  Caption = 'Klasifikasi Golongan Pegawai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 885
    Height = 34
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnExportImport: TSpeedButton
      Left = 248
      Top = 4
      Width = 189
      Height = 25
      Caption = 'Export / Import Gaji Pokok'
    end
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 5
      Width = 240
      Height = 25
      DataSource = dsGolongan
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 795
      Top = 2
      Width = 88
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnClose: TBitBtn
        Left = 9
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Tutup'
        TabOrder = 0
        OnClick = btnCloseClick
        Kind = bkClose
      end
    end
  end
  object GroupBox1: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 408
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 441
      Top = 2
      Height = 404
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 439
      Height = 404
      Align = alLeft
      TabOrder = 0
      object SMDBGrid1: TSMDBGrid
        Left = 1
        Top = 25
        Width = 437
        Height = 378
        Align = alClient
        Ctl3D = True
        DataSource = dsGolongan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = SMDBGrid1DrawColumnCell
        Flat = True
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'GOLONGANKD'
            Title.Caption = 'Kode'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'URAIAN'
            Title.Caption = 'Uraian'
            Width = 239
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IsSummary'
            Title.Alignment = taCenter
            Title.Caption = 'Is Summary'
            Width = 90
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 437
        Height = 24
        Align = alTop
        Caption = 'Golongan'
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 444
      Top = 2
      Width = 439
      Height = 404
      Align = alClient
      TabOrder = 1
      object SMDBGrid2: TSMDBGrid
        Left = 1
        Top = 25
        Width = 437
        Height = 378
        Align = alClient
        Ctl3D = True
        DataSource = dsGajiPokok
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Flat = True
        Bands.Strings = (
          'Gaji Pokok')
        BandsFont.Charset = ANSI_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Arial'
        BandsFont.Style = [fsBold]
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoDrawBands, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'MASAKERJA'
            Title.Alignment = taCenter
            Title.Caption = 'Masa Kerja'
            Width = 89
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'JUMLAH'
            Title.Alignment = taCenter
            Title.Caption = 'Baru'
            Width = 114
            Visible = True
            BandIndex = 0
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'JUMLAH_LAMA'
            Title.Alignment = taCenter
            Title.Caption = 'Lama'
            Width = 118
            Visible = True
            BandIndex = 0
          end
          item
            Expanded = False
            FieldName = 'PP'
            Title.Alignment = taCenter
            Width = 266
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 437
        Height = 24
        Align = alTop
        Caption = 'Gaji Pokok'
        TabOrder = 1
      end
    end
  end
  object dsGolongan: TDataSource
    DataSet = Golongan
    Left = 336
    Top = 224
  end
  object Golongan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGolongan'
      'ORDER BY GolonganKd')
    Left = 360
    Top = 240
  end
  object dsGajiPokok: TDataSource
    DataSet = GajiPokok
    Left = 220
    Top = 256
  end
  object GajiPokok: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = GajiPokokAfterOpen
    DataSource = dsGolongan
    Parameters = <
      item
        Name = 'golongankd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblGaji_Pokok'
      'where golongankd=:golongankd'
      'ORDER BY GolonganKd, MasaKerja')
    Left = 244
    Top = 272
  end
end
