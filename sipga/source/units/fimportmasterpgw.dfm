object frmImportPGW: TfrmImportPGW
  Left = 330
  Top = 62
  AutoScroll = False
  Caption = 'Import Master Pegawai'
  ClientHeight = 432
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 470
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 407
    Width = 784
    Height = 25
    Align = alBottom
    TabOrder = 2
    object Panel4: TPanel
      Left = 702
      Top = 1
      Width = 81
      Height = 23
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btnClose: TSpeedButton
        Left = 10
        Top = -2
        Width = 67
        Height = 25
        Caption = '&Tutup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnCloseClick
      end
    end
    object pnlProgress: TPanel
      Left = 1
      Top = 1
      Width = 701
      Height = 23
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object ProgressImport: TFlatGauge
        Left = 93
        Top = 0
        Width = 501
        Height = 23
        AdvColorBorder = 0
        Transparent = True
        ColorBorder = 8623776
        Progress = 25
        Align = alClient
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 93
        Height = 23
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object lbMin: TLabel
          Left = 80
          Top = 6
          Width = 8
          Height = 13
          Alignment = taRightJustify
          Caption = '0'
        end
      end
      object Panel6: TPanel
        Left = 594
        Top = 0
        Width = 107
        Height = 23
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object lbMax: TLabel
          Left = 4
          Top = 6
          Width = 8
          Height = 13
          Caption = '0'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 407
    Align = alClient
    TabOrder = 0
    DesignSize = (
      599
      407)
    object PGCMain: TPageControl
      Left = 1
      Top = 1
      Width = 597
      Height = 405
      ActivePage = TabSheet3
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style = tsButtons
      TabOrder = 0
      object TabSheet3: TTabSheet
        Caption = 'Database'
        object pnlGJDatabase: TPanel
          Left = 0
          Top = 0
          Width = 589
          Height = 37
          Align = alTop
          TabOrder = 1
          object Label1: TLabel
            Left = 6
            Top = 12
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Database :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblGJDatabase: TLabel
            Left = 72
            Top = 12
            Width = 36
            Height = 13
            Caption = '(local)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panel7: TPanel
            Left = 375
            Top = 1
            Width = 213
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              213
              35)
            object btnSetupGJ: TSpeedButton
              Left = 94
              Top = 4
              Width = 115
              Height = 25
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Setup Databse'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSetupGJClick
            end
            object btnConnectGJ: TSpeedButton
              Left = 10
              Top = 4
              Width = 79
              Height = 25
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Connect'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnConnectGJClick
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 340
          Width = 589
          Height = 34
          Align = alBottom
          TabOrder = 2
          object btnImportGJ: TSpeedButton
            Left = 171
            Top = 4
            Width = 67
            Height = 25
            Caption = 'Import'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnImportGJClick
          end
          object btnRefreshGJ: TSpeedButton
            Left = 7
            Top = 4
            Width = 67
            Height = 25
            Caption = 'Refresh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnRefreshGJClick
          end
          object btnSelectAllGJ: TSpeedButton
            Left = 79
            Top = 4
            Width = 86
            Height = 25
            Caption = 'Select All'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSelectAllGJClick
          end
          object ckUpdateSrcGJDb: TCheckBox
            Left = 256
            Top = 8
            Width = 253
            Height = 17
            Caption = 'Update Data, Jika Pegawai Sudah Ada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 320
          Width = 589
          Height = 20
          Align = alBottom
          TabOrder = 3
          object DBText1: TDBText
            Left = 8
            Top = 4
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'UnitNm'
            DataSource = dsUnit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object gridGJPGW: TSMDBGrid
          Left = 0
          Top = 37
          Width = 589
          Height = 283
          Align = alClient
          Ctl3D = False
          DataSource = dsPGWdb
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <
            item
              Expression = 'UnitKd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Color = clInactiveCaption
            end>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoDrawBands, eoBLOBEditor, eoBandsOverTitles, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 23
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 11
          RowCount = 2
          Columns = <
            item
              Expanded = False
              Title.Caption = 'Dari Bulan'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Tahun'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Bulan'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Tahun'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITKD'
              Title.Caption = 'Unit'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAMA'
              Width = 171
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STS_PEGAWAIKD'
              Title.Alignment = taCenter
              Title.Caption = 'C/P'
              Width = 31
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'GOLONGANKD'
              Title.Alignment = taCenter
              Title.Caption = 'GOL'
              Width = 44
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'MASAKERJA'
              Title.Alignment = taCenter
              Title.Caption = 'MKG'
              Width = 43
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'File'
        ImageIndex = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 589
          Height = 37
          Align = alTop
          TabOrder = 1
          DesignSize = (
            589
            37)
          object Label2: TLabel
            Left = 8
            Top = 12
            Width = 29
            Height = 13
            Caption = 'File :'
          end
          object Panel11: TPanel
            Left = 540
            Top = 1
            Width = 48
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              48
              35)
            object btnFileGJ: TSpeedButton
              Left = 4
              Top = 4
              Width = 37
              Height = 25
              Anchors = [akLeft, akTop, akBottom]
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnFileGJClick
            end
          end
          object txtFileGJ: TEdit
            Left = 40
            Top = 8
            Width = 499
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Color = cl3DLight
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object gridGJFile: TSMDBGrid
          Left = 0
          Top = 37
          Width = 589
          Height = 283
          Align = alClient
          Ctl3D = False
          DataSource = dsPGWFile
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <
            item
              Expression = 'UnitKd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Color = clInactiveCaption
            end>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 23
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'UNITKD'
              Title.Caption = 'Unit'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAMA'
              Width = 171
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STS_PEGAWAIKD'
              Title.Alignment = taCenter
              Title.Caption = 'C/P'
              Width = 31
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'GOLONGANKD'
              Title.Alignment = taCenter
              Title.Caption = 'GOL'
              Width = 44
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'MASAKERJA'
              Title.Alignment = taCenter
              Title.Caption = 'MKG'
              Width = 43
              Visible = True
            end>
        end
        object Panel12: TPanel
          Left = 0
          Top = 340
          Width = 589
          Height = 34
          Align = alBottom
          TabOrder = 2
          object btnImportGJFile: TSpeedButton
            Tag = 1
            Left = 171
            Top = 4
            Width = 67
            Height = 25
            Caption = 'Import'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnImportGJClick
          end
          object btnRefreshGJFile: TSpeedButton
            Left = 7
            Top = 4
            Width = 67
            Height = 25
            Caption = 'Refresh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnRefreshGJFileClick
          end
          object btnSelectAllGJFile: TSpeedButton
            Left = 79
            Top = 4
            Width = 86
            Height = 25
            Caption = 'Select All'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSelectAllGJFileClick
          end
          object ckUpdateSrcGJFile: TCheckBox
            Left = 256
            Top = 8
            Width = 253
            Height = 17
            Caption = 'Update Data, Jika Pegawai Sudah Ada'
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 320
          Width = 589
          Height = 20
          Align = alBottom
          TabOrder = 3
          object DBText2: TDBText
            Left = 8
            Top = 4
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'unitnm'
            DataSource = dsUnit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object pnlSKPD: TPanel
      Left = 132
      Top = 1
      Width = 453
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        453
        21)
      object Label4: TLabel
        Left = 8
        Top = 4
        Width = 34
        Height = 13
        Caption = 'SKPD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LookSKPD: TRxDBLookupCombo
        Left = 48
        Top = 0
        Width = 401
        Height = 21
        DropDownCount = 15
        Ctl3D = False
        DisplayEmpty = '<Semua SKPD>'
        FieldsDelimiter = ':'
        Anchors = [akLeft, akTop, akRight]
        ListStyle = lsDelimited
        LookupField = 'UNITKD'
        LookupDisplay = 'UNITKD;UNITNM'
        LookupDisplayIndex = 1
        LookupSource = dsSKPD
        ParentCtl3D = False
        TabOrder = 0
        OnChange = LookSKPDChange
      end
    end
  end
  object MemoLog: TMemo
    Left = 599
    Top = 0
    Width = 185
    Height = 407
    Align = alRight
    BevelInner = bvNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Import Log :')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object MyPegawai: TADOQuery
    Connection = GModule.conn
    Parameters = <
      item
        Name = 'nip'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      'pegawai'
      ''
      'where nip=:nip')
    Left = 612
    Top = 324
  end
  object qrySourceDB: TADOQuery
    Connection = SrcConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from pegawai'
      'order by UnitKd, sts_pegawaikd desc, aktif_kd asc, '
      
        '      (case jbt_strukturkd when '#39'9999'#39' then '#39'zzz'#39' when '#39'BUP'#39' the' +
        'n '#39'0'#39' when '#39'WABUP'#39' then '#39'1'#39' else jbt_strukturkd end)asc, '
      
        '      golongankd desc, Masakerja desc, (case when tgl_lahir is n' +
        'ull then getDate() else tgl_lahir end) asc ')
    Left = 612
    Top = 108
  end
  object qrySourceFile: TADOQuery
    Parameters = <>
    Left = 704
    Top = 108
  end
  object SrcConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=GAJI_2011;Data Source=DODOL-PC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 612
    Top = 76
  end
  object dsPGWdb: TDataSource
    AutoEdit = False
    DataSet = qrySourceDB
    Left = 644
    Top = 108
  end
  object OpenGJEx: TOpenDialog
    Filter = 'SIPGA Files|*.sipga|XML Files|*.xml|All Files|*.*'
    Options = [ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    OptionsEx = [ofExNoPlacesBar]
    Left = 692
    Top = 24
  end
  object qryUnit: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    DataSource = dsPGWdb
    Parameters = <
      item
        Name = 'UnitKd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblUnit'
      ''
      'Where UnitKd=:UnitKd')
    Left = 612
    Top = 360
  end
  object dsUnit: TDataSource
    AutoEdit = False
    DataSet = qryUnit
    Left = 644
    Top = 360
  end
  object dsPGWFile: TDataSource
    AutoEdit = False
    DataSet = qrySourceFile
    Left = 740
    Top = 108
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tblUnit'
      ''
      'order by UnitKd')
    Left = 608
    Top = 24
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 640
    Top = 24
  end
  object tmGJDb: TTimer
    Interval = 10
    OnTimer = tmGJDbTimer
    Left = 428
    Top = 184
  end
  object tmGJFile: TTimer
    Interval = 10
    OnTimer = tmGJFileTimer
    Left = 464
    Top = 184
  end
end
