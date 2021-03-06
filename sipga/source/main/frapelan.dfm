object frmGajiRapel: TfrmGajiRapel
  Left = 241
  Top = 81
  Width = 1069
  Height = 600
  Caption = 'Proses Rapel Gaji'
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 960
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 161
    Top = 102
    Height = 471
    AutoSnap = False
  end
  object Splitter3: TSplitter
    Left = 647
    Top = 102
    Height = 471
    AutoSnap = False
  end
  object Panel9: TPanel
    Left = 0
    Top = 69
    Width = 1061
    Height = 33
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1061
      33)
    object btnProses: TSpeedButton
      Left = 744
      Top = 0
      Width = 93
      Height = 33
      Anchors = [akLeft, akTop, akBottom]
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
    object btnImport: TSpeedButton
      Left = 552
      Top = 0
      Width = 93
      Height = 33
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Import'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnImportClick
    end
    object btnEksport: TSpeedButton
      Left = 648
      Top = 0
      Width = 93
      Height = 33
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Eksport'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEksportClick
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 272
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
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
        Width = 217
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        TabOrder = 0
        OnChange = txtCariChange
      end
    end
    object dbNav: TDBNavigator
      Left = 273
      Top = 1
      Width = 270
      Height = 31
      DataSource = dsPegawai
      Align = alLeft
      Flat = True
      Hints.Strings = (
        'Record Pertama'
        'Record Sebelumnya'
        'Record Berikutnya'
        'Record Terakhir'
        'Tambah Data'
        'Hapus Data'
        'Ganti Data'
        'Simpan'
        'Batal Perubahan'
        'Refresh Data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = dbNavClick
    end
    object Panel11: TPanel
      Left = 983
      Top = 1
      Width = 77
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object btnClose: TSpeedButton
        Left = 4
        Top = 0
        Width = 69
        Height = 33
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
  end
  object TVW: TTreeView
    Left = 0
    Top = 102
    Width = 161
    Height = 471
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
    TabOrder = 2
    OnChange = TVWChange
  end
  object PGCDetail: TPageControl
    Left = 650
    Top = 102
    Width = 411
    Height = 471
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object TabSheet7: TTabSheet
      Caption = 'Gaji'
      object Label30: TLabel
        Left = 48
        Top = 27
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gaji Pokok'
        FocusControl = DBEdit30
      end
      object Label32: TLabel
        Left = 56
        Top = 47
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Istri'
        FocusControl = DBEdit32
      end
      object Label33: TLabel
        Left = 48
        Top = 67
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Anak'
        FocusControl = DBEdit33
      end
      object Label28: TLabel
        Left = 22
        Top = 86
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Struktural'
        FocusControl = DBEdit33
      end
      object Label29: TLabel
        Left = 16
        Top = 106
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Fungsional'
        FocusControl = DBEdit33
      end
      object Label34: TLabel
        Left = 45
        Top = 127
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Beras'
        FocusControl = DBEdit34
      end
      object Label3: TLabel
        Left = 43
        Top = 147
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Umum'
        FocusControl = DBEdit33
      end
      object Label43: TLabel
        Left = 4
        Top = 168
        Width = 107
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamb. Tunj. Umum'
        FocusControl = DBEdit43
      end
      object Label44: TLabel
        Left = 15
        Top = 187
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunjangan Otsus'
        FocusControl = DBEdit44
      end
      object Label45: TLabel
        Left = 30
        Top = 207
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunjangan DT'
        FocusControl = DBEdit44
      end
      object Label46: TLabel
        Left = 13
        Top = 227
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunjangan Askes'
        FocusControl = DBEdit44
      end
      object Label39: TLabel
        Left = 47
        Top = 247
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tunj. Kerja'
        FocusControl = DBEdit38
      end
      object Label47: TLabel
        Left = 86
        Top = 267
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'TPP'
        FocusControl = DBEdit47
      end
      object Label56: TLabel
        Left = 56
        Top = 302
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gaji Kotor'
        FocusControl = DBEdit30
      end
      object Label48: TLabel
        Left = 270
        Top = 27
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'IWP'
      end
      object Label49: TLabel
        Left = 246
        Top = 46
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Taperum'
      end
      object Label50: TLabel
        Left = 221
        Top = 67
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sewa Rumah'
      end
      object Label51: TLabel
        Left = 225
        Top = 87
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pot. Pangan'
      end
      object Label52: TLabel
        Left = 235
        Top = 107
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pot. Korpri'
      end
      object Label53: TLabel
        Left = 213
        Top = 127
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kelebihan Gaji'
      end
      object Label54: TLabel
        Left = 219
        Top = 147
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hutang Lebih'
      end
      object Label55: TLabel
        Left = 229
        Top = 174
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Jumlah Pot.'
      end
      object Label59: TLabel
        Left = 226
        Top = 207
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'By. Jabatan'
      end
      object Label61: TLabel
        Left = 225
        Top = 227
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'By. Pensiun'
      end
      object Label58: TLabel
        Left = 227
        Top = 247
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pembulatan'
      end
      object Label57: TLabel
        Left = 266
        Top = 267
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'PPH'
      end
      object Label60: TLabel
        Left = 232
        Top = 302
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gaji Bersih'
      end
      object Label36: TLabel
        Left = 12
        Top = 374
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Operator'
        FocusControl = DBEdit36
      end
      object Label37: TLabel
        Left = 4
        Top = 394
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl. Ubah'
        FocusControl = DBEdit37
      end
      object DBEdit30: TDBEdit
        Left = 116
        Top = 23
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'GAJI_POKOK'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit32: TDBEdit
        Left = 116
        Top = 43
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_ISTRI'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit33: TDBEdit
        Left = 116
        Top = 63
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_ANAK'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit29: TDBEdit
        Left = 116
        Top = 83
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_JAB_STRUKTUR'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit28: TDBEdit
        Left = 116
        Top = 103
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_JAB_FUNGSI'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit34: TDBEdit
        Left = 116
        Top = 123
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_BERAS'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit42: TDBEdit
        Left = 116
        Top = 143
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_UMUM'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit43: TDBEdit
        Left = 116
        Top = 163
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_UMUM_TAMB'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit44: TDBEdit
        Left = 116
        Top = 183
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_OTSUS'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit45: TDBEdit
        Left = 116
        Top = 203
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TUNJ_DT'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit46: TDBEdit
        Left = 116
        Top = 223
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'TUNJ_ASKES'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit38: TDBEdit
        Left = 116
        Top = 243
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'TUNJ_KERJA'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit47: TDBEdit
        Left = 116
        Top = 263
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'TUNJ_PENGHASILAN'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit52: TDBEdit
        Left = 116
        Top = 298
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'GajiDanTunjangan'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit56: TDBEdit
        Left = 299
        Top = 298
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'GajiBersih'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit53: TDBEdit
        Left = 299
        Top = 263
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'PPH'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBEdit54: TDBEdit
        Left = 299
        Top = 243
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'PEMBULATAN'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit55: TDBEdit
        Left = 299
        Top = 223
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'BIAYA_PENSIUN'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit31: TDBEdit
        Left = 299
        Top = 203
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'BIAYA_JABATAN'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit51: TDBEdit
        Left = 299
        Top = 171
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'Potongan'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object DBEdit50: TDBEdit
        Left = 299
        Top = 143
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'POT_HUTANG'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit49: TDBEdit
        Left = 299
        Top = 123
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'POT_GAJI_LEBIH'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit48: TDBEdit
        Left = 299
        Top = 103
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'POT_KORPRI'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit27: TDBEdit
        Left = 299
        Top = 83
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'POT_PANGAN'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit23: TDBEdit
        Left = 299
        Top = 63
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'POT_SEWA_RUMAH'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
      end
      object DBEdit16: TDBEdit
        Left = 299
        Top = 43
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'POT_TAPERUM'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
      end
      object DBEdit6: TDBEdit
        Left = 299
        Top = 23
        Width = 89
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'POT_IWP'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
      end
      object DBEdit36: TDBEdit
        Left = 69
        Top = 370
        Width = 201
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'OPERATOR'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
      end
      object DBEdit37: TDBEdit
        Left = 69
        Top = 391
        Width = 104
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'TGL_UBAH'
        DataSource = dsPegawai
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Print'
      ImageIndex = 2
      DesignSize = (
        403
        443)
      object btnF1: TSpeedButton
        Tag = 1
        Left = 4
        Top = 64
        Width = 383
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Halaman Luar Daftar'
        PopupMenu = pmF1
        OnClick = btnF1Click
      end
      object btnF2: TSpeedButton
        Tag = 2
        Left = 4
        Top = 92
        Width = 383
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Daftar'
        PopupMenu = pmF2
        OnClick = btnF1Click
      end
      object btnF3: TSpeedButton
        Tag = 3
        Left = 4
        Top = 120
        Width = 383
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Rekap'
        PopupMenu = pmF3
        OnClick = btnF1Click
      end
      object Label69: TLabel
        Left = 4
        Top = 40
        Width = 76
        Height = 13
        Caption = 'Tanggal TTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ckSub: TCheckBox
        Left = 4
        Top = 12
        Width = 221
        Height = 17
        Caption = 'Termasuk Unit Kerja Dibawahnya'
        TabOrder = 0
      end
      object tglTTD: TDateEdit
        Left = 92
        Top = 36
        Width = 109
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 69
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 266
      Top = 7
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tahun'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 27
      Top = 9
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dari Bulan'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 49
      Top = 51
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Uraian'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label66: TLabel
      Left = 434
      Top = 9
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tgl. Buat'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label67: TLabel
      Left = 266
      Top = 27
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tahun'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label68: TLabel
      Left = 9
      Top = 29
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sampai Bulan'
      FocusControl = DBEdit30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 315
      Top = 5
      Width = 89
      Height = 19
      Ctl3D = False
      DataField = 'TM_TAHUN'
      DataSource = dsJenis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 99
      Top = 5
      Width = 158
      Height = 19
      Ctl3D = False
      DataField = 'TM_BULAN'
      DataSource = dsJenis
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
    object DBEdit3: TDBEdit
      Left = 99
      Top = 45
      Width = 306
      Height = 19
      Ctl3D = False
      DataField = 'URAIAN'
      DataSource = dsJenis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object DBDateEdit7: TDBDateEdit
      Left = 499
      Top = 6
      Width = 93
      Height = 19
      DataField = 'TANGGAL_BUAT'
      DataSource = dsJenis
      BlanksChar = '_'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      YearDigits = dyFour
    end
    object DBCheckBox1: TDBCheckBox
      Left = 436
      Top = 44
      Width = 65
      Height = 17
      Caption = 'Posted'
      DataField = 'POSTED'
      DataSource = dsJenis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBNavigator1: TDBNavigator
      Left = 601
      Top = 5
      Width = 240
      Height = 28
      DataSource = dsJenis
      Flat = True
      Hints.Strings = (
        'Record Pertama'
        'Record Sebelumnya'
        'Record Berikutnya'
        'Record Terakhir'
        'Tambah Data'
        'Hapus Data'
        'Ganti Data'
        'Simpan'
        'Batal Perubahan'
        'Refresh Data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 315
      Top = 25
      Width = 89
      Height = 19
      Ctl3D = False
      DataField = 'TAHUN'
      DataSource = dsJenis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox9: TDBLookupComboBox
      Left = 99
      Top = 25
      Width = 158
      Height = 19
      Ctl3D = False
      DataField = 'BULAN'
      DataSource = dsJenis
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
      TabOrder = 2
    end
  end
  object pnlGrid: TPanel
    Left = 164
    Top = 102
    Width = 483
    Height = 471
    Align = alLeft
    TabOrder = 3
    object PGCMain: TPageControl
      Left = 1
      Top = 1
      Width = 481
      Height = 469
      ActivePage = TabSheet6
      Align = alClient
      Constraints.MinWidth = 481
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet5: TTabSheet
        Caption = 'Grid'
        object SMDBGrid1: TSMDBGrid
          Left = 0
          Top = 0
          Width = 473
          Height = 414
          Align = alClient
          Ctl3D = False
          DataSource = dsPegawai
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
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
          ExOptions = [eoBooleanAsCheckBox, eoCellHint, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoFilterAutoApply, eoTitleLines]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 10
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NomorUrut'
              Title.Alignment = taCenter
              Title.Caption = 'No.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITKD'
              Title.Alignment = taCenter
              Title.Caption = 'SKPD'
              Width = 132
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIP'
              Title.Alignment = taCenter
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAMA'
              Title.Alignment = taCenter
              Title.Caption = 'Nama'
              Width = 251
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GOLONGANKD'
              Title.Alignment = taCenter
              Title.Caption = 'Gol.'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STS_PEGAWAIKD'
              Title.Alignment = taCenter
              Title.Caption = 'C/P'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GajiDanTunjangan'
              Title.Alignment = taCenter
              Title.Caption = 'Gj. Kotor'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Potongan'
              Title.Alignment = taCenter
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GajiBersih'
              Title.Alignment = taCenter
              Title.Caption = 'Gaji Bersih'
              Width = 110
              Visible = True
            end>
        end
        object pnlJmlData: TPanel
          Left = 0
          Top = 414
          Width = 473
          Height = 27
          Align = alBottom
          Caption = 'Jumlah Data = 0'
          TabOrder = 1
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Form'
        ImageIndex = 1
        DesignSize = (
          473
          441)
        object Label1: TLabel
          Left = 65
          Top = 28
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'NIP'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 54
          Top = 7
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'SKPD'
        end
        object Label4: TLabel
          Left = 55
          Top = 49
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nama'
        end
        object Label5: TLabel
          Left = 3
          Top = 70
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tmp/Tgl. Lahir'
        end
        object Label7: TLabel
          Left = 368
          Top = 69
          Width = 45
          Height = 13
          Caption = 'Kelamin'
        end
        object Label13: TLabel
          Left = 49
          Top = 91
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Alamat'
        end
        object Label15: TLabel
          Left = 13
          Top = 110
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sts. Pegawai'
        end
        object Label16: TLabel
          Left = 345
          Top = 111
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label63: TLabel
          Left = 35
          Top = 133
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sts. Aktif'
        end
        object Label65: TLabel
          Left = 345
          Top = 133
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label22: TLabel
          Left = 33
          Top = 153
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Golongan'
        end
        object Label23: TLabel
          Left = 345
          Top = 155
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label24: TLabel
          Left = 92
          Top = 175
          Width = 91
          Height = 13
          Caption = 'Masa Kerja Gol.'
        end
        object Label31: TLabel
          Left = 346
          Top = 175
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label17: TLabel
          Left = 27
          Top = 193
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sts. Kawin'
        end
        object Label14: TLabel
          Left = 228
          Top = 193
          Width = 55
          Height = 13
          Caption = 'Nama S/I'
        end
        object Label19: TLabel
          Left = 48
          Top = 342
          Width = 39
          Height = 13
          Caption = 'Agama'
        end
        object Label21: TLabel
          Left = 33
          Top = 215
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jml. Anak'
        end
        object Label20: TLabel
          Left = 151
          Top = 215
          Width = 135
          Height = 13
          Alignment = taRightJustify
          Caption = 'Istri/Suami Ditanggung '
        end
        object Label64: TLabel
          Left = 371
          Top = 216
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jml. PTKP'
        end
        object Label26: TLabel
          Left = 7
          Top = 236
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jbt. Struktural'
        end
        object Label27: TLabel
          Left = 346
          Top = 237
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label25: TLabel
          Left = 1
          Top = 259
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jbt. Fungsional'
        end
        object Label96: TLabel
          Left = 346
          Top = 258
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'TMT'
        end
        object Label41: TLabel
          Left = 24
          Top = 299
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pendidikan'
          FocusControl = DBEdit40
        end
        object Label42: TLabel
          Left = 91
          Top = 319
          Width = 45
          Height = 13
          Caption = 'Jurusan'
          FocusControl = DBEdit41
        end
        object Label35: TLabel
          Left = 27
          Top = 278
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kode Guru'
        end
        object Label62: TLabel
          Left = 333
          Top = 342
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Persen Gaji'
          FocusControl = DBEdit57
        end
        object Label8: TLabel
          Left = 57
          Top = 384
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bank'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 248
          Top = 384
          Width = 28
          Height = 13
          Caption = 'Rek.'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 49
          Top = 406
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'NPWP'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 249
          Top = 406
          Width = 73
          Height = 13
          Caption = 'No. Pegawai'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 259
          Top = 28
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'NIP Lama'
          FocusControl = DBEdit12
        end
        object Label70: TLabel
          Left = 35
          Top = 363
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tgl. BUP'
          FocusControl = DBEdit15
        end
        object DBEdit1: TDBEdit
          Left = 92
          Top = 24
          Width = 157
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'NIP'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnChange = DBEdit1Change
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 92
          Top = 3
          Width = 377
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'UNITKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'UnitKd'
          ListField = 'UnitKd;strip;UnitNm'
          ListFieldIndex = 2
          ListSource = dsSKPD
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 92
          Top = 45
          Width = 377
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'NAMA'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 92
          Top = 66
          Width = 169
          Height = 19
          Ctl3D = False
          DataField = 'TMP_LAHIR'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBDateSP2DDate: TDBDateEdit
          Left = 264
          Top = 66
          Width = 93
          Height = 19
          DataField = 'TGL_LAHIR'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          YearDigits = dyFour
        end
        object DBComboBox1: TDBComboBox
          Left = 424
          Top = 65
          Width = 45
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          Ctl3D = False
          DataField = 'JNS_KELAMIN'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'L'
            'P')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 92
          Top = 87
          Width = 377
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'ALAMAT'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 92
          Top = 108
          Width = 117
          Height = 19
          Ctl3D = False
          DataField = 'STS_PEGAWAIKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'STS_PEGAWAIKD'
          ListField = 'STS_PEGAWAIKD;strip;URAIAN'
          ListFieldIndex = 2
          ListSource = dsStatus
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object DBDateEdit2: TDBDateEdit
          Left = 376
          Top = 108
          Width = 93
          Height = 19
          DataField = 'TMT_PEGAWAI'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          YearDigits = dyFour
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 92
          Top = 129
          Width = 249
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'AKTIF_KD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Aktif_KD'
          ListField = 'URAIAN'
          ListSource = dsAktif
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBDateEdit5: TDBDateEdit
          Left = 376
          Top = 129
          Width = 93
          Height = 19
          DataField = 'AKTIF_TGL'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          YearDigits = dyFour
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 92
          Top = 150
          Width = 249
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'GOLONGANKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'GOLONGANKD'
          ListField = 'GOLONGANKD;strip;URAIAN'
          ListFieldIndex = 2
          ListSource = dsGolongan
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
        end
        object DBDateEdit1: TDBDateEdit
          Left = 376
          Top = 150
          Width = 93
          Height = 19
          DataField = 'TMT_GOLONGAN'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          YearDigits = dyFour
        end
        object DBEdit24: TDBEdit
          Left = 188
          Top = 171
          Width = 33
          Height = 19
          Ctl3D = False
          DataField = 'MASAKERJA'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
        end
        object DBDateEdit4: TDBDateEdit
          Left = 376
          Top = 171
          Width = 93
          Height = 19
          DataField = 'TMT_GAJI_POKOK'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          YearDigits = dyFour
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 91
          Top = 192
          Width = 130
          Height = 19
          Ctl3D = False
          DataField = 'STS_KWN'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'STS_KAWINKD'
          ListField = 'URAIAN'
          ListSource = dsKawin
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit14: TDBEdit
          Left = 288
          Top = 192
          Width = 181
          Height = 19
          Ctl3D = False
          DataField = 'NAMASI'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit21: TDBEdit
          Left = 91
          Top = 213
          Width = 34
          Height = 19
          Ctl3D = False
          DataField = 'JML_ANAK'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
        end
        object DBEdit20: TDBEdit
          Left = 288
          Top = 213
          Width = 34
          Height = 19
          Ctl3D = False
          DataField = 'JML_SI'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit59: TDBEdit
          Left = 435
          Top = 213
          Width = 34
          Height = 19
          Ctl3D = False
          DataField = 'PTKP'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit19: TDBEdit
          Left = 91
          Top = 339
          Width = 102
          Height = 19
          Ctl3D = False
          DataField = 'AGAMA'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 28
        end
        object LookEselon: TDBLookupComboBox
          Left = 91
          Top = 234
          Width = 250
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'JBT_STRUKTURKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'JBT_STRUKTURKD'
          ListField = 'URAIAN'
          ListSource = dsStruktur
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          OnClick = LookEselonClick
        end
        object DBDateEdit3: TDBDateEdit
          Left = 376
          Top = 234
          Width = 93
          Height = 19
          DataField = 'TMT_JABATAN'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          YearDigits = dyFour
        end
        object LookFungsi: TDBLookupComboBox
          Left = 91
          Top = 255
          Width = 250
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'JBT_FUNGSIKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'JBT_FUNGSIKD'
          ListField = 'JBT_FUNGSI'
          ListSource = dsFungsional
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnClick = LookFungsiClick
        end
        object DBDateEdit6: TDBDateEdit
          Left = 376
          Top = 255
          Width = 93
          Height = 19
          DataField = 'TMT_FUNGSI'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akTop, akRight]
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 24
          YearDigits = dyFour
        end
        object DBEdit40: TDBEdit
          Left = 91
          Top = 297
          Width = 378
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'PEND_TERAKHIR'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 26
        end
        object DBEdit41: TDBEdit
          Left = 141
          Top = 318
          Width = 328
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'PEND_JURUSAN'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 27
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 91
          Top = 276
          Width = 378
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Ctl3D = False
          DataField = 'GURUKD'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'GURUKD'
          ListField = 'URAIAN'
          ListSource = dsGuru
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 25
        end
        object DBEdit57: TDBEdit
          Left = 403
          Top = 339
          Width = 66
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'Persen_Gaji'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit8: TDBEdit
          Left = 91
          Top = 381
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'BANK'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 33
        end
        object DBEdit9: TDBEdit
          Left = 280
          Top = 381
          Width = 189
          Height = 19
          Ctl3D = False
          DataField = 'REKENING'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
        end
        object DBEdit10: TDBEdit
          Left = 91
          Top = 402
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'NPWP'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit11: TDBEdit
          Left = 328
          Top = 402
          Width = 141
          Height = 19
          Ctl3D = False
          DataField = 'NO_PEGAWAI'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit12: TDBEdit
          Left = 319
          Top = 24
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'NIP_LAMA'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 91
          Top = 360
          Width = 102
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TGL_BUP'
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 30
        end
        object ckTambah: TDBCheckBox
          Left = 200
          Top = 360
          Width = 173
          Height = 17
          Caption = 'Perpanjang Masa Pensiun'
          DataField = 'ISTAMBAH_BUP'
          DataSource = dsPegawai
          TabOrder = 31
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object TglTambah: TDBDateEdit
          Left = 376
          Top = 360
          Width = 93
          Height = 19
          DataField = 'TGLTAMBAH_BUP'
          DataSource = dsPegawai
          BlanksChar = '_'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
          YearDigits = dyFour
        end
        object ckSertifikasi: TDBCheckBox
          Left = 92
          Top = 424
          Width = 153
          Height = 17
          Caption = 'Sertifikasi'
          DataField = 'ISSERTIFIKASI'
          DataSource = dsPegawai
          TabOrder = 37
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object Panel3: TPanel
      Left = 108
      Top = 1
      Width = 297
      Height = 19
      BevelOuter = bvNone
      TabOrder = 1
      object fgProses: TFlatGauge
        Left = 0
        Top = 1
        Width = 271
        Height = 17
        AdvColorBorder = 0
        Color = clWhite
        ColorBorder = 8623776
        Progress = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
    end
  end
  object Pegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = PegawaiAfterOpen
    AfterInsert = PegawaiAfterInsert
    AfterEdit = PegawaiAfterEdit
    BeforePost = PegawaiBeforePost
    AfterPost = PegawaiAfterPost
    AfterScroll = PegawaiAfterScroll
    OnCalcFields = PegawaiCalcFields
    DataSource = dsJenis
    Parameters = <
      item
        Name = 'tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'bulan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'tm_tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'tm_bulan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM '
      'PEGAWAI_GAJI_RAPEL'
      'where '
      '(tahun=:tahun'
      'and'
      'bulan=:bulan'
      'and'
      'tm_tahun=:tm_tahun'
      'and'
      'tm_bulan=:tm_bulan'
      'and'
      'jenis=:jenis)'
      ''
      '--FILTER'
      ''
      'order by Unitkd, sts_pegawaikd desc, aktif_kd asc, '
      
        '(case jbt_strukturkd when '#39'9999'#39' then '#39'zzz'#39' when '#39'BUP'#39' then '#39'0'#39' ' +
        'when '#39'WABUP'#39' then '#39'1'#39' else jbt_strukturkd end)asc, '
      'golongankd desc')
    Left = 12
    Top = 120
    object PegawaiTM_TAHUN: TStringField
      FieldName = 'TM_TAHUN'
      Size = 4
    end
    object PegawaiTM_BULAN: TStringField
      FieldName = 'TM_BULAN'
      Size = 2
    end
    object PegawaiTAHUN: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object PegawaiBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object PegawaiJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object PegawaiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object PegawaiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object PegawaiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object PegawaiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object PegawaiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object PegawaiTGL_BUP: TDateTimeField
      FieldName = 'TGL_BUP'
      DisplayFormat = 'dd-mmmm-yyyy'
    end
    object PegawaiJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object PegawaiBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object PegawaiREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object PegawaiNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object PegawaiNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object PegawaiNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object PegawaiALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object PegawaiNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object PegawaiSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object PegawaiTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object PegawaiSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object PegawaiSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object PegawaiAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object PegawaiJML_SI: TSmallintField
      FieldName = 'JML_SI'
    end
    object PegawaiJML_ANAK: TSmallintField
      FieldName = 'JML_ANAK'
    end
    object PegawaiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object PegawaiPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object PegawaiPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object PegawaiV_JAB_STRUKTUR: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object PegawaiGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object PegawaiTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object PegawaiMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object PegawaiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object PegawaiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object PegawaiTMT_FUNGSI: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
    object PegawaiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object PegawaiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object PegawaiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object PegawaiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object PegawaiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object PegawaiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object PegawaiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object PegawaiGAJI_POKOK: TFloatField
      FieldName = 'GAJI_POKOK'
    end
    object PegawaiTUNJ_ISTRI: TFloatField
      FieldName = 'TUNJ_ISTRI'
    end
    object PegawaiTUNJ_ANAK: TFloatField
      FieldName = 'TUNJ_ANAK'
    end
    object PegawaiTUNJ_BERAS: TFloatField
      FieldName = 'TUNJ_BERAS'
    end
    object PegawaiTUNJ_JAB_STRUKTUR: TFloatField
      FieldName = 'TUNJ_JAB_STRUKTUR'
    end
    object PegawaiTUNJ_JAB_FUNGSI: TFloatField
      FieldName = 'TUNJ_JAB_FUNGSI'
    end
    object PegawaiTUNJ_KERJA: TFloatField
      FieldName = 'TUNJ_KERJA'
    end
    object PegawaiTUNJ_UMUM: TFloatField
      FieldName = 'TUNJ_UMUM'
    end
    object PegawaiTUNJ_UMUM_TAMB: TFloatField
      FieldName = 'TUNJ_UMUM_TAMB'
    end
    object PegawaiTUNJ_OTSUS: TFloatField
      FieldName = 'TUNJ_OTSUS'
    end
    object PegawaiTUNJ_DT: TFloatField
      FieldName = 'TUNJ_DT'
    end
    object PegawaiTUNJ_ASKES: TFloatField
      FieldName = 'TUNJ_ASKES'
    end
    object PegawaiTUNJ_PENGHASILAN: TFloatField
      FieldName = 'TUNJ_PENGHASILAN'
    end
    object PegawaiPEMBULATAN: TFloatField
      FieldName = 'PEMBULATAN'
    end
    object PegawaiPPH: TFloatField
      FieldName = 'PPH'
    end
    object PegawaiPOT_IWP: TFloatField
      FieldName = 'POT_IWP'
    end
    object PegawaiPOT_TAPERUM: TFloatField
      FieldName = 'POT_TAPERUM'
    end
    object PegawaiPOT_SEWA_RUMAH: TFloatField
      FieldName = 'POT_SEWA_RUMAH'
    end
    object PegawaiPOT_PANGAN: TFloatField
      FieldName = 'POT_PANGAN'
    end
    object PegawaiPOT_KORPRI: TFloatField
      FieldName = 'POT_KORPRI'
    end
    object PegawaiPOT_GAJI_LEBIH: TFloatField
      FieldName = 'POT_GAJI_LEBIH'
    end
    object PegawaiPOT_HUTANG: TFloatField
      FieldName = 'POT_HUTANG'
    end
    object PegawaiBIAYA_JABATAN: TFloatField
      FieldName = 'BIAYA_JABATAN'
    end
    object PegawaiBIAYA_PENSIUN: TFloatField
      FieldName = 'BIAYA_PENSIUN'
    end
    object PegawaiPersen_Gaji: TFloatField
      FieldName = 'Persen_Gaji'
    end
    object PegawaiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object PegawaiISBAYARGJ: TBooleanField
      FieldName = 'ISBAYARGJ'
    end
    object PegawaiOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 50
    end
    object PegawaiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object PegawaiGOLPGW: TStringField
      FieldKind = fkLookup
      FieldName = 'GOLPGW'
      LookupDataSet = qryGolongan
      LookupKeyFields = 'GOLONGANKD'
      LookupResultField = 'URAIAN'
      KeyFields = 'GOLONGANKD'
      Size = 25
      Lookup = True
    end
    object PegawaiSTSPGW: TStringField
      FieldKind = fkLookup
      FieldName = 'STSPGW'
      LookupDataSet = qryStatus
      LookupKeyFields = 'STS_PEGAWAIKD'
      LookupResultField = 'URAIAN'
      KeyFields = 'STS_PEGAWAIKD'
      Lookup = True
    end
    object PegawaiISTAMBAH_BUP: TBooleanField
      FieldName = 'ISTAMBAH_BUP'
    end
    object PegawaiTGLTAMBAH_BUP: TDateTimeField
      FieldName = 'TGLTAMBAH_BUP'
    end
    object PegawaiNIP_LAMA: TStringField
      FieldName = 'NIP_LAMA'
      Size = 18
    end
    object PegawaiGajiBersih: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object PegawaiPotongan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
    object PegawaiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object PegawaiNomorUrut: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'NomorUrut'
      Calculated = True
    end
    object PegawaiISSERTIFIKASI: TBooleanField
      FieldName = 'ISSERTIFIKASI'
    end
  end
  object dsPegawai: TDataSource
    AutoEdit = False
    DataSet = Pegawai
    Left = 44
    Top = 120
  end
  object qryStruktur: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblJbt_Struktur'
      'ORDER BY Jbt_StrukturKd')
    Left = 12
    Top = 284
  end
  object dsStruktur: TDataSource
    AutoEdit = False
    DataSet = qryStruktur
    Left = 44
    Top = 284
  end
  object qryFungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblJBT_Fungsi'
      'ORDER BY JBT_FungsiKd')
    Left = 12
    Top = 252
  end
  object dsFungsional: TDataSource
    AutoEdit = False
    DataSet = qryFungsional
    Left = 44
    Top = 252
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 12
    Top = 220
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 44
    Top = 220
  end
  object qryStatus: TADOQuery
    Active = True
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip FROM tblSTS_PEGAWAI'
      'ORDER BY STS_PEGAWAIKD')
    Left = 12
    Top = 316
  end
  object dsStatus: TDataSource
    AutoEdit = False
    DataSet = qryStatus
    Left = 44
    Top = 316
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 12
    Top = 380
  end
  object dsAktif: TDataSource
    AutoEdit = False
    DataSet = qryAktif
    Left = 44
    Top = 380
  end
  object qryGolongan: TADOQuery
    Active = True
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblGolongan'
      'where issummary<>1'
      'ORDER BY GolonganKd desc')
    Left = 12
    Top = 348
  end
  object dsGolongan: TDataSource
    AutoEdit = False
    DataSet = qryGolongan
    Left = 44
    Top = 348
  end
  object qryGuru: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblGuru'
      'ORDER BY GuruKd')
    Left = 12
    Top = 444
  end
  object dsGuru: TDataSource
    AutoEdit = False
    DataSet = qryGuru
    Left = 44
    Top = 444
  end
  object qryKawin: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_KAWIN'
      'order by STS_KAWINKD')
    Left = 12
    Top = 508
  end
  object dsKawin: TDataSource
    AutoEdit = False
    DataSet = qryKawin
    Left = 44
    Top = 508
  end
  object qrySIPIL: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_SIPIL'
      'order by C_KODE')
    Left = 12
    Top = 476
  end
  object dsSIPIL: TDataSource
    AutoEdit = False
    DataSet = qrySIPIL
    Left = 44
    Top = 476
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 788
    Top = 36
  end
  object dsBulan: TDataSource
    AutoEdit = False
    DataSet = qryBulan
    Left = 820
    Top = 36
  end
  object QryJENIS: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterInsert = QryJENISAfterInsert
    AfterEdit = QryJENISAfterEdit
    AfterPost = QryJENISAfterPost
    AfterCancel = QryJENISAfterCancel
    AfterDelete = QryJENISAfterDelete
    AfterScroll = QryJENISAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PEGAWAI_RAPEL_JENIS '
      ''
      'ORDER BY TAHUN DESC,BULAN DESC, TM_TAHUN desc, TM_BULAN desc')
    Left = 860
    Top = 36
  end
  object dsJenis: TDataSource
    AutoEdit = False
    DataSet = QryJENIS
    Left = 892
    Top = 36
  end
  object dsParam: TDataSource
    AutoEdit = False
    DataSet = qryParam
    Left = 112
    Top = 408
  end
  object qryParam: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblParameter'
      'Where Tahun=:Tahun')
    Left = 112
    Top = 376
  end
  object qryJenisGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJenisGaji'
      'ORDER BY Jenis_KD')
    Left = 968
    Top = 12
  end
  object pmF1: TPopupMenu
    Tag = 1
    Left = 826
    Top = 194
    object DesignEdit1: TMenuItem
      Tag = 1
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
  object pmF2: TPopupMenu
    Tag = 2
    Left = 878
    Top = 222
    object MenuItem1: TMenuItem
      Tag = 2
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
  object pmF3: TPopupMenu
    Tag = 3
    Left = 822
    Top = 250
    object MenuItem2: TMenuItem
      Tag = 3
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
  object SaveEksport: TSaveDialog
    Filter = 'SIPGA File|*.sipga|XML File|*.xml|All File|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofExtensionDifferent, ofNoNetworkButton, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    OptionsEx = [ofExNoPlacesBar]
    Left = 742
    Top = 377
  end
end
