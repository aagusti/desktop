object frmRekapGaji: TfrmRekapGaji
  Left = 338
  Top = 71
  Width = 807
  Height = 555
  Caption = 'Rekap Pembayaran Gaji'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 285
    Top = 25
    Height = 503
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 25
    Align = alTop
    Caption = 'Rekapitulasi Pembayaran Gaji '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 285
    Height = 503
    Align = alLeft
    BevelOuter = bvNone
    Constraints.MaxWidth = 400
    Constraints.MinWidth = 200
    TabOrder = 1
    object grdRekap: TSMDBGrid
      Left = 0
      Top = 29
      Width = 285
      Height = 290
      Align = alClient
      DataSource = dsRekap
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Flat = False
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
      ExOptions = [eoCellHint, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoShowRecNo, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Bulan'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SP2DDate'
          Title.Alignment = taCenter
          Title.Caption = 'Tgl SP2D'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoUrut'
          Title.Alignment = taCenter
          Title.Caption = 'No.'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UraianJenis'
          Title.Alignment = taCenter
          Title.Caption = 'Jenis Pembayaran'
          Width = 94
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 319
      Width = 285
      Height = 184
      Align = alBottom
      TabOrder = 2
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 158
        Width = 283
        Height = 25
        DataSource = dsRekap
        Align = alBottom
        Flat = True
        TabOrder = 0
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 283
        Height = 157
        ActivePage = TabSheet1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'Entry'
          DesignSize = (
            275
            129)
          object Label3: TLabel
            Left = 33
            Top = 5
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tahun'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 75
            Top = 6
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'Tahun'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 36
            Top = 26
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bulan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 14
            Top = 47
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tgl SP2D'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 4
            Top = 67
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jenis Pemb'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 13
            Top = 85
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pemb. Ke'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 34
            Top = 103
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Notes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 74
            Top = 22
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'Bulan'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'BULAN'
            ListField = 'NMLENGKAP'
            ListSource = dsBulan
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBDateEdit7: TDBDateEdit
            Left = 74
            Top = 42
            Width = 197
            Height = 19
            DataField = 'SP2DDate'
            DataSource = dsRekap
            BlanksChar = '_'
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Anchors = [akLeft, akTop, akRight]
            NumGlyphs = 2
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            YearDigits = dyFour
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 74
            Top = 62
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'RJenis'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'RJenis'
            ListField = 'RUraian'
            ListSource = dsJRekap
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 74
            Top = 82
            Width = 49
            Height = 19
            Ctl3D = False
            DataField = 'NoUrut'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit2: TDBEdit
            Left = 74
            Top = 102
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'RekapNotes'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TTD'
          ImageIndex = 1
          DesignSize = (
            275
            129)
          object Label8: TLabel
            Left = 8
            Top = 15
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jabatan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 21
            Top = 43
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nama'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 32
            Top = 72
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'NIP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 62
            Top = 13
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'TTDJabatan'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 62
            Top = 41
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'TTDNama'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 62
            Top = 70
            Width = 197
            Height = 19
            Anchors = [akLeft, akTop, akRight]
            Ctl3D = False
            DataField = 'TTDNIP'
            DataSource = dsRekap
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 285
      Height = 29
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        285
        29)
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Bulan'
      end
      object cboBulan: TComboBox
        Left = 48
        Top = 4
        Width = 229
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '--<Semua>--'
        OnChange = cboBulanChange
        Items.Strings = (
          '--<Semua>--'
          'Januari'
          'Februari'
          'Maret'
          'April'
          'Mei'
          'Juni'
          'Juli'
          'Agustus'
          'September'
          'Oktober'
          'Nopember'
          'Desember')
      end
    end
  end
  object Panel3: TPanel
    Left = 288
    Top = 25
    Width = 511
    Height = 503
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object grdRekapDetail: TSMDBGrid
      Left = 0
      Top = 0
      Width = 511
      Height = 476
      Align = alClient
      DataSource = dsRealisasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Flat = False
      Bands.Strings = (
        'Jumlah'
        'Gaji dan Tunjangan'
        'Potongan')
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = [fsBold]
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoShowFooter, eoDrawBands, eoBLOBEditor, eoRowHeightAutofit, eoTitleWordWrap, eoFilterAutoApply]
      HintField = 'UnitNm'
      FixedCols = 1
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      OnDrawFooterCell = grdRekapDetailDrawFooterCell
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 23
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'UnitNm'
          Title.Alignment = taCenter
          Title.Caption = 'SKPD'
          Width = 236
          Visible = True
          InplaceEditor = ieButton
          FooterText = 'Jumlah'
        end
        item
          Expanded = False
          FieldName = 'URAIAN'
          Title.Alignment = taCenter
          Title.Caption = 'Jenis Gaji'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JML_PGW'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Pegawai'
          Visible = True
          BandIndex = 0
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'JML_SI'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'S/I'
          Visible = True
          BandIndex = 0
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'JML_ANAK'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Anak'
          Visible = True
          BandIndex = 0
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'JML_JIWA'
          Title.Alignment = taCenter
          Title.Caption = 'Jiwa'
          Visible = True
          BandIndex = 0
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'GAJI_POKOK'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Gaji Pokok'
          Width = 80
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'TUNJ_KELUARGA'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Keluarga'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'TUNJ_JAB_STRUKTUR'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Struktural'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'TUNJ_JAB_FUNGSI'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Fungsional'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'TUNJ_UMUM'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Umum'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'TUNJ_BERAS'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Beras'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'PPH'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'PPh 21'
          Visible = True
          BandIndex = 1
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'PEMBULATAN'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Pembulatan'
          Width = 82
          Visible = True
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'GAJI_KOTOR'
          Title.Alignment = taCenter
          Title.Caption = 'Gaji Kotor'
          Width = 98
          Visible = True
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'IWP10'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'IWP 10%'
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'IWP2'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'IWP 2%'
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'PPH'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'PPH 21'
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'POT_TAPERUM'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Taperum'
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'LAIN_LAIN'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Lain-Lain'
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'JML_POTONGAN'
          Title.Alignment = taCenter
          Title.Caption = 'Jumlah'
          Width = 84
          Visible = True
          BandIndex = 2
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end
        item
          Expanded = False
          FieldName = 'JML_BERSIH'
          Title.Alignment = taCenter
          Title.Caption = 'Gaji Bersih'
          Width = 85
          Visible = True
          FooterValue = 0.000000000000000000
          FooterType = ftSum
        end>
    end
    object Panel6: TPanel
      Left = 0
      Top = 476
      Width = 511
      Height = 27
      Align = alBottom
      TabOrder = 1
      object Panel11: TPanel
        Left = 433
        Top = 1
        Width = 77
        Height = 25
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          77
          25)
        object btnClose: TSpeedButton
          Left = 4
          Top = 0
          Width = 69
          Height = 26
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Close'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnCloseClick
        end
      end
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 1
        Width = 176
        Height = 25
        DataSource = dsRealisasi
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 177
        Top = 1
        Width = 77
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          77
          25)
        object btnProses: TSpeedButton
          Left = 4
          Top = 0
          Width = 69
          Height = 26
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Proses'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnProsesClick
        end
      end
      object DBNavigator3: TDBNavigator
        Left = 254
        Top = 1
        Width = 55
        Height = 25
        DataSource = dsRekapDet
        VisibleButtons = [nbDelete, nbEdit]
        Align = alLeft
        Flat = True
        TabOrder = 3
      end
      object Panel8: TPanel
        Left = 309
        Top = 1
        Width = 77
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        DesignSize = (
          77
          25)
        object btnPrint: TSpeedButton
          Left = 4
          Top = 0
          Width = 69
          Height = 26
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Print'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnPrintClick
        end
      end
    end
  end
  object qryRekap: TADOQuery
    Connection = GModule.conn
    AfterClose = qryRekapAfterClose
    AfterInsert = qryRekapAfterInsert
    AfterPost = qryRekapAfterPost
    AfterScroll = qryRekapAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from gRekap')
    Left = 108
    Top = 237
    object qryRekapTahun: TStringField
      FieldName = 'Tahun'
      Size = 4
    end
    object qryRekapBulan: TStringField
      FieldName = 'Bulan'
      Size = 2
    end
    object qryRekapNoUrut: TIntegerField
      FieldName = 'NoUrut'
    end
    object qryRekapSP2DDate: TDateTimeField
      FieldName = 'SP2DDate'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qryRekapRJenis: TSmallintField
      FieldName = 'RJenis'
    end
    object qryRekapRekapNotes: TStringField
      FieldName = 'RekapNotes'
      Size = 250
    end
    object qryRekapUraianJenis: TStringField
      FieldKind = fkLookup
      FieldName = 'UraianJenis'
      LookupDataSet = qryJRekap
      LookupKeyFields = 'RJenis'
      LookupResultField = 'RUraian'
      KeyFields = 'RJenis'
      Size = 100
      Lookup = True
    end
    object qryRekapTTDNIP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TTDNIP'
      Size = 30
    end
    object qryRekapTTDNama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TTDNama'
      Size = 100
    end
    object qryRekapTTDJabatan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TTDJabatan'
      Size = 100
    end
  end
  object qryJRekap: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gJenis'
      'order by RJenis')
    Left = 136
    Top = 141
    object qryJRekapRJenis: TSmallintField
      FieldName = 'RJenis'
    end
    object qryJRekapRUraian: TStringField
      FieldName = 'RUraian'
      Size = 100
    end
  end
  object qryRekapDet: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    BeforeInsert = qryRekapDetBeforeInsert
    BeforeEdit = qryRekapDetBeforeEdit
    AfterEdit = qryRekapDetAfterEdit
    AfterPost = qryRekapDetAfterPost
    AfterDelete = qryRekapDetAfterDelete
    DataSource = dsRealisasi
    Parameters = <
      item
        Name = 'Tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'Bulan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'NoUrut'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SP2DDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'RJenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'UnitKd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'Tahun, '
      'Bulan, '
      'NoUrut, '
      'SP2DDate, '
      'RJenis, '
      'UnitKd, '
      'Jenis, '
      'GajiNotes'
      ''
      'FROM gRekapDet'
      'WHERE'
      'Tahun=:Tahun'
      'AND'
      'Bulan=:Bulan'
      'AND'
      'NoUrut=:NoUrut'
      'AND'
      'SP2DDate=:SP2DDate'
      'AND'
      'RJenis=:RJenis'
      'AND'
      'UnitKd=:UnitKd'
      'AND'
      'Jenis=:Jenis')
    Left = 448
    Top = 381
    object qryRekapDetTahun: TStringField
      FieldName = 'Tahun'
      Size = 4
    end
    object qryRekapDetBulan: TStringField
      FieldName = 'Bulan'
      Size = 2
    end
    object qryRekapDetNoUrut: TIntegerField
      FieldName = 'NoUrut'
    end
    object qryRekapDetSP2DDate: TDateTimeField
      FieldName = 'SP2DDate'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qryRekapDetRJenis: TSmallintField
      FieldName = 'RJenis'
    end
    object qryRekapDetUnitKd: TStringField
      FieldName = 'UnitKd'
    end
    object qryRekapDetJenis: TSmallintField
      FieldName = 'Jenis'
    end
    object qryRekapDetGajiNotes: TStringField
      FieldName = 'GajiNotes'
      Size = 250
    end
    object qryRekapDetRUraian: TStringField
      FieldKind = fkLookup
      FieldName = 'RUraian'
      LookupDataSet = qryJRekap2
      LookupKeyFields = 'RJenis'
      LookupResultField = 'RUraian'
      KeyFields = 'RJenis'
      Size = 100
      Lookup = True
    end
    object qryRekapDetBulanNM: TStringField
      FieldKind = fkLookup
      FieldName = 'BulanNM'
      LookupDataSet = qryBulan2
      LookupKeyFields = 'BULAN'
      LookupResultField = 'NMLENGKAP'
      KeyFields = 'Bulan'
      Size = 15
      Lookup = True
    end
  end
  object dsRekap: TDataSource
    AutoEdit = False
    DataSet = qryRekap
    Left = 76
    Top = 237
  end
  object dsRekapDet: TDataSource
    AutoEdit = False
    DataSet = qryRekapDet
    Left = 416
    Top = 381
  end
  object dsJRekap: TDataSource
    AutoEdit = False
    DataSet = qryJRekap
    Left = 168
    Top = 141
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 20
    Top = 108
    object qryBulanBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object qryBulanBULAN_NO: TSmallintField
      FieldName = 'BULAN_NO'
    end
    object qryBulanBULANNM: TStringField
      FieldName = 'BULANNM'
      Size = 15
    end
    object qryBulanNMLENGKAP: TStringField
      FieldName = 'NMLENGKAP'
      Size = 15
    end
  end
  object dsBulan: TDataSource
    AutoEdit = False
    DataSet = qryBulan
    Left = 52
    Top = 108
  end
  object qryRealisasi: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryRealisasiAfterOpen
    AfterClose = qryRealisasiAfterClose
    BeforeInsert = qryRealisasiBeforeInsert
    BeforeEdit = qryRealisasiBeforeEdit
    BeforeDelete = qryRealisasiBeforeDelete
    OnCalcFields = qryRealisasiCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * INTO #XView '
      
        'FROM ViewPembayaranGajiSummary WHERE TAHUN='#39'<9999>'#39' AND BULAN='#39'<' +
        '77>'#39' AND RJENIS=8888 AND TANGGAL_BUAT<=GETDATE()+1'
      ''
      'SELECT'
      
        'A.TAHUN, A.BULAN, A.UNITKD, A.UNITNM, A.NOURUT, A.RJENIS, A.JENI' +
        'S, A.JENISGAJI AS URAIAN, A.SP2DDATE, A.UNITGROUP,'
      
        'ISNULL(B.JML_PGW, 0) AS JML_PGW, ISNULL(B.JML_SI, 0) AS JML_SI, ' +
        'ISNULL(B.JML_ANAK, 0) AS JML_ANAK, '
      '(ISNULL(B.JML_SI, 0) + ISNULL(B.JML_ANAK, 0) + 1) AS JML_JIWA,'
      
        'ISNULL(GAJI_POKOK, 0) AS GAJI_POKOK, ISNULL(B.TUNJ_ISTRI, 0) AS ' +
        'TUNJ_ISTRI,'
      'ISNULL(B.TUNJ_ANAK, 0) AS TUNJ_ANAK, '
      
        '(ISNULL(B.TUNJ_ISTRI, 0) + ISNULL(B.TUNJ_ANAK, 0)) AS TUNJ_KELUA' +
        'RGA,'
      'ISNULL(B.TUNJ_JAB_STRUKTUR, 0) AS TUNJ_JAB_STRUKTUR,'
      'ISNULL(B.TUNJ_JAB_FUNGSI, 0) AS TUNJ_JAB_FUNGSI,'
      'ISNULL(B.TUNJ_UMUM, 0) AS TUNJ_UMUM,'
      'ISNULL(B.TUNJ_BERAS, 0) AS TUNJ_BERAS,'
      'ISNULL(B.PPH, 0) AS PPH, ISNULL(B.PEMBULATAN, 0) AS PEMBULATAN,'
      'ISNULL(B.POT_TAPERUM, 0) AS POT_TAPERUM,'
      'ISNULL(B.IWP10, 0) AS IWP10, ISNULL(B.IWP2, 0) AS IWP2,'
      'ISNULL(B.LAIN_LAIN, 0) AS LAIN_LAIN'
      ''
      'FROM ViewRekapGaji A LEFT OUTER JOIN'
      '#XView B'
      
        'ON B.TAHUN = A.TAHUN AND B.BULAN = A.BULAN AND B.UNITKD = A.UNIT' +
        'KD AND A.RJENIS = B.RJENIS'
      'AND B.JENIS = A.JENIS '
      
        'WHERE A.TAHUN='#39'<9999>'#39' AND A.BULAN='#39'<77>'#39' AND A.RJENIS=8888 AND ' +
        'A.NOURUT=5555 AND A.SP2DDATE=GETDATE()'
      ''
      ''
      'ORDER BY A.UNITGROUP, A.JENIS'
      ''
      'DROP TABLE #XView')
    Left = 460
    Top = 233
    object qryRealisasiTAHUN: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object qryRealisasiBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object qryRealisasiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qryRealisasiUnitNm: TStringField
      FieldName = 'UnitNm'
      Size = 105
    end
    object qryRealisasiNOURUT: TIntegerField
      FieldName = 'NOURUT'
    end
    object qryRealisasiRJENIS: TSmallintField
      FieldName = 'RJENIS'
    end
    object qryRealisasiJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object qryRealisasiURAIAN: TStringField
      FieldName = 'URAIAN'
      Size = 50
    end
    object qryRealisasiSP2DDATE: TDateTimeField
      FieldName = 'SP2DDATE'
    end
    object qryRealisasiUNITGROUP: TStringField
      FieldName = 'UNITGROUP'
      ReadOnly = True
      Size = 22
    end
    object qryRealisasiJML_PGW: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JML_PGW'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '0'
    end
    object qryRealisasiJML_SI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JML_SI'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '0'
    end
    object qryRealisasiJML_ANAK: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JML_ANAK'
      ReadOnly = True
      DisplayFormat = '#,0'
      EditFormat = '0'
    end
    object qryRealisasiGAJI_POKOK: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GAJI_POKOK'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_ISTRI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_ISTRI'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_ANAK: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_ANAK'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_KELUARGA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_KELUARGA'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_JAB_STRUKTUR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_JAB_STRUKTUR'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_JAB_FUNGSI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_JAB_FUNGSI'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_UMUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_UMUM'
      ReadOnly = True
    end
    object qryRealisasiTUNJ_BERAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TUNJ_BERAS'
      ReadOnly = True
    end
    object qryRealisasiPPH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PPH'
      ReadOnly = True
    end
    object qryRealisasiPEMBULATAN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PEMBULATAN'
      ReadOnly = True
    end
    object qryRealisasiPOT_TAPERUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'POT_TAPERUM'
      ReadOnly = True
    end
    object qryRealisasiLAIN_LAIN: TFloatField
      FieldName = 'LAIN_LAIN'
      ReadOnly = True
    end
    object qryRealisasiIWP10: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IWP10'
      ReadOnly = True
    end
    object qryRealisasiIWP2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IWP2'
      ReadOnly = True
    end
    object qryRealisasiGAJI_KOTOR: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'GAJI_KOTOR'
      Calculated = True
    end
    object qryRealisasiJML_POTONGAN: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'JML_POTONGAN'
      Calculated = True
    end
    object qryRealisasiJML_BERSIH: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'JML_BERSIH'
      Calculated = True
    end
    object qryRealisasiJML_JIWA: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'JML_JIWA'
      Calculated = True
    end
  end
  object dsRealisasi: TDataSource
    AutoEdit = False
    DataSet = qryRealisasi
    Left = 460
    Top = 269
  end
  object qryJRekap2: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gJenis'
      'order by RJenis')
    Left = 532
    Top = 357
    object SmallintField1: TSmallintField
      FieldName = 'RJenis'
    end
    object StringField1: TStringField
      FieldName = 'RUraian'
      Size = 100
    end
  end
  object qryBulan2: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 568
    Top = 356
    object StringField2: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object SmallintField2: TSmallintField
      FieldName = 'BULAN_NO'
    end
    object StringField3: TStringField
      FieldName = 'BULANNM'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'NMLENGKAP'
      Size = 15
    end
  end
end
