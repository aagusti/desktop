object frmTaperum: TfrmTaperum
  Left = 476
  Top = 47
  Width = 580
  Height = 480
  Caption = 'Tunjangan Taperum'
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
    Width = 564
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
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 5
      Width = 240
      Height = 25
      DataSource = dsTaperum
      TabOrder = 0
    end
    object btnPrint: TButton
      Left = 245
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      Visible = False
    end
    object PanelClose: TPanel
      Left = 474
      Top = 2
      Width = 88
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 564
    Height = 408
    Align = alClient
    Ctl3D = False
    DataSource = dsTaperum
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial Rounded MT Bold'
    TitleFont.Style = []
    Flat = True
    Bands.Strings = (
      'Jumlah Tunjangan')
    BandsFont.Charset = ANSI_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Arial Rounded MT Bold'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoDrawBands, eoTitleWordWrap, eoFilterAutoApply, eoTitleLines]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'GOLONGANKD'
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUMLAH'
        Title.Alignment = taCenter
        Title.Caption = 'Sekarang'
        Width = 178
        Visible = True
        BandIndex = 0
      end
      item
        Expanded = False
        FieldName = 'LAMA'
        Title.Alignment = taCenter
        Title.Caption = 'Lama'
        Width = 144
        Visible = True
        BandIndex = 0
      end>
  end
  object dsTaperum: TDataSource
    AutoEdit = False
    DataSet = Taperum
    Left = 336
    Top = 224
  end
  object Taperum: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = TaperumAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTaperum'
      'ORDER BY  GolonganKd')
    Left = 360
    Top = 240
  end
end
