object frmFungsional: TfrmFungsional
  Left = 359
  Top = 35
  Width = 703
  Height = 480
  Caption = 'Klasifikasi Fungsional Pegawai'
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
    Width = 687
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
    object Label11: TLabel
      Left = 260
      Top = 11
      Width = 22
      Height = 14
      Caption = 'Cari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 5
      Width = 240
      Height = 25
      DataSource = dsFungsional
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 597
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
    object edtCari: TEdit
      Left = 288
      Top = 8
      Width = 179
      Height = 20
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnChange = edtCariChange
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 687
    Height = 408
    Align = alClient
    Ctl3D = False
    DataSource = dsFungsional
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoDrawBands, eoTitleWordWrap, eoFilterAutoApply, eoTitleLines]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'JBT_FUNGSIKD'
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JBT_FUNGSI'
        Title.Alignment = taCenter
        Title.Caption = 'Uraian'
        Width = 265
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
      end
      item
        Expanded = False
        FieldName = 'IsTUnjUmum'
        Title.Alignment = taCenter
        Title.Caption = 'Tunj. Umum'
        Width = 90
        Visible = True
      end>
  end
  object dsFungsional: TDataSource
    DataSet = Fungsional
    Left = 336
    Top = 224
  end
  object Fungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = FungsionalAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJbt_Fungsi'
      'ORDER BY Jbt_FungsiKd')
    Left = 360
    Top = 240
  end
end
