object frmRapel: TfrmRapel
  Left = 263
  Top = 36
  Width = 1092
  Height = 688
  Caption = 'Rapel Gaji'
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
  object Memo1: TMemo
    Left = 696
    Top = 120
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 161
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 528
      Top = 42
      Width = 31
      Height = 13
      Caption = 'Tahun'
    end
    object Label2: TLabel
      Left = 304
      Top = 42
      Width = 65
      Height = 13
      Caption = 'Sampai Bulan'
    end
    object Uraian: TLabel
      Left = 304
      Top = 66
      Width = 31
      Height = 13
      Caption = 'Uraian'
    end
    object Label3: TLabel
      Left = 848
      Top = 14
      Width = 40
      Height = 13
      Caption = 'Tgl Buat'
    end
    object Label4: TLabel
      Left = 832
      Top = 38
      Width = 56
      Height = 13
      Caption = 'Dibuat Oleh'
    end
    object Label69: TLabel
      Left = 528
      Top = 18
      Width = 31
      Height = 13
      Caption = 'Tahun'
    end
    object Label70: TLabel
      Left = 304
      Top = 18
      Width = 49
      Height = 13
      Caption = 'Dari Bulan'
    end
    object btnProses: TButton
      Left = 832
      Top = 118
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 10
      OnClick = btnProsesClick
    end
    object DBEdit1: TDBEdit
      Left = 568
      Top = 38
      Width = 73
      Height = 21
      DataField = 'TAHUN'
      DataSource = dsJenis
      TabOrder = 4
      OnKeyPress = DBEdit1KeyPress
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 376
      Top = 38
      Width = 145
      Height = 21
      DropDownCount = 8
      DataField = 'BULAN'
      DataSource = dsJenis
      LookupField = 'BULAN'
      LookupDisplay = 'BULANNM'
      LookupSource = dsBulan
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 376
      Top = 62
      Width = 265
      Height = 21
      DataField = 'URAIAN'
      DataSource = dsJenis
      TabOrder = 5
    end
    object DBCheckBox1: TDBCheckBox
      Left = 904
      Top = 62
      Width = 65
      Height = 17
      Caption = 'Posted'
      DataField = 'POSTED'
      DataSource = dsJenis
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit3: TDBEdit
      Left = 904
      Top = 14
      Width = 121
      Height = 21
      DataField = 'TANGGAL_BUAT'
      DataSource = dsJenis
      Enabled = False
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 904
      Top = 38
      Width = 121
      Height = 21
      DataField = 'UPDATE_BY'
      DataSource = dsJenis
      Enabled = False
      TabOrder = 8
    end
    object DBNavigator1: TDBNavigator
      Left = 304
      Top = 125
      Width = 240
      Height = 25
      DataSource = dsJenis
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object OptJenis: TDBRadioGroup
      Left = 648
      Top = 6
      Width = 169
      Height = 147
      Caption = 'Jenis'
      DataField = 'JENIS'
      DataSource = dsJenis
      Items.Strings = (
        'Gaji Pokok'
        'Tunjangan Struktural'
        'Tunjangan Fungsional'
        'Tunjangan Umum'
        'Tunjangan Beras')
      TabOrder = 6
      Values.Strings = (
        '10'
        '11'
        '12'
        '13'
        '14')
    end
    object DBEdit64: TDBEdit
      Left = 568
      Top = 14
      Width = 73
      Height = 21
      DataField = 'TM_TAHUN'
      DataSource = dsJenis
      TabOrder = 2
      OnKeyPress = DBEdit64KeyPress
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 376
      Top = 14
      Width = 145
      Height = 21
      DropDownCount = 8
      DataField = 'TM_BULAN'
      DataSource = dsJenis
      LookupField = 'BULAN'
      LookupDisplay = 'BULANNM'
      LookupSource = dsBulan
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 6
      Width = 289
      Height = 147
      DataSource = dsJenis
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'JENIS'
          Title.Caption = 'Jenis'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TM_BULAN'
          Title.Caption = 'Dari Bulan'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TM_TAHUN'
          Title.Caption = 'Tahun'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BULAN'
          Title.Caption = 'Sampai Bulan'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAHUN'
          Title.Caption = 'Tahun'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'URAIAN'
          Title.Caption = 'Uraian'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'POSTED'
          Title.Caption = 'Posted'
          Visible = True
        end>
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 193
    Width = 1076
    Height = 457
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Daftar'
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1068
        Height = 429
        Align = alClient
        DataSource = dsGajiPegawai
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TAHUN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BULAN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'JENIS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NIP'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'URUT'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITKD'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUB'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GajiDanTunjangan'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Potongan'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GajiBersih'
            Width = 102
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Form'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1068
        Height = 429
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 664
          Height = 427
          Align = alLeft
          TabOrder = 0
          object Label5: TLabel
            Left = 83
            Top = 8
            Width = 18
            Height = 13
            Caption = 'NIP'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 261
            Top = 8
            Width = 29
            Height = 13
            Caption = 'SKPD'
          end
          object Label7: TLabel
            Left = 72
            Top = 30
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nama'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 15
            Top = 52
            Width = 85
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tempat/Tgl. Lahir'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 376
            Top = 52
            Width = 64
            Height = 13
            Caption = 'Jenis Kelamin'
          end
          object Label13: TLabel
            Left = 68
            Top = 74
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'Alamat'
            FocusControl = DBEdit13
          end
          object Label15: TLabel
            Left = 26
            Top = 97
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Status Pegawai'
          end
          object Label16: TLabel
            Left = 249
            Top = 97
            Width = 23
            Height = 13
            Caption = 'TMT'
          end
          object Label63: TLabel
            Left = 46
            Top = 121
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Status Aktif'
          end
          object Label65: TLabel
            Left = 385
            Top = 121
            Width = 23
            Height = 13
            Caption = 'TMT'
          end
          object Label22: TLabel
            Left = 54
            Top = 147
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Golongan'
          end
          object Label23: TLabel
            Left = 264
            Top = 147
            Width = 23
            Height = 13
            Caption = 'TMT'
          end
          object Label24: TLabel
            Left = 392
            Top = 147
            Width = 53
            Height = 13
            Caption = 'Masa Kerja'
            FocusControl = DBEdit24
          end
          object Label31: TLabel
            Left = 489
            Top = 147
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'TMT'
          end
          object Label17: TLabel
            Left = 11
            Top = 169
            Width = 89
            Height = 13
            Alignment = taRightJustify
            Caption = 'Status Perkawinan'
          end
          object Label14: TLabel
            Left = 268
            Top = 169
            Width = 81
            Height = 13
            Caption = 'Nama Suami/Istri'
            FocusControl = DBEdit14
          end
          object Label19: TLabel
            Left = 66
            Top = 191
            Width = 33
            Height = 13
            Caption = 'Agama'
            FocusControl = DBEdit19
          end
          object Label20: TLabel
            Left = 167
            Top = 214
            Width = 111
            Height = 13
            Alignment = taRightJustify
            Caption = 'Istri/Suami Ditanggung '
            FocusControl = DBEdit20
          end
          object Label21: TLabel
            Left = 59
            Top = 215
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jml Anak '
            FocusControl = DBEdit21
          end
          object Label18: TLabel
            Left = 479
            Top = 192
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Status PTKP'
            Visible = False
          end
          object Label64: TLabel
            Left = 330
            Top = 213
            Width = 128
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jumlah PTKP Tertanggung'
            FocusControl = DBEdit59
          end
          object Label26: TLabel
            Left = 14
            Top = 237
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jabatan Struktural'
          end
          object Label27: TLabel
            Left = 322
            Top = 238
            Width = 21
            Height = 13
            Caption = 'Tmt '
          end
          object Label25: TLabel
            Left = 8
            Top = 260
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jabatan Fungsional'
          end
          object Label96: TLabel
            Left = 485
            Top = 259
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'TMT'
            FocusControl = DBEdit40
          end
          object Label41: TLabel
            Left = 5
            Top = 283
            Width = 95
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pendidikan Terakhir'
            FocusControl = DBEdit40
          end
          object Label42: TLabel
            Left = 307
            Top = 283
            Width = 37
            Height = 13
            Caption = 'Jurusan'
            FocusControl = DBEdit41
          end
          object Label35: TLabel
            Left = 49
            Top = 301
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Kode Guru'
          end
          object Label40: TLabel
            Left = 5
            Top = 329
            Width = 95
            Height = 13
            Alignment = taRightJustify
            Caption = 'Kode Drh Tertinggal'
            FocusControl = DBEdit39
          end
          object Label62: TLabel
            Left = 422
            Top = 329
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Persen Gaji'
            FocusControl = DBEdit57
          end
          object Label10: TLabel
            Left = 35
            Top = 353
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bank'
            FocusControl = DBEdit9
          end
          object Label11: TLabel
            Left = 240
            Top = 353
            Width = 46
            Height = 13
            Caption = 'Rekening'
            FocusControl = DBEdit10
          end
          object Label12: TLabel
            Left = 27
            Top = 375
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'NPWP'
            FocusControl = DBEdit11
          end
          object Label28: TLabel
            Left = 225
            Top = 375
            Width = 61
            Height = 13
            Caption = 'No. Pegawai'
            FocusControl = DBEdit12
          end
          object Label29: TLabel
            Left = 410
            Top = 375
            Width = 37
            Height = 13
            Caption = 'No. JJP'
            FocusControl = DBEdit15
          end
          object Label36: TLabel
            Left = 24
            Top = 399
            Width = 41
            Height = 13
            Caption = 'Operator'
            FocusControl = DBEdit36
          end
          object Label37: TLabel
            Left = 184
            Top = 399
            Width = 47
            Height = 13
            Caption = 'Tgl. Ubah'
            FocusControl = DBEdit37
          end
          object DBImage1: TDBImage
            Left = 200
            Top = 1504
            Width = 105
            Height = 105
            DataField = 'PIC_FOTO'
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 107
            Top = 4
            Width = 150
            Height = 21
            Color = 14803425
            DataField = 'NIP'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 296
            Top = 4
            Width = 284
            Height = 21
            DataField = 'UNITKD'
            DataSource = dsGajiPegawai
            KeyField = 'UnitKd'
            ListField = 'UnitKd;strip;UnitNm'
            ListFieldIndex = 2
            ListSource = dsSKPD
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 584
            Top = 4
            Width = 33
            Height = 21
            DataField = 'SUB'
            DataSource = dsGajiPegawai
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 107
            Top = 26
            Width = 510
            Height = 21
            DataField = 'NAMA'
            DataSource = dsGajiPegawai
            TabOrder = 4
          end
          object DBEdit8: TDBEdit
            Left = 107
            Top = 48
            Width = 166
            Height = 21
            DataField = 'TMP_LAHIR'
            DataSource = dsGajiPegawai
            TabOrder = 5
          end
          object DBDateSP2DDate: TDBDateEdit
            Left = 274
            Top = 48
            Width = 100
            Height = 22
            DataField = 'TGL_LAHIR'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 6
            YearDigits = dyFour
          end
          object DBComboBox1: TDBComboBox
            Left = 448
            Top = 48
            Width = 57
            Height = 21
            Style = csDropDownList
            DataField = 'JNS_KELAMIN'
            DataSource = dsGajiPegawai
            ItemHeight = 13
            Items.Strings = (
              'L'
              'P')
            TabOrder = 7
          end
          object DBEdit13: TDBEdit
            Left = 107
            Top = 70
            Width = 510
            Height = 21
            DataField = 'ALAMAT'
            DataSource = dsGajiPegawai
            TabOrder = 8
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 107
            Top = 92
            Width = 134
            Height = 21
            DataField = 'STS_PEGAWAIKD'
            DataSource = dsGajiPegawai
            KeyField = 'STS_PEGAWAIKD'
            ListField = 'STS_PEGAWAIKD;strip;URAIAN'
            ListFieldIndex = 2
            ListSource = dsStatus
            TabOrder = 9
          end
          object DBDateEdit2: TDBDateEdit
            Left = 275
            Top = 92
            Width = 100
            Height = 22
            DataField = 'TMT_PEGAWAI'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 10
            YearDigits = dyFour
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 107
            Top = 116
            Width = 270
            Height = 21
            DataField = 'AKTIF_KD'
            DataSource = dsGajiPegawai
            KeyField = 'Aktif_KD'
            ListField = 'Aktif_KD;strip;URAIAN'
            ListFieldIndex = 2
            ListSource = dsAktif
            TabOrder = 11
          end
          object DBDateEdit5: TDBDateEdit
            Left = 411
            Top = 116
            Width = 100
            Height = 22
            DataField = 'AKTIF_TGL'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 12
            YearDigits = dyFour
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 107
            Top = 142
            Width = 152
            Height = 21
            DataField = 'GOLONGANKD'
            DataSource = dsGajiPegawai
            KeyField = 'GOLONGANKD'
            ListField = 'GOLONGANKD;strip;URAIAN'
            ListFieldIndex = 2
            ListSource = dsGolongan
            TabOrder = 13
          end
          object DBDateEdit1: TDBDateEdit
            Left = 293
            Top = 142
            Width = 100
            Height = 22
            DataField = 'TMT_GOLONGAN'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 14
            YearDigits = dyFour
          end
          object DBEdit24: TDBEdit
            Left = 451
            Top = 143
            Width = 33
            Height = 21
            DataField = 'MASAKERJA'
            DataSource = dsGajiPegawai
            TabOrder = 15
          end
          object DBDateEdit4: TDBDateEdit
            Left = 517
            Top = 142
            Width = 100
            Height = 22
            DataField = 'TMT_GAJI_POKOK'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 16
            YearDigits = dyFour
          end
          object DBLookupComboBox8: TDBLookupComboBox
            Left = 107
            Top = 164
            Width = 150
            Height = 21
            DataField = 'STS_KWN'
            DataSource = dsGajiPegawai
            KeyField = 'STS_KAWINKD'
            ListField = 'STS_KAWINKD;strip;URAIAN'
            ListFieldIndex = 2
            ListSource = dsKawin
            TabOrder = 17
          end
          object DBEdit14: TDBEdit
            Left = 353
            Top = 165
            Width = 264
            Height = 21
            DataField = 'NAMASI'
            DataSource = dsGajiPegawai
            TabOrder = 18
          end
          object DBEdit19: TDBEdit
            Left = 107
            Top = 187
            Width = 223
            Height = 21
            DataField = 'AGAMA'
            DataSource = dsGajiPegawai
            TabOrder = 19
          end
          object DBEdit20: TDBEdit
            Left = 279
            Top = 210
            Width = 34
            Height = 21
            DataField = 'JML_SI'
            DataSource = dsGajiPegawai
            TabOrder = 21
          end
          object DBEdit21: TDBEdit
            Left = 107
            Top = 211
            Width = 34
            Height = 21
            DataField = 'JML_ANAK'
            DataSource = dsGajiPegawai
            TabOrder = 20
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 547
            Top = 186
            Width = 54
            Height = 21
            DataField = 'STS_SIPIL'
            DataSource = dsGajiPegawai
            KeyField = 'C_KODE'
            ListField = 'C_KODE;strip;V_URAIAN'
            ListFieldIndex = 2
            ListSource = dsSIPIL
            TabOrder = 22
            Visible = False
          end
          object DBEdit59: TDBEdit
            Left = 463
            Top = 210
            Width = 34
            Height = 21
            DataField = 'PTKP'
            DataSource = dsGajiPegawai
            TabOrder = 23
          end
          object DBLookupSDana: TDBLookupComboBox
            Left = 107
            Top = 234
            Width = 210
            Height = 21
            DataField = 'JBT_STRUKTURKD'
            DataSource = dsGajiPegawai
            KeyField = 'JBT_STRUKTURKD'
            ListField = 'JBT_STRUKTURKD'
            ListFieldIndex = 1
            ListSource = dsStruktur
            TabOrder = 24
          end
          object DBDateEdit3: TDBDateEdit
            Left = 347
            Top = 232
            Width = 100
            Height = 22
            DataField = 'TMT_JABATAN'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 25
            YearDigits = dyFour
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 107
            Top = 256
            Width = 373
            Height = 21
            DataField = 'JBT_FUNGSIKD'
            DataSource = dsGajiPegawai
            KeyField = 'JBT_FUNGSIKD'
            ListField = 'JBT_FUNGSIKD;strip;JBT_FUNGSI'
            ListFieldIndex = 2
            ListSource = dsFungsional
            TabOrder = 26
          end
          object DBDateEdit6: TDBDateEdit
            Left = 513
            Top = 255
            Width = 100
            Height = 22
            DataField = 'TMT_FUNGSI'
            DataSource = dsGajiPegawai
            BlanksChar = '_'
            NumGlyphs = 2
            TabOrder = 27
            YearDigits = dyFour
          end
          object DBEdit40: TDBEdit
            Left = 107
            Top = 279
            Width = 200
            Height = 21
            DataField = 'PEND_TERAKHIR'
            DataSource = dsGajiPegawai
            TabOrder = 28
          end
          object DBEdit41: TDBEdit
            Left = 347
            Top = 279
            Width = 200
            Height = 21
            DataField = 'PEND_JURUSAN'
            DataSource = dsGajiPegawai
            TabOrder = 29
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 107
            Top = 301
            Width = 356
            Height = 21
            DataField = 'GURUKD'
            DataSource = dsGajiPegawai
            KeyField = 'GURUKD'
            ListField = 'GURUKD;strip;URAIAN'
            ListFieldIndex = 2
            ListSource = dsGuru
            TabOrder = 30
          end
          object DBEdit39: TDBEdit
            Left = 106
            Top = 325
            Width = 90
            Height = 21
            DataField = 'TDTKD'
            DataSource = dsGajiPegawai
            TabOrder = 31
          end
          object DBEdit57: TDBEdit
            Left = 480
            Top = 325
            Width = 90
            Height = 21
            DataField = 'Persen_Gaji'
            DataSource = dsGajiPegawai
            TabOrder = 32
          end
          object DBEdit9: TDBEdit
            Left = 67
            Top = 349
            Width = 153
            Height = 21
            DataField = 'BANK'
            DataSource = dsGajiPegawai
            TabOrder = 33
          end
          object DBEdit10: TDBEdit
            Left = 289
            Top = 349
            Width = 281
            Height = 21
            DataField = 'REKENING'
            DataSource = dsGajiPegawai
            TabOrder = 34
          end
          object DBEdit11: TDBEdit
            Left = 67
            Top = 371
            Width = 153
            Height = 21
            DataField = 'NPWP'
            DataSource = dsGajiPegawai
            TabOrder = 35
          end
          object DBEdit12: TDBEdit
            Left = 289
            Top = 371
            Width = 120
            Height = 21
            DataField = 'NO_PEGAWAI'
            DataSource = dsGajiPegawai
            TabOrder = 36
          end
          object DBEdit15: TDBEdit
            Left = 450
            Top = 371
            Width = 120
            Height = 21
            DataField = 'NOJJP'
            DataSource = dsGajiPegawai
            TabOrder = 37
          end
          object DBEdit36: TDBEdit
            Left = 72
            Top = 391
            Width = 104
            Height = 21
            Color = 14803425
            DataField = 'OPERATOR'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 38
          end
          object DBEdit37: TDBEdit
            Left = 240
            Top = 391
            Width = 104
            Height = 21
            Color = 14803425
            DataField = 'TGL_UBAH'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 39
          end
        end
        object pnlGaji: TPanel
          Left = 665
          Top = 1
          Width = 402
          Height = 427
          Align = alClient
          TabOrder = 1
          object Label30: TLabel
            Left = 39
            Top = 7
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gaji Pokok'
            FocusControl = DBEdit30
          end
          object Label32: TLabel
            Left = 48
            Top = 29
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Istri'
            FocusControl = DBEdit32
          end
          object Label33: TLabel
            Left = 39
            Top = 51
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Anak'
            FocusControl = DBEdit33
          end
          object Label34: TLabel
            Left = 37
            Top = 117
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Beras'
            FocusControl = DBEdit34
          end
          object Label39: TLabel
            Left = 39
            Top = 249
            Width = 51
            Height = 13
            Caption = 'Tunj. Kerja'
            FocusControl = DBEdit38
          end
          object Label38: TLabel
            Left = 19
            Top = 73
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Struktural'
            FocusControl = DBEdit33
          end
          object Label43: TLabel
            Left = 13
            Top = 95
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Fungsional'
            FocusControl = DBEdit33
          end
          object Label44: TLabel
            Left = 34
            Top = 139
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunj. Umum'
            FocusControl = DBEdit33
          end
          object Label45: TLabel
            Left = 2
            Top = 161
            Width = 90
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tamb. Tunj. Umum'
            FocusControl = DBEdit43
          end
          object Label46: TLabel
            Left = 11
            Top = 183
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunjangan Otsus'
            FocusControl = DBEdit44
          end
          object Label47: TLabel
            Left = 23
            Top = 205
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunjangan DT'
            FocusControl = DBEdit44
          end
          object Label48: TLabel
            Left = 9
            Top = 227
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tunjangan Askes'
            FocusControl = DBEdit44
          end
          object Label49: TLabel
            Left = 71
            Top = 271
            Width = 21
            Height = 13
            Caption = 'TPP'
            FocusControl = DBEdit47
          end
          object Label50: TLabel
            Left = 252
            Top = 7
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'IWP'
            FocusControl = DBEdit30
          end
          object Label51: TLabel
            Left = 234
            Top = 29
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Taperum'
            FocusControl = DBEdit30
          end
          object Label52: TLabel
            Left = 212
            Top = 51
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sewa Rumah'
            FocusControl = DBEdit30
          end
          object Label53: TLabel
            Left = 190
            Top = 73
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Potongan Pangan'
            FocusControl = DBEdit30
          end
          object Label54: TLabel
            Left = 200
            Top = 95
            Width = 76
            Height = 13
            Alignment = taRightJustify
            Caption = 'Potongan Korpri'
            FocusControl = DBEdit30
          end
          object Label55: TLabel
            Left = 208
            Top = 117
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Kelebihan Gaji'
            FocusControl = DBEdit30
          end
          object Label56: TLabel
            Left = 212
            Top = 139
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hutang Lebih'
            FocusControl = DBEdit30
          end
          object Label57: TLabel
            Left = 194
            Top = 161
            Width = 82
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jumlah Potongan'
            FocusControl = DBEdit30
          end
          object Label58: TLabel
            Left = 6
            Top = 305
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'Jml. Gaji dan Tunj.'
            FocusControl = DBEdit30
          end
          object Label59: TLabel
            Left = 250
            Top = 271
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'PPH'
            FocusControl = DBEdit30
          end
          object Label60: TLabel
            Left = 218
            Top = 249
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pembulatan'
            FocusControl = DBEdit30
          end
          object Label61: TLabel
            Left = 224
            Top = 305
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gaji Bersih'
            FocusControl = DBEdit30
          end
          object Label66: TLabel
            Left = 207
            Top = 205
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Biaya Jabatan'
            FocusControl = DBEdit30
          end
          object Label67: TLabel
            Left = 206
            Top = 227
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Biaya Pensiun'
            FocusControl = DBEdit30
          end
          object DBEdit28: TDBEdit
            Left = 96
            Top = 91
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_JAB_FUNGSI'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit29: TDBEdit
            Left = 96
            Top = 69
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_JAB_STRUKTUR'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit30: TDBEdit
            Left = 96
            Top = 3
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'GAJI_POKOK'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit32: TDBEdit
            Left = 96
            Top = 25
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_ISTRI'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit33: TDBEdit
            Left = 96
            Top = 47
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_ANAK'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit34: TDBEdit
            Left = 96
            Top = 113
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_BERAS'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit38: TDBEdit
            Left = 96
            Top = 245
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_KERJA'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit42: TDBEdit
            Left = 96
            Top = 135
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_UMUM'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit43: TDBEdit
            Left = 96
            Top = 157
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_UMUM_TAMB'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit44: TDBEdit
            Left = 96
            Top = 179
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_OTSUS'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit45: TDBEdit
            Left = 96
            Top = 201
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_DT'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit46: TDBEdit
            Left = 96
            Top = 223
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_ASKES'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit47: TDBEdit
            Left = 96
            Top = 267
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'TUNJ_PENGHASILAN'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 12
          end
          object DBEdit31: TDBEdit
            Left = 279
            Top = 3
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_IWP'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 13
          end
          object DBEdit48: TDBEdit
            Left = 279
            Top = 25
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_TAPERUM'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 14
          end
          object DBEdit49: TDBEdit
            Left = 279
            Top = 47
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_SEWA_RUMAH'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 15
          end
          object DBEdit50: TDBEdit
            Left = 279
            Top = 69
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_PANGAN'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 16
          end
          object DBEdit51: TDBEdit
            Left = 279
            Top = 91
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_KORPRI'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 17
          end
          object DBEdit52: TDBEdit
            Left = 279
            Top = 113
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_GAJI_LEBIH'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 18
          end
          object DBEdit53: TDBEdit
            Left = 279
            Top = 135
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'POT_HUTANG'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 19
          end
          object DBEdit54: TDBEdit
            Left = 279
            Top = 157
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'Potongan'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 20
          end
          object DBEdit55: TDBEdit
            Left = 96
            Top = 301
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'GajiDanTunjangan'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 21
          end
          object DBEdit56: TDBEdit
            Left = 279
            Top = 267
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'PPH'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 22
          end
          object DBEdit60: TDBEdit
            Left = 279
            Top = 245
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'PEMBULATAN'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 23
          end
          object DBEdit61: TDBEdit
            Left = 279
            Top = 301
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'GajiBersih'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 24
          end
          object DBEdit62: TDBEdit
            Left = 279
            Top = 201
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'BIAYA_JABATAN'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 25
          end
          object DBEdit63: TDBEdit
            Left = 279
            Top = 223
            Width = 89
            Height = 21
            Color = 14803425
            DataField = 'BIAYA_PENSIUN'
            DataSource = dsGajiPegawai
            ReadOnly = True
            TabOrder = 26
          end
          object DBNavigator2: TDBNavigator
            Left = 10
            Top = 334
            Width = 230
            Height = 25
            DataSource = dsGajiPegawai
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 161
    Width = 1076
    Height = 32
    Align = alTop
    TabOrder = 3
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 392
      Height = 30
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label68: TLabel
        Left = 16
        Top = 9
        Width = 44
        Height = 13
        Caption = 'Cari Data'
      end
      object edtCari: TEdit
        Left = 71
        Top = 5
        Width = 222
        Height = 21
        TabOrder = 0
        OnKeyPress = edtCariKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 300
        Top = 3
        Width = 74
        Height = 25
        Caption = 'Cari'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
    object pProses: TPanel
      Left = 393
      Top = 1
      Width = 682
      Height = 30
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        682
        30)
      object LBProcess: TLabel
        Left = 17
        Top = 8
        Width = 105
        Height = 16
        Caption = 'Processing: 0 of 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ProgressBar1: TProgressBar
        Left = 256
        Top = 8
        Width = 420
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
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
      'WHERE (JENIS>=10) AND (JENIS<15)'
      'AND (TAHUN='#39'THN'#39' OR TM_TAHUN='#39'THN'#39')'
      'ORDER BY TAHUN DESC,BULAN DESC,JENIS ASC')
    Left = 392
    Top = 88
  end
  object dsJenis: TDataSource
    AutoEdit = False
    DataSet = QryJENIS
    Left = 424
    Top = 88
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 320
    Top = 88
  end
  object dsBulan: TDataSource
    DataSet = qryBulan
    Left = 352
    Top = 88
  end
  object qryJenisGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJenisGaji'
      'ORDER BY Jenis_KD')
    Left = 592
    Top = 120
  end
  object dsGajiPegawai: TDataSource
    AutoEdit = False
    DataSet = qrygajipegawai
    Left = 592
    Top = 176
  end
  object qryStruktur: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblJbt_Struktur'
      'ORDER BY Jbt_StrukturKd')
    Left = 672
    Top = 176
  end
  object dsStruktur: TDataSource
    AutoEdit = False
    DataSet = qryStruktur
    Left = 712
    Top = 176
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 760
    Top = 176
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 792
    Top = 176
  end
  object qryStatus: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblSTS_PEGAWAI'
      'ORDER BY STS_PEGAWAIKD')
    Left = 832
    Top = 176
  end
  object dsStatus: TDataSource
    AutoEdit = False
    DataSet = qryStatus
    Left = 864
    Top = 176
  end
  object qryGuru: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblGuru'
      'ORDER BY GuruKd')
    Left = 904
    Top = 176
  end
  object dsGuru: TDataSource
    AutoEdit = False
    DataSet = qryGuru
    Left = 936
    Top = 176
  end
  object qryKawin: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_KAWIN'
      'order by STS_KAWINKD')
    Left = 968
    Top = 176
  end
  object dsKawin: TDataSource
    AutoEdit = False
    DataSet = qryKawin
    Left = 1000
    Top = 176
  end
  object qryFungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblJBT_Fungsi'
      'ORDER BY JBT_FungsiKd')
    Left = 712
    Top = 584
  end
  object dsFungsional: TDataSource
    AutoEdit = False
    DataSet = qryFungsional
    Left = 744
    Top = 584
  end
  object qryParam: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 *, '#39' -'#39' as strip   FROM tblParameter'
      'ORDER BY Param_ID')
    Left = 784
    Top = 584
    object qryParamPARAM_ID: TSmallintField
      FieldName = 'PARAM_ID'
      ReadOnly = True
    end
    object qryParamTunj_Anak: TFloatField
      FieldName = 'Tunj_Anak'
    end
    object qryParamTunj_Istri: TFloatField
      FieldName = 'Tunj_Istri'
    end
    object qryParamTunj_Beras_Rupiah: TFloatField
      FieldName = 'Tunj_Beras_Rupiah'
    end
    object qryParamTunj_Beras_Kg: TFloatField
      FieldName = 'Tunj_Beras_Kg'
    end
    object qryParamTunj_Pajak: TFloatField
      FieldName = 'Tunj_Pajak'
    end
    object qryParamTunj_Pajak_1: TFloatField
      FieldName = 'Tunj_Pajak_1'
    end
    object qryParamTunj_Pajak_2: TFloatField
      FieldName = 'Tunj_Pajak_2'
    end
    object qryParamTunj_Pajak_3: TFloatField
      FieldName = 'Tunj_Pajak_3'
    end
    object qryParamTunj_Pajak_4: TFloatField
      FieldName = 'Tunj_Pajak_4'
    end
    object qryParamTunj_Pajak_1_Max: TFloatField
      FieldName = 'Tunj_Pajak_1_Max'
    end
    object qryParamTunj_Pajak_2_Max: TFloatField
      FieldName = 'Tunj_Pajak_2_Max'
    end
    object qryParamTunj_Pajak_3_Max: TFloatField
      FieldName = 'Tunj_Pajak_3_Max'
    end
    object qryParamTunj_Pajak_4_Max: TFloatField
      FieldName = 'Tunj_Pajak_4_Max'
    end
    object qryParamTunj_Biaya_Jabatan: TFloatField
      FieldName = 'Tunj_Biaya_Jabatan'
    end
    object qryParamTunj_Maks_Biaya_Jabatan: TBCDField
      FieldName = 'Tunj_Maks_Biaya_Jabatan'
      Precision = 19
    end
    object qryParamMaxStaff: TIntegerField
      FieldName = 'MaxStaff'
    end
    object qryParamMaxGuru: TIntegerField
      FieldName = 'MaxGuru'
    end
    object qryParamOperator: TStringField
      FieldName = 'Operator'
    end
    object qryParamTgl_Ubah: TDateTimeField
      FieldName = 'Tgl_Ubah'
    end
    object qryParamIuran_Pemda: TFloatField
      FieldName = 'Iuran_Pemda'
    end
    object qryParamPTKP_Pribadi: TFloatField
      FieldName = 'PTKP_Pribadi'
    end
    object qryParamPTKP_Anak: TFloatField
      FieldName = 'PTKP_Anak'
    end
    object qryParamPTKP_SI: TFloatField
      FieldName = 'PTKP_SI'
    end
    object qryParamTunj_Anak_Max: TIntegerField
      FieldName = 'Tunj_Anak_Max'
    end
    object qryParamPTKP_Anak_Max: TIntegerField
      FieldName = 'PTKP_Anak_Max'
    end
    object qryParamIuran_Pensiun: TFloatField
      FieldName = 'Iuran_Pensiun'
    end
    object qryParamAskes: TFloatField
      FieldName = 'Askes'
    end
    object qryParamTunj_Hari_Tua: TFloatField
      FieldName = 'Tunj_Hari_Tua'
    end
    object qryParamIsWKSingle: TBooleanField
      FieldName = 'IsWKSingle'
    end
  end
  object dsParam: TDataSource
    AutoEdit = False
    DataSet = qryParam
    Left = 816
    Top = 584
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 856
    Top = 584
  end
  object dsAktif: TDataSource
    AutoEdit = False
    DataSet = qryAktif
    Left = 888
    Top = 584
  end
  object qrySIPIL: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_SIPIL'
      'order by C_KODE')
    Left = 928
    Top = 584
  end
  object dsSIPIL: TDataSource
    AutoEdit = False
    DataSet = qrySIPIL
    Left = 960
    Top = 584
  end
  object qryGolongan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip   FROM tblGolongan'
      'ORDER BY GolonganKd')
    Left = 1000
    Top = 584
  end
  object dsGolongan: TDataSource
    AutoEdit = False
    DataSet = qryGolongan
    Left = 1032
    Top = 584
  end
  object qrygajipegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qrygajipegawaiAfterOpen
    AfterInsert = qrygajipegawaiAfterInsert
    BeforePost = qrygajipegawaiBeforePost
    AfterPost = qrygajipegawaiAfterPost
    OnCalcFields = qrygajipegawaiCalcFields
    DataSource = dsJenis
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
        Name = 'Jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'TM_Tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'TM_Bulan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM pegawai_gaji_rapel'
      'WHERE (Tahun=:Tahun) AND (Bulan=:Bulan) AND (Jenis=:Jenis)'
      'AND (TM_Tahun=:TM_Tahun) AND (TM_Bulan=:TM_Bulan)'
      'AND (UNITKD='#39'<unitkd>'#39')'
      'ORDER BY tahun,bulan,jenis,nip,urut')
    Left = 564
    Top = 176
    object qrygajipegawaiTAHUN: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object qrygajipegawaiBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object qrygajipegawaiJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object qrygajipegawaiURUT: TSmallintField
      FieldName = 'URUT'
    end
    object qrygajipegawaiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qrygajipegawaiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qrygajipegawaiSUB: TSmallintField
      FieldName = 'SUB'
    end
    object qrygajipegawaiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 40
    end
    object qrygajipegawaiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qrygajipegawaiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object qrygajipegawaiJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object qrygajipegawaiBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qrygajipegawaiREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object qrygajipegawaiNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object qrygajipegawaiNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object qrygajipegawaiNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object qrygajipegawaiALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object qrygajipegawaiNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object qrygajipegawaiSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object qrygajipegawaiTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object qrygajipegawaiSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object qrygajipegawaiSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object qrygajipegawaiAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object qrygajipegawaiJML_SI: TIntegerField
      FieldName = 'JML_SI'
    end
    object qrygajipegawaiJML_ANAK: TIntegerField
      FieldName = 'JML_ANAK'
    end
    object qrygajipegawaiGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object qrygajipegawaiTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object qrygajipegawaiMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object qrygajipegawaiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object qrygajipegawaiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object qrygajipegawaiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object qrygajipegawaiTUNJ_JAB_FUNGSI: TBCDField
      FieldName = 'TUNJ_JAB_FUNGSI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_JAB_STRUKTUR: TBCDField
      FieldName = 'TUNJ_JAB_STRUKTUR'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiGAJI_POKOK: TIntegerField
      FieldName = 'GAJI_POKOK'
    end
    object qrygajipegawaiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object qrygajipegawaiTUNJ_ISTRI: TBCDField
      FieldName = 'TUNJ_ISTRI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_ANAK: TBCDField
      FieldName = 'TUNJ_ANAK'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_BERAS: TBCDField
      FieldName = 'TUNJ_BERAS'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object qrygajipegawaiOPERATOR: TStringField
      FieldName = 'OPERATOR'
    end
    object qrygajipegawaiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object qrygajipegawaiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object qrygajipegawaiTUNJ_KERJA: TBCDField
      FieldName = 'TUNJ_KERJA'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object qrygajipegawaiPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object qrygajipegawaiPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object qrygajipegawaiV_JAB_STRUKTUR: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object qrygajipegawaiPOT_IWP: TBCDField
      FieldName = 'POT_IWP'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_TAPERUM: TBCDField
      FieldName = 'POT_TAPERUM'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_SEWA_RUMAH: TBCDField
      FieldName = 'POT_SEWA_RUMAH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_PANGAN: TBCDField
      FieldName = 'POT_PANGAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_KORPRI: TBCDField
      FieldName = 'POT_KORPRI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_GAJI_LEBIH: TBCDField
      FieldName = 'POT_GAJI_LEBIH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_HUTANG: TBCDField
      FieldName = 'POT_HUTANG'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPEMBULATAN: TBCDField
      FieldName = 'PEMBULATAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_UMUM: TBCDField
      FieldName = 'TUNJ_UMUM'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_UMUM_TAMB: TBCDField
      FieldName = 'TUNJ_UMUM_TAMB'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_OTSUS: TBCDField
      FieldName = 'TUNJ_OTSUS'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_DT: TBCDField
      FieldName = 'TUNJ_DT'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_ASKES: TBCDField
      FieldName = 'TUNJ_ASKES'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_PENGHASILAN: TBCDField
      FieldName = 'TUNJ_PENGHASILAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiBIAYA_JABATAN: TBCDField
      FieldName = 'BIAYA_JABATAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiBIAYA_PENSIUN: TBCDField
      FieldName = 'BIAYA_PENSIUN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPersen_Gaji: TBCDField
      FieldName = 'Persen_Gaji'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object qrygajipegawaiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object qrygajipegawaiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object qrygajipegawaiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object qrygajipegawaiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object qrygajipegawaiGajiBersih: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object qrygajipegawaiPotongan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
    object qrygajipegawaiTM_BULAN: TStringField
      FieldName = 'TM_BULAN'
      Size = 2
    end
    object qrygajipegawaiTM_TAHUN: TStringField
      FieldName = 'TM_TAHUN'
      Size = 4
    end
    object qrygajipegawaiGolonganKd_Lama: TStringField
      FieldName = 'GolonganKd_Lama'
      Size = 5
    end
    object qrygajipegawaiMasaKerja_Lama: TIntegerField
      FieldName = 'MasaKerja_Lama'
    end
    object qrygajipegawaiJbt_StrukturKd_Lama: TStringField
      FieldName = 'Jbt_StrukturKd_Lama'
      Size = 5
    end
    object qrygajipegawaiJbt_FungsiKd_Lama: TStringField
      FieldName = 'Jbt_FungsiKd_Lama'
      Size = 5
    end
    object qrygajipegawaiGapok_Lama: TIntegerField
      FieldName = 'Gapok_Lama'
    end
    object qrygajipegawaiTGL_RAPEL: TDateTimeField
      FieldName = 'TGL_RAPEL'
    end
    object qrygajipegawaiTGL_TMT: TDateTimeField
      FieldName = 'TGL_TMT'
    end
    object qrygajipegawaiTMT_FUNGSI: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
  end
  object qryGajiSTD: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    Left = 573
    Top = 426
  end
end
