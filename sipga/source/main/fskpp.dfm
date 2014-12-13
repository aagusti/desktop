object frmSKPP: TfrmSKPP
  Left = 296
  Top = 30
  Width = 960
  Height = 600
  Caption = 'Surat Keterangan Penghentian Pembayaran (SKPP)'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 524
      Height = 32
      Align = alLeft
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
      object Label1: TLabel
        Left = 180
        Top = 8
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
      object Label2: TLabel
        Left = 328
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Jenis'
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
        Width = 125
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        TabOrder = 0
        OnChange = txtCariChange
      end
      object coBulan: TComboBox
        Left = 220
        Top = 4
        Width = 101
        Height = 21
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = True
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '---Semua---'
        OnChange = txtCariChange
        Items.Strings = (
          '---Semua---'
          'Janurai'
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
      object coJenis: TComboBox
        Left = 376
        Top = 4
        Width = 141
        Height = 21
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = True
        DropDownCount = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '---Semua---'
        OnChange = txtCariChange
        Items.Strings = (
          '---Semua---'
          'Pensiun'
          'Pindah Luar Daerah'
          'Pindah Antar SKPD')
      end
    end
    object Panel11: TPanel
      Left = 867
      Top = 0
      Width = 77
      Height = 32
      Align = alRight
      TabOrder = 1
      DesignSize = (
        77
        32)
      object btnClose: TSpeedButton
        Left = 4
        Top = 0
        Width = 69
        Height = 32
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
      Left = 524
      Top = 0
      Width = 343
      Height = 32
      Align = alClient
      TabOrder = 2
      DesignSize = (
        343
        32)
      object btnPrint: TSpeedButton
        Left = 216
        Top = 0
        Width = 69
        Height = 32
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Print'
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
      object Label67: TLabel
        Left = 16
        Top = 8
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
      object tglTTD: TDateEdit
        Left = 100
        Top = 5
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
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 944
    Height = 449
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 400
      Height = 447
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 400
        Height = 157
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 68
          Top = 14
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'NIP'
        end
        object Label9: TLabel
          Left = 57
          Top = 34
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nama'
        end
        object Label10: TLabel
          Left = 7
          Top = 54
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tmp. Tgl Lahir'
        end
        object Label11: TLabel
          Left = 35
          Top = 74
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Golongan'
        end
        object Label12: TLabel
          Left = 44
          Top = 94
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jabatan'
        end
        object Label13: TLabel
          Left = 56
          Top = 114
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'SKPD'
        end
        object Label22: TLabel
          Left = 31
          Top = 134
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bulan Gaji'
        end
        object DBEdit3: TDBEdit
          Left = 96
          Top = 10
          Width = 157
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'NIP'
          DataSource = dsSKPP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnDblClick = btnCariClick
        end
        object btnCari: TBitBtn
          Left = 256
          Top = 9
          Width = 25
          Height = 20
          Caption = '...'
          TabOrder = 1
          OnClick = btnCariClick
        end
        object DBEdit4: TDBEdit
          Left = 96
          Top = 30
          Width = 289
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'NAMA'
          DataSource = dsGaji
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
        object DBEdit5: TDBEdit
          Left = 96
          Top = 50
          Width = 165
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TMP_LAHIR'
          DataSource = dsGaji
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
        object DBEdit6: TDBEdit
          Left = 272
          Top = 50
          Width = 113
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TGL_LAHIR'
          DataSource = dsGaji
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
        object DBEdit7: TDBEdit
          Left = 96
          Top = 70
          Width = 289
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'GOLPGW'
          DataSource = dsGaji
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
        object DBEdit8: TDBEdit
          Left = 96
          Top = 90
          Width = 289
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'Jabatan'
          DataSource = dsGaji
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
        object DBEdit9: TDBEdit
          Left = 96
          Top = 110
          Width = 289
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'SKPD'
          DataSource = dsGaji
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
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 96
          Top = 130
          Width = 161
          Height = 19
          Ctl3D = False
          DataField = 'Bulan'
          DataSource = dsSKPP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BULAN'
          ListField = 'NMLENGKAP'
          ListSource = dsBulanGaji
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnClick = LookJenisClick
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 157
        Width = 400
        Height = 290
        Align = alClient
        TabOrder = 1
        object Label30: TLabel
          Left = 48
          Top = 11
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gaji Pokok'
          FocusControl = DBEdit30
        end
        object Label32: TLabel
          Left = 56
          Top = 31
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Istri'
          FocusControl = DBEdit32
        end
        object Label33: TLabel
          Left = 48
          Top = 51
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Anak'
          FocusControl = DBEdit33
        end
        object Label28: TLabel
          Left = 22
          Top = 70
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Struktural'
          FocusControl = DBEdit33
        end
        object Label29: TLabel
          Left = 16
          Top = 90
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Fungsional'
          FocusControl = DBEdit33
        end
        object Label34: TLabel
          Left = 45
          Top = 111
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Beras'
          FocusControl = DBEdit34
        end
        object Label14: TLabel
          Left = 43
          Top = 131
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tunj. Umum'
          FocusControl = DBEdit33
        end
        object Label43: TLabel
          Left = 4
          Top = 152
          Width = 107
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tamb. Tunj. Umum'
          FocusControl = DBEdit43
        end
        object Label48: TLabel
          Left = 262
          Top = 11
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'IWP'
        end
        object Label49: TLabel
          Left = 238
          Top = 30
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Taperum'
        end
        object Label55: TLabel
          Left = 229
          Top = 70
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Jumlah Pot.'
        end
        object Label58: TLabel
          Left = 227
          Top = 111
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pembulatan'
        end
        object Label57: TLabel
          Left = 266
          Top = 131
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'PPH'
        end
        object Label60: TLabel
          Left = 232
          Top = 178
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gaji Bersih'
        end
        object Label56: TLabel
          Left = 56
          Top = 178
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gaji Kotor'
          FocusControl = DBEdit30
        end
        object DBEdit30: TDBEdit
          Left = 116
          Top = 7
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'GAJI_POKOK'
          DataSource = dsGaji
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
          Top = 27
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_ISTRI'
          DataSource = dsGaji
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
          Top = 47
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_ANAK'
          DataSource = dsGaji
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
          Top = 67
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_JAB_STRUKTUR'
          DataSource = dsGaji
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
          Top = 87
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_JAB_FUNGSI'
          DataSource = dsGaji
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
          Top = 107
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_BERAS'
          DataSource = dsGaji
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
          Top = 127
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_UMUM'
          DataSource = dsGaji
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
          Top = 147
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'TUNJ_UMUM_TAMB'
          DataSource = dsGaji
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
        object DBEdit10: TDBEdit
          Left = 295
          Top = 7
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'POT_IWP'
          DataSource = dsGaji
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
        object DBEdit16: TDBEdit
          Left = 295
          Top = 27
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'POT_TAPERUM'
          DataSource = dsGaji
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
        object DBEdit51: TDBEdit
          Left = 295
          Top = 67
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'Potongan'
          DataSource = dsGaji
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit54: TDBEdit
          Left = 295
          Top = 107
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'PEMBULATAN'
          DataSource = dsGaji
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit53: TDBEdit
          Left = 295
          Top = 127
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'PPH'
          DataSource = dsGaji
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit56: TDBEdit
          Left = 295
          Top = 174
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'GajiBersih'
          DataSource = dsGaji
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
        object DBEdit52: TDBEdit
          Left = 116
          Top = 174
          Width = 89
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'GajiDanTunjangan'
          DataSource = dsGaji
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
        object GroupBox1: TGroupBox
          Left = 80
          Top = 204
          Width = 229
          Height = 73
          Caption = 'Gaji 13'
          TabOrder = 15
          object Label15: TLabel
            Left = 20
            Top = 24
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bulan'
            FocusControl = DBEdit30
          end
          object Label16: TLabel
            Left = 13
            Top = 44
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jumlah'
            FocusControl = DBEdit30
          end
          object DBEdit11: TDBEdit
            Left = 60
            Top = 22
            Width = 89
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = 'BulanNm'
            DataSource = dsGaji13
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
          object DBEdit12: TDBEdit
            Left = 156
            Top = 22
            Width = 61
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = 'TAHUN'
            DataSource = dsGaji13
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
          object DBEdit13: TDBEdit
            Left = 60
            Top = 42
            Width = 89
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = 'GajiBersih'
            DataSource = dsGaji13
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
        end
      end
    end
    object Panel8: TPanel
      Left = 401
      Top = 1
      Width = 542
      Height = 447
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 542
        Height = 24
        Align = alTop
        Caption = 'Daftar Hutang Pada Negara'
        TabOrder = 1
      end
      object Panel13: TPanel
        Left = 0
        Top = 292
        Width = 542
        Height = 155
        Align = alClient
        TabOrder = 0
        object Label17: TLabel
          Left = 23
          Top = 14
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tembusan :'
        end
        object DBEdit14: TDBEdit
          Left = 24
          Top = 32
          Width = 293
          Height = 19
          Ctl3D = False
          DataField = 'Tembusan1'
          DataSource = dsSKPP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 24
          Top = 52
          Width = 293
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'Tembusan2'
          DataSource = dsSKPP
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
        object DBEdit17: TDBEdit
          Left = 24
          Top = 72
          Width = 293
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'Tembusan3'
          DataSource = dsSKPP
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
        object DBEdit18: TDBEdit
          Left = 24
          Top = 92
          Width = 293
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'Tembusan4'
          DataSource = dsSKPP
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
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 24
        Width = 542
        Height = 268
        Align = alTop
        Ctl3D = False
        DataSource = dsSKPPDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Rounded MT Bold'
        TitleFont.Style = []
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
        ExOptions = [eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoTitleWordWrap, eoFilterAutoApply, eoTitleLines]
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
            FieldName = 'NoUrut'
            Title.Alignment = taCenter
            Title.Caption = 'No'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Keterangan'
            Title.Alignment = taCenter
            Width = 306
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'JmlHutang'
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Width = 106
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 32
    Width = 944
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      944
      81)
    object Label3: TLabel
      Left = 60
      Top = 16
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nomor'
    end
    object Label4: TLabel
      Left = 356
      Top = 16
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tanggal'
    end
    object Label5: TLabel
      Left = 8
      Top = 36
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Keputusan Dari'
    end
    object Label7: TLabel
      Left = 336
      Top = 36
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Jenis SKPP'
    end
    object LB1: TLabel
      Left = 334
      Top = 56
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tgl Pensiun'
    end
    object LB2: TLabel
      Left = 325
      Top = 56
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'SKPD Tujuan'
    end
    object LB3: TLabel
      Left = 275
      Top = 56
      Width = 131
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dinas / Daearh Tujuan'
    end
    object DBEdit1: TDBEdit
      Left = 108
      Top = 12
      Width = 173
      Height = 19
      Ctl3D = False
      DataField = 'SKPPNo'
      DataSource = dsSKPP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBDateEdit2: TDBDateEdit
      Left = 412
      Top = 12
      Width = 93
      Height = 19
      DataField = 'SKPPTgl'
      DataSource = dsSKPP
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
      TabOrder = 1
      YearDigits = dyFour
    end
    object DBEdit2: TDBEdit
      Left = 108
      Top = 32
      Width = 209
      Height = 19
      Ctl3D = False
      DataField = 'Keputusan'
      DataSource = dsSKPP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object LookJenis: TDBLookupComboBox
      Left = 412
      Top = 32
      Width = 161
      Height = 19
      Ctl3D = False
      DataField = 'JNS_SKPP'
      DataSource = dsSKPP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'JNS_SKPP'
      ListField = 'Uraian'
      ListSource = dsJenisSKPP
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnClick = LookJenisClick
    end
    object TglPensiun: TDBDateEdit
      Left = 412
      Top = 52
      Width = 93
      Height = 19
      DataField = 'TglPensiun'
      DataSource = dsSKPP
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
      TabOrder = 4
      YearDigits = dyFour
    end
    object LookSKPD: TDBLookupComboBox
      Left = 412
      Top = 52
      Width = 409
      Height = 19
      Ctl3D = False
      DataField = 'SKPDTujuan'
      DataSource = dsSKPP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'UnitKd'
      ListField = 'UnitKd;strip;UnitNm'
      ListFieldIndex = 2
      ListSource = sdUnit
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object dbNav: TDBNavigator
      Left = 13
      Top = 56
      Width = 250
      Height = 24
      DataSource = dsSKPP
      Anchors = [akLeft, akBottom]
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
      TabOrder = 6
    end
    object DLuarDaerah: TDBEdit
      Left = 412
      Top = 52
      Width = 409
      Height = 19
      Ctl3D = False
      DataField = 'DinasLuarDaerah'
      DataSource = dsSKPP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object qrySKPP: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qrySKPPAfterOpen
    BeforeInsert = qrySKPPBeforeInsert
    AfterInsert = qrySKPPAfterInsert
    BeforeEdit = qrySKPPBeforeInsert
    BeforePost = qrySKPPBeforePost
    AfterPost = qrySKPPAfterPost
    AfterCancel = qrySKPPAfterCancel
    AfterDelete = qrySKPPAfterDelete
    AfterScroll = qrySKPPAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from'
      'SKPP'
      ''
      'order by SKPPTgl, SKPPNo, Jns_SKPP')
    Left = 480
    Top = 216
  end
  object dsSKPP: TDataSource
    AutoEdit = False
    DataSet = qrySKPP
    Left = 512
    Top = 216
  end
  object qryGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryGajiAfterOpen
    OnCalcFields = qryGajiCalcFields
    DataSource = dsSKPP
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
        Name = 'NIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM '
      'PEGAWAI_GAJI'
      'where '
      '(tahun=:tahun'
      'and'
      'bulan=:bulan'
      'and'
      'NIP=:NIP'
      ')')
    Left = 12
    Top = 448
    object qryGajiTAHUN: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object qryGajiBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object qryGajiJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object qryGajiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qryGajiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qryGajiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object qryGajiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qryGajiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object qryGajiTGL_BUP: TDateTimeField
      FieldName = 'TGL_BUP'
      DisplayFormat = 'dd-mmmm-yyyy'
    end
    object qryGajiJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object qryGajiBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qryGajiREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object qryGajiNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object qryGajiNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object qryGajiNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object qryGajiALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object qryGajiNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object qryGajiSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object qryGajiTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object qryGajiSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object qryGajiSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object qryGajiAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object qryGajiJML_SI: TSmallintField
      FieldName = 'JML_SI'
    end
    object qryGajiJML_ANAK: TSmallintField
      FieldName = 'JML_ANAK'
    end
    object qryGajiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object qryGajiPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object qryGajiPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object qryGajiV_JAB_STRUKTUR: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object qryGajiGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object qryGajiTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object qryGajiMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object qryGajiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object qryGajiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object qryGajiTMT_FUNGSI: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
    object qryGajiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object qryGajiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object qryGajiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object qryGajiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object qryGajiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object qryGajiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object qryGajiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object qryGajiGAJI_POKOK: TFloatField
      FieldName = 'GAJI_POKOK'
    end
    object qryGajiTUNJ_ISTRI: TFloatField
      FieldName = 'TUNJ_ISTRI'
    end
    object qryGajiTUNJ_ANAK: TFloatField
      FieldName = 'TUNJ_ANAK'
    end
    object qryGajiTUNJ_BERAS: TFloatField
      FieldName = 'TUNJ_BERAS'
    end
    object qryGajiTUNJ_JAB_STRUKTUR: TFloatField
      FieldName = 'TUNJ_JAB_STRUKTUR'
    end
    object qryGajiTUNJ_JAB_FUNGSI: TFloatField
      FieldName = 'TUNJ_JAB_FUNGSI'
    end
    object qryGajiTUNJ_KERJA: TFloatField
      FieldName = 'TUNJ_KERJA'
    end
    object qryGajiTUNJ_UMUM: TFloatField
      FieldName = 'TUNJ_UMUM'
    end
    object qryGajiTUNJ_UMUM_TAMB: TFloatField
      FieldName = 'TUNJ_UMUM_TAMB'
    end
    object qryGajiTUNJ_OTSUS: TFloatField
      FieldName = 'TUNJ_OTSUS'
    end
    object qryGajiTUNJ_DT: TFloatField
      FieldName = 'TUNJ_DT'
    end
    object qryGajiTUNJ_ASKES: TFloatField
      FieldName = 'TUNJ_ASKES'
    end
    object qryGajiTUNJ_PENGHASILAN: TFloatField
      FieldName = 'TUNJ_PENGHASILAN'
    end
    object qryGajiPEMBULATAN: TFloatField
      FieldName = 'PEMBULATAN'
    end
    object qryGajiPPH: TFloatField
      FieldName = 'PPH'
    end
    object qryGajiPOT_IWP: TFloatField
      FieldName = 'POT_IWP'
    end
    object qryGajiPOT_TAPERUM: TFloatField
      FieldName = 'POT_TAPERUM'
    end
    object qryGajiPOT_SEWA_RUMAH: TFloatField
      FieldName = 'POT_SEWA_RUMAH'
    end
    object qryGajiPOT_PANGAN: TFloatField
      FieldName = 'POT_PANGAN'
    end
    object qryGajiPOT_KORPRI: TFloatField
      FieldName = 'POT_KORPRI'
    end
    object qryGajiPOT_GAJI_LEBIH: TFloatField
      FieldName = 'POT_GAJI_LEBIH'
    end
    object qryGajiPOT_HUTANG: TFloatField
      FieldName = 'POT_HUTANG'
    end
    object qryGajiBIAYA_JABATAN: TFloatField
      FieldName = 'BIAYA_JABATAN'
    end
    object qryGajiBIAYA_PENSIUN: TFloatField
      FieldName = 'BIAYA_PENSIUN'
    end
    object qryGajiPersen_Gaji: TFloatField
      FieldName = 'Persen_Gaji'
    end
    object qryGajiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object qryGajiISBAYARGJ: TBooleanField
      FieldName = 'ISBAYARGJ'
    end
    object qryGajiOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 50
    end
    object qryGajiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object qryGajiGOLPGW: TStringField
      FieldKind = fkLookup
      FieldName = 'GOLPGW'
      LookupDataSet = qryGolongan
      LookupKeyFields = 'GOLONGANKD'
      LookupResultField = 'GolNm'
      KeyFields = 'GOLONGANKD'
      Size = 25
      Lookup = True
    end
    object qryGajiGajiBersih: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object qryGajiPotongan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
    object qryGajiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object qryGajiNIP_LAMA: TStringField
      FieldName = 'NIP_LAMA'
      Size = 18
    end
    object qryGajiSKPD: TStringField
      FieldKind = fkLookup
      FieldName = 'SKPD'
      LookupDataSet = qrySKPD
      LookupKeyFields = 'UnitKd'
      LookupResultField = 'UnitNm'
      KeyFields = 'UNITKD'
      Size = 105
      Lookup = True
    end
    object qryGajiJabatan: TStringField
      FieldKind = fkCalculated
      FieldName = 'Jabatan'
      Size = 255
      Calculated = True
    end
  end
  object dsGaji: TDataSource
    AutoEdit = False
    DataSet = qryGaji
    Left = 44
    Top = 448
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 12
    Top = 484
  end
  object qryFungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblJBT_Fungsi'
      'ORDER BY JBT_FungsiKd')
    Left = 44
    Top = 484
  end
  object qryStruktur: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *,  '#39'Eselon '#39' + Jbt_StrukturKd as Eselon  FROM tblJbt_Str' +
        'uktur'
      'ORDER BY Jbt_StrukturKd')
    Left = 12
    Top = 520
  end
  object qryGolongan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *,  GolonganKd + '#39' - '#39' + Uraian as GolNm  FROM tblGolonga' +
        'n'
      'where issummary<>1'
      'ORDER BY GolonganKd desc')
    Left = 44
    Top = 520
  end
  object qryUnit: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 612
    Top = 300
  end
  object sdUnit: TDataSource
    AutoEdit = False
    DataSet = qryUnit
    Left = 644
    Top = 300
  end
  object qryJenisSKPP: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from'
      'tblJenis_SKPP'
      ''
      'order By Jns_SKPP')
    Left = 612
    Top = 328
  end
  object dsJenisSKPP: TDataSource
    AutoEdit = False
    DataSet = qryJenisSKPP
    Left = 644
    Top = 328
  end
  object qryGaji13: TADOQuery
    Tag = 13
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryGaji13AfterOpen
    OnCalcFields = qryGajiCalcFields
    DataSource = dsSKPP
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
        Name = 'NIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM '
      'PEGAWAI_GAJI_13'
      'where '
      '(tahun=:tahun'
      'and'
      'NIP=:NIP'
      ')')
    Left = 316
    Top = 446
    object StringField1: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object SmallintField1: TSmallintField
      FieldName = 'JENIS'
    end
    object StringField3: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object StringField4: TStringField
      FieldName = 'UNITKD'
    end
    object StringField5: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object StringField6: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'TGL_BUP'
      DisplayFormat = 'dd-mmmm-yyyy'
    end
    object StringField7: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object StringField10: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object StringField11: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object StringField12: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object StringField13: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object StringField14: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object StringField15: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object StringField16: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object StringField17: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object StringField18: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object SmallintField2: TSmallintField
      FieldName = 'JML_SI'
    end
    object SmallintField3: TSmallintField
      FieldName = 'JML_ANAK'
    end
    object IntegerField1: TIntegerField
      FieldName = 'PTKP'
    end
    object StringField19: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object StringField20: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object StringField21: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object StringField22: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object IntegerField2: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object StringField23: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
    object StringField24: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object IntegerField3: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object StringField25: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object StringField26: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object BlobField1: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object FloatField1: TFloatField
      FieldName = 'GAJI_POKOK'
    end
    object FloatField2: TFloatField
      FieldName = 'TUNJ_ISTRI'
    end
    object FloatField3: TFloatField
      FieldName = 'TUNJ_ANAK'
    end
    object FloatField4: TFloatField
      FieldName = 'TUNJ_BERAS'
    end
    object FloatField5: TFloatField
      FieldName = 'TUNJ_JAB_STRUKTUR'
    end
    object FloatField6: TFloatField
      FieldName = 'TUNJ_JAB_FUNGSI'
    end
    object FloatField7: TFloatField
      FieldName = 'TUNJ_KERJA'
    end
    object FloatField8: TFloatField
      FieldName = 'TUNJ_UMUM'
    end
    object FloatField9: TFloatField
      FieldName = 'TUNJ_UMUM_TAMB'
    end
    object FloatField10: TFloatField
      FieldName = 'TUNJ_OTSUS'
    end
    object FloatField11: TFloatField
      FieldName = 'TUNJ_DT'
    end
    object FloatField12: TFloatField
      FieldName = 'TUNJ_ASKES'
    end
    object FloatField13: TFloatField
      FieldName = 'TUNJ_PENGHASILAN'
    end
    object FloatField14: TFloatField
      FieldName = 'PEMBULATAN'
    end
    object FloatField15: TFloatField
      FieldName = 'PPH'
    end
    object FloatField16: TFloatField
      FieldName = 'POT_IWP'
    end
    object FloatField17: TFloatField
      FieldName = 'POT_TAPERUM'
    end
    object FloatField18: TFloatField
      FieldName = 'POT_SEWA_RUMAH'
    end
    object FloatField19: TFloatField
      FieldName = 'POT_PANGAN'
    end
    object FloatField20: TFloatField
      FieldName = 'POT_KORPRI'
    end
    object FloatField21: TFloatField
      FieldName = 'POT_GAJI_LEBIH'
    end
    object FloatField22: TFloatField
      FieldName = 'POT_HUTANG'
    end
    object FloatField23: TFloatField
      FieldName = 'BIAYA_JABATAN'
    end
    object FloatField24: TFloatField
      FieldName = 'BIAYA_PENSIUN'
    end
    object FloatField25: TFloatField
      FieldName = 'Persen_Gaji'
    end
    object SmallintField4: TSmallintField
      FieldName = 'IsTTU'
    end
    object BooleanField1: TBooleanField
      FieldName = 'ISBAYARGJ'
    end
    object StringField27: TStringField
      FieldName = 'OPERATOR'
      Size = 50
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object StringField28: TStringField
      FieldKind = fkLookup
      FieldName = 'GOLPGW'
      LookupDataSet = qryGolongan
      LookupKeyFields = 'GolNm'
      LookupResultField = 'URAIAN'
      KeyFields = 'GOLONGANKD'
      Size = 25
      Lookup = True
    end
    object FloatField26: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object FloatField27: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
    object FloatField28: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object StringField29: TStringField
      FieldName = 'NIP_LAMA'
      Size = 18
    end
    object qryGaji13BulanNm: TStringField
      FieldKind = fkLookup
      FieldName = 'BulanNm'
      LookupDataSet = qryBulan
      LookupKeyFields = 'BULAN'
      LookupResultField = 'NMLENGKAP'
      KeyFields = 'BULAN'
      Size = 15
      Lookup = True
    end
  end
  object dsGaji13: TDataSource
    AutoEdit = False
    DataSet = qryGaji13
    Left = 349
    Top = 446
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 316
    Top = 476
  end
  object qrySKPPDet: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryGajiAfterOpen
    BeforeInsert = qrySKPPDetBeforeInsert
    BeforeEdit = qrySKPPDetBeforeInsert
    DataSource = dsSKPP
    Parameters = <
      item
        Name = 'SKPPNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      'SKPPDet'
      ''
      'where'
      'SKPPNo=:SKPPNo'
      ''
      'order by SKPPNo, NoUrut')
    Left = 632
    Top = 200
  end
  object dsSKPPDet: TDataSource
    DataSet = qrySKPPDet
    Left = 664
    Top = 200
  end
  object qryCari: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    Left = 773
    Top = 278
  end
  object dsBulanGaji: TDataSource
    AutoEdit = False
    DataSet = qryBulanGaji
    Left = 469
    Top = 286
  end
  object qryBulanGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 432
    Top = 284
  end
  object pmF1: TPopupMenu
    Tag = 1
    Left = 786
    Top = 54
    object DesignEdit1: TMenuItem
      Tag = 1
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
end
