object frmSKPD: TfrmSKPD
  Left = 299
  Top = 56
  Width = 800
  Height = 588
  Caption = 'Satuan Kerja Perangkat Daerah'
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 800
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 361
    Width = 784
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
      Left = 268
      Top = 10
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
      Top = 4
      Width = 240
      Height = 25
      DataSource = dsSKPD
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 689
      Top = 2
      Width = 93
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnClose: TBitBtn
        Left = 14
        Top = 3
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = btnCloseClick
        Kind = bkClose
      end
    end
    object edtCari: TEdit
      Left = 296
      Top = 6
      Width = 179
      Height = 20
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnChange = edtCariChange
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 395
    Width = 784
    Height = 155
    Align = alBottom
    Caption = ' <Properti> '
    TabOrder = 2
    object Label1: TLabel
      Left = 40
      Top = 83
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pangkat'
    end
    object Label2: TLabel
      Left = 25
      Top = 41
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pimp. SKPD'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 32
      Top = 125
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'PPK-SKPD'
      FocusControl = DBEdit2
    end
    object Label9: TLabel
      Left = 40
      Top = 62
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Jabatan'
      FocusControl = DBEdit7
    end
    object Label6: TLabel
      Left = 62
      Top = 104
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'NIP'
      FocusControl = DBEdit5
    end
    object Label4: TLabel
      Left = 11
      Top = 20
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Thn Anggaran'
      FocusControl = DBEdit3
    end
    object Label10: TLabel
      Left = 372
      Top = 17
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'B. Pengeluaran'
      FocusControl = DBEdit4
    end
    object Label14: TLabel
      Left = 348
      Top = 62
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'NIP'
      FocusControl = DBEdit8
    end
    object Label15: TLabel
      Left = 326
      Top = 83
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Jabatan'
      FocusControl = DBEdit9
    end
    object Label5: TLabel
      Left = 578
      Top = 17
      Width = 124
      Height = 13
      Caption = 'Pembantu B. Pengeluaran'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 338
      Top = 41
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nama'
      FocusControl = DBEdit8
    end
    object Label8: TLabel
      Left = 336
      Top = 101
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'NPWP'
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 38
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'PANama'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 122
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'KPANama'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 84
      Top = 59
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'PAJabatan'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 84
      Top = 101
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'PANIP'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 84
      Top = 80
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'PAPangkat'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 84
      Top = 17
      Width = 81
      Height = 19
      Color = clSilver
      Ctl3D = False
      DataField = 'Tahun'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 576
      Top = 37
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BMNama'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 576
      Top = 58
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BMNip'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 576
      Top = 79
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BMJabatan'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 12
    end
    object DBEdit10: TDBEdit
      Left = 368
      Top = 37
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BKNama'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 6
    end
    object DBEdit11: TDBEdit
      Left = 368
      Top = 58
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BKNIP'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBEdit12: TDBEdit
      Left = 368
      Top = 100
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BKNPWP'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBEdit13: TDBEdit
      Left = 368
      Top = 79
      Width = 200
      Height = 19
      Ctl3D = False
      DataField = 'BKJabatan'
      DataSource = dsProperti
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBNavigator2: TDBNavigator
      Left = 328
      Top = 124
      Width = 240
      Height = 25
      DataSource = dsProperti
      TabOrder = 13
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 361
    Align = alClient
    Ctl3D = False
    DataSource = dsSKPD
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Flat = True
    Bands.Strings = (
      'Nama')
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
    ExOptions = [eoCellHint, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoDrawBands, eoFilterAutoApply, eoTitleLines]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'UnitKd'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UrusanKd'
        Title.Alignment = taCenter
        Title.Caption = 'Urusan'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoUrut'
        Title.Alignment = taCenter
        Title.Caption = 'No Urut'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitNm'
        Title.Alignment = taCenter
        Title.Caption = 'SKPD (Lengkap)'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 322
        Visible = True
        BandIndex = 0
      end
      item
        Expanded = False
        FieldName = 'ShortUnitNm'
        Title.Alignment = taCenter
        Title.Caption = 'Singkat'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 107
        Visible = True
        BandIndex = 0
      end
      item
        Expanded = False
        FieldName = 'BankName'
        Title.Alignment = taCenter
        Title.Caption = 'Bank'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BankAccount'
        Title.Alignment = taCenter
        Title.Caption = 'Rekening'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Alamat'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 252
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telp'
        Title.Alignment = taCenter
        Title.Caption = 'Telepon'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fax'
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial Rounded MT Bold'
        Title.Font.Style = []
        Width = 95
        Visible = True
      end>
  end
  object dsSKPD: TDataSource
    DataSet = SKPD
    Left = 336
    Top = 224
  end
  object SKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = SKPDAfterOpen
    AfterClose = SKPDAfterClose
    BeforePost = SKPDBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 368
    Top = 224
  end
  object Properti: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterInsert = PropertiAfterInsert
    DataSource = dsSKPD
    Parameters = <
      item
        Name = 'UnitKd'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '1.01.01'
      end>
    SQL.Strings = (
      'SELECT * FROM UnitTahun'
      'WHERE UnitKd=:UnitKd'
      'ORDER BY Tahun Desc')
    Left = 472
    Top = 264
  end
  object dsProperti: TDataSource
    DataSet = Properti
    Left = 440
    Top = 264
  end
end
