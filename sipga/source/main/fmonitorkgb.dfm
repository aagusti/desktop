object frmMonitorKGB: TfrmMonitorKGB
  Left = 316
  Top = 73
  Width = 976
  Height = 579
  Caption = 'Monitoring KGB'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 221
    Top = 33
    Height = 519
    AutoSnap = False
  end
  object TVW: TTreeView
    Left = 0
    Top = 33
    Width = 221
    Height = 519
    Align = alLeft
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = cl3DLight
    HideSelection = False
    Indent = 19
    ParentShowHint = False
    ReadOnly = True
    RightClickSelect = True
    RowSelect = True
    ShowHint = False
    TabOrder = 0
    OnChange = TVWChange
  end
  object Panel1: TPanel
    Left = 224
    Top = 33
    Width = 744
    Height = 519
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 742
      Height = 441
      Align = alClient
      Ctl3D = False
      DataSource = dsPensiun
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
      ExOptions = [eoCellHint, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoFilterAutoApply, eoTitleLines]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 11
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'NomorUrut'
          Title.Alignment = taCenter
          Title.Caption = 'No.'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITKD'
          Title.Alignment = taCenter
          Title.Caption = 'SKPD'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NIP'
          Title.Alignment = taCenter
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAMA'
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TGL_LAHIR'
          Title.Alignment = taCenter
          Title.Caption = 'Tgl Lahir'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GOLONGANKD'
          Title.Alignment = taCenter
          Title.Caption = 'Gol.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MASAKERJA'
          Title.Alignment = taCenter
          Title.Caption = 'MKG'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TMT_GAJI_POKOK'
          Title.Alignment = taCenter
          Title.Caption = 'TMT'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NextKGB'
          Title.Alignment = taCenter
          Title.Caption = 'Tgl KGB'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SisaText'
          Title.Alignment = taCenter
          Title.Caption = 'Masa KGB'
          Width = 109
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 442
      Width = 742
      Height = 76
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 33
        Top = 8
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'SKPD :'
      end
      object Label2: TLabel
        Left = 30
        Top = 24
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status :'
      end
      object Label3: TLabel
        Left = 166
        Top = 24
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gol / MKG :'
      end
      object DBText1: TDBText
        Left = 80
        Top = 8
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'UnitNm'
        DataSource = dsPensiun
      end
      object DBText2: TDBText
        Left = 80
        Top = 24
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'Status'
        DataSource = dsPensiun
      end
      object DBText3: TDBText
        Left = 244
        Top = 24
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'GolMKG'
        DataSource = dsPensiun
      end
      object Label4: TLabel
        Left = 11
        Top = 40
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Struktural :'
      end
      object DBText4: TDBText
        Left = 80
        Top = 40
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'Jbt_Struktur'
        DataSource = dsPensiun
      end
      object Label5: TLabel
        Left = 5
        Top = 56
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fungsional :'
      end
      object DBText5: TDBText
        Left = 80
        Top = 56
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'JBT_FUNGSI'
        DataSource = dsPensiun
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 33
    Align = alTop
    TabOrder = 2
    object btnPrint: TSpeedButton
      Left = 424
      Top = 4
      Width = 89
      Height = 25
      Caption = '&Print'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = pmF1
      OnClick = btnPrintClick
    end
    object Label7: TLabel
      Left = 232
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Bulan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 890
      Top = 1
      Width = 77
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        77
        31)
      object btnClose: TSpeedButton
        Left = 4
        Top = 3
        Width = 69
        Height = 25
        Anchors = [akLeft, akTop, akBottom]
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
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 228
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        228
        31)
      object Label6: TLabel
        Left = 12
        Top = 8
        Width = 23
        Height = 13
        Caption = 'Cari'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtCari: TEdit
        Left = 44
        Top = 4
        Width = 173
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkFlat
        BorderStyle = bsNone
        TabOrder = 0
        OnChange = txtCariChange
      end
    end
    object CoBulan: TComboBox
      Left = 272
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '---Semua---'
      OnChange = txtCariChange
      Items.Strings = (
        '---Semua---'
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
  object qryPensiun: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryPensiunAfterOpen
    BeforeInsert = qryPensiunBeforeInsert
    BeforeEdit = qryPensiunBeforeInsert
    BeforeDelete = qryPensiunBeforeInsert
    OnCalcFields = qryPensiunCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from ViewPegawai'
      ''
      '--FILTER'
      ''
      'order by Unitkd, sts_pegawaikd desc, aktif_kd asc, '
      
        '(case jbt_strukturkd when '#39'9999'#39' then '#39'zzz'#39' when '#39'BUP'#39' then '#39'0'#39' ' +
        'when '#39'WABUP'#39' then '#39'1'#39' else jbt_strukturkd end)asc, '
      'golongankd desc')
    Left = 244
    Top = 148
    object qryPensiunNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qryPensiunUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qryPensiunUnitNm: TStringField
      FieldName = 'UnitNm'
      Size = 105
    end
    object qryPensiunNAMA: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object qryPensiunTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qryPensiunTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object qryPensiunTGL_BUP: TDateTimeField
      FieldName = 'TGL_BUP'
    end
    object qryPensiunJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object qryPensiunBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qryPensiunREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object qryPensiunNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object qryPensiunNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object qryPensiunNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object qryPensiunALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object qryPensiunNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object qryPensiunSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object qryPensiunStatus: TStringField
      FieldName = 'Status'
    end
    object qryPensiunTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object qryPensiunSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object qryPensiunSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object qryPensiunAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object qryPensiunJML_SI: TSmallintField
      FieldName = 'JML_SI'
    end
    object qryPensiunJML_ANAK: TSmallintField
      FieldName = 'JML_ANAK'
    end
    object qryPensiunPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object qryPensiunPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object qryPensiunPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object qryPensiunGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object qryPensiunGolonganNm: TStringField
      FieldName = 'GolonganNm'
      Size = 25
    end
    object qryPensiunTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object qryPensiunMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object qryPensiunTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object qryPensiunJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object qryPensiunJBT_FUNGSI: TStringField
      FieldName = 'JBT_FUNGSI'
      Size = 255
    end
    object qryPensiunTMT_FUNGSI: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
    object qryPensiunJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object qryPensiunJbt_Struktur: TStringField
      FieldName = 'Jbt_Struktur'
      Size = 50
    end
    object qryPensiunTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object qryPensiunAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object qryPensiunAktifNm: TStringField
      FieldName = 'AktifNm'
      Size = 50
    end
    object qryPensiunAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object qryPensiunGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object qryPensiunGuruNm: TStringField
      FieldName = 'GuruNm'
      Size = 35
    end
    object qryPensiunMAX_PENSIUN: TIntegerField
      FieldName = 'MAX_PENSIUN'
    end
    object qryPensiunTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object qryPensiunPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object qryPensiunGAJI_POKOK: TFloatField
      FieldName = 'GAJI_POKOK'
    end
    object qryPensiunTUNJ_ISTRI: TFloatField
      FieldName = 'TUNJ_ISTRI'
    end
    object qryPensiunTUNJ_ANAK: TFloatField
      FieldName = 'TUNJ_ANAK'
    end
    object qryPensiunTUNJ_BERAS: TFloatField
      FieldName = 'TUNJ_BERAS'
    end
    object qryPensiunTUNJ_JAB_STRUKTUR: TFloatField
      FieldName = 'TUNJ_JAB_STRUKTUR'
    end
    object qryPensiunTUNJ_JAB_FUNGSI: TFloatField
      FieldName = 'TUNJ_JAB_FUNGSI'
    end
    object qryPensiunTUNJ_KERJA: TFloatField
      FieldName = 'TUNJ_KERJA'
    end
    object qryPensiunTUNJ_UMUM: TFloatField
      FieldName = 'TUNJ_UMUM'
    end
    object qryPensiunTUNJ_UMUM_TAMB: TFloatField
      FieldName = 'TUNJ_UMUM_TAMB'
    end
    object qryPensiunTUNJ_OTSUS: TFloatField
      FieldName = 'TUNJ_OTSUS'
    end
    object qryPensiunTUNJ_DT: TFloatField
      FieldName = 'TUNJ_DT'
    end
    object qryPensiunTUNJ_ASKES: TFloatField
      FieldName = 'TUNJ_ASKES'
    end
    object qryPensiunTUNJ_PENGHASILAN: TFloatField
      FieldName = 'TUNJ_PENGHASILAN'
    end
    object qryPensiunPEMBULATAN: TFloatField
      FieldName = 'PEMBULATAN'
    end
    object qryPensiunPPH: TFloatField
      FieldName = 'PPH'
    end
    object qryPensiunPOT_IWP: TFloatField
      FieldName = 'POT_IWP'
    end
    object qryPensiunPOT_TAPERUM: TFloatField
      FieldName = 'POT_TAPERUM'
    end
    object qryPensiunPOT_SEWA_RUMAH: TFloatField
      FieldName = 'POT_SEWA_RUMAH'
    end
    object qryPensiunPOT_PANGAN: TFloatField
      FieldName = 'POT_PANGAN'
    end
    object qryPensiunPOT_KORPRI: TFloatField
      FieldName = 'POT_KORPRI'
    end
    object qryPensiunPOT_GAJI_LEBIH: TFloatField
      FieldName = 'POT_GAJI_LEBIH'
    end
    object qryPensiunPOT_HUTANG: TFloatField
      FieldName = 'POT_HUTANG'
    end
    object qryPensiunBIAYA_JABATAN: TFloatField
      FieldName = 'BIAYA_JABATAN'
    end
    object qryPensiunBIAYA_PENSIUN: TFloatField
      FieldName = 'BIAYA_PENSIUN'
    end
    object qryPensiunPersen_Gaji: TFloatField
      FieldName = 'Persen_Gaji'
    end
    object qryPensiunIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object qryPensiunISBAYARGJ: TBooleanField
      FieldName = 'ISBAYARGJ'
    end
    object qryPensiunOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 50
    end
    object qryPensiunTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object qryPensiunSisaText: TStringField
      FieldKind = fkCalculated
      FieldName = 'SisaText'
      Size = 50
      Calculated = True
    end
    object qryPensiunGolMKG: TStringField
      FieldKind = fkCalculated
      FieldName = 'GolMKG'
      Calculated = True
    end
    object qryPensiunNextKGB: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'NextKGB'
      Calculated = True
    end
    object qryPensiunNomorUrut: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'NomorUrut'
      Calculated = True
    end
  end
  object dsPensiun: TDataSource
    AutoEdit = False
    DataSet = qryPensiun
    Left = 272
    Top = 180
  end
  object pmF1: TPopupMenu
    Tag = 1
    Left = 534
    Top = 6
    object DesignEdit1: TMenuItem
      Tag = 1
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
end
