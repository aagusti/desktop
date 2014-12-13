object frmSKPP: TfrmSKPP
  Left = 169
  Top = 15
  Width = 1026
  Height = 681
  Caption = 'SKPP'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 643
    Align = alClient
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1008
      Height = 184
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 38
        Top = 16
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nomor SKPP'
      end
      object Label2: TLabel
        Left = 82
        Top = 40
        Width = 18
        Height = 13
        Alignment = taRightJustify
        Caption = 'NIP'
      end
      object Label3: TLabel
        Left = 23
        Top = 64
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nomor SKKBKN'
      end
      object Label4: TLabel
        Left = 391
        Top = 64
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tgl SKKBKN'
      end
      object Label5: TLabel
        Left = 525
        Top = 40
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'TMT Aktif'
      end
      object Label6: TLabel
        Left = 43
        Top = 88
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nomor SPM'
      end
      object Label7: TLabel
        Left = 391
        Top = 88
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'SPM Tgl'
      end
      object Label8: TLabel
        Left = 37
        Top = 112
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bulan Pindah'
      end
      object Label9: TLabel
        Left = 265
        Top = 112
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tahun Pindah'
      end
      object Label10: TLabel
        Left = 58
        Top = 136
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Persekot'
      end
      object DBText1: TDBText
        Left = 272
        Top = 136
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'PERSEKOT_BILANG'
        DataSource = dsSKPP
      end
      object Label11: TLabel
        Left = 286
        Top = 40
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status Aktif'
      end
      object Label75: TLabel
        Left = 409
        Top = 16
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tanggal'
      end
      object Label76: TLabel
        Left = 482
        Top = 112
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dipindah Ke'
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 11
        Width = 265
        Height = 21
        DataField = 'SKPP_NO'
        DataSource = dsSKPP
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 35
        Width = 121
        Height = 21
        DataField = 'NIP'
        DataSource = dsSKPP
        TabOrder = 2
        OnChange = DBEdit2Change
      end
      object btnBrowse: TButton
        Left = 240
        Top = 34
        Width = 25
        Height = 22
        Caption = '...'
        TabOrder = 3
        OnClick = btnBrowseClick
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 59
        Width = 265
        Height = 21
        DataField = 'SKKBKN_NO'
        DataSource = dsSKPP
        TabOrder = 5
      end
      object DBDateEdit2: TDBDateEdit
        Left = 461
        Top = 58
        Width = 100
        Height = 22
        DataField = 'SKKBKN_TGL'
        DataSource = dsSKPP
        BlanksChar = '_'
        NumGlyphs = 2
        TabOrder = 6
        YearDigits = dyFour
      end
      object DBDateEdit1: TDBDateEdit
        Left = 584
        Top = 34
        Width = 100
        Height = 22
        DataField = 'TMT_AKTIF'
        DataSource = dsSKPP
        BlanksChar = '_'
        NumGlyphs = 2
        TabOrder = 7
        YearDigits = dyFour
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 83
        Width = 265
        Height = 21
        DataField = 'SPM_NO'
        DataSource = dsSKPP
        TabOrder = 8
      end
      object DBDateEdit3: TDBDateEdit
        Left = 445
        Top = 82
        Width = 100
        Height = 22
        DataField = 'SPM_TGL'
        DataSource = dsSKPP
        BlanksChar = '_'
        NumGlyphs = 2
        TabOrder = 9
        YearDigits = dyFour
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 112
        Top = 108
        Width = 145
        Height = 21
        DropDownCount = 8
        DataField = 'BULAN_PINDAH'
        DataSource = dsSKPP
        LookupField = 'BULAN'
        LookupDisplay = 'BULANNM'
        LookupSource = dsBulan
        TabOrder = 10
        OnChange = RxDBLookupCombo1Change
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 131
        Width = 145
        Height = 21
        DataField = 'PERSEKOT_RP'
        DataSource = dsSKPP
        TabOrder = 13
        OnChange = DBEdit6Change
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 152
        Width = 240
        Height = 25
        DataSource = dsSKPP
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 352
        Top = 35
        Width = 145
        Height = 21
        DropDownCount = 8
        DataField = 'AKTIF_KD'
        DataSource = dsSKPP
        LookupField = 'Aktif_KD'
        LookupDisplay = 'Uraian'
        LookupSource = dsAktif
        TabOrder = 4
      end
      object rxCoTahun: TRxDBLookupCombo
        Left = 352
        Top = 108
        Width = 97
        Height = 21
        DropDownCount = 8
        DataField = 'TAHUN_PINDAH'
        DataSource = dsSKPP
        LookupField = 'tahun'
        LookupDisplay = 'tahun'
        LookupSource = dsTahun
        TabOrder = 11
      end
      object DBDateEdit4: TDBDateEdit
        Left = 461
        Top = 10
        Width = 100
        Height = 22
        DataField = 'SKPP_TGL'
        DataSource = dsSKPP
        BlanksChar = '_'
        NumGlyphs = 2
        TabOrder = 1
        YearDigits = dyFour
      end
      object DBEdit77: TDBEdit
        Left = 552
        Top = 107
        Width = 289
        Height = 21
        DataField = 'PINDAH_KE'
        DataSource = dsSKPP
        TabOrder = 12
        OnChange = DBEdit6Change
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 185
      Width = 1008
      Height = 457
      Align = alClient
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 1006
        Height = 455
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Detail Pegawai'
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 625
            Height = 427
            Align = alLeft
            TabOrder = 0
            object Label12: TLabel
              Left = 67
              Top = 29
              Width = 29
              Height = 13
              Caption = 'SKPD'
              FocusControl = DBEdit8
            end
            object Label13: TLabel
              Left = 72
              Top = 6
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nama'
              FocusControl = DBEdit10
            end
            object Label14: TLabel
              Left = 15
              Top = 52
              Width = 85
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tempat/Tgl. Lahir'
              FocusControl = DBEdit11
            end
            object Label15: TLabel
              Left = 392
              Top = 52
              Width = 64
              Height = 13
              Caption = 'Jenis Kelamin'
              FocusControl = DBEdit12
            end
            object Label16: TLabel
              Left = 35
              Top = 353
              Width = 25
              Height = 13
              Alignment = taRightJustify
              Caption = 'Bank'
              FocusControl = DBEdit13
            end
            object Label17: TLabel
              Left = 240
              Top = 353
              Width = 46
              Height = 13
              Caption = 'Rekening'
              FocusControl = DBEdit14
            end
            object Label18: TLabel
              Left = 27
              Top = 375
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = 'NPWP'
              FocusControl = DBEdit15
            end
            object Label19: TLabel
              Left = 225
              Top = 375
              Width = 61
              Height = 13
              Caption = 'No. Pegawai'
              FocusControl = DBEdit16
            end
            object Label20: TLabel
              Left = 410
              Top = 375
              Width = 37
              Height = 13
              Caption = 'No. JJP'
              FocusControl = DBEdit17
            end
            object Label21: TLabel
              Left = 68
              Top = 74
              Width = 32
              Height = 13
              Alignment = taRightJustify
              Caption = 'Alamat'
              FocusControl = DBEdit18
            end
            object Label22: TLabel
              Left = 147
              Top = 193
              Width = 81
              Height = 13
              Caption = 'Nama Suami/Istri'
              FocusControl = DBEdit19
            end
            object Label23: TLabel
              Left = 26
              Top = 97
              Width = 74
              Height = 13
              Alignment = taRightJustify
              Caption = 'Status Pegawai'
              FocusControl = DBEdit20
            end
            object Label24: TLabel
              Left = 411
              Top = 97
              Width = 23
              Height = 13
              Caption = 'TMT'
            end
            object Label25: TLabel
              Left = 11
              Top = 193
              Width = 89
              Height = 13
              Alignment = taRightJustify
              Caption = 'Status Perkawinan'
              FocusControl = DBEdit21
            end
            object Label26: TLabel
              Left = 48
              Top = 216
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Status Sipil'
              FocusControl = DBEdit22
            end
            object Label27: TLabel
              Left = 200
              Top = 215
              Width = 33
              Height = 13
              Caption = 'Agama'
              FocusControl = DBEdit23
            end
            object Label28: TLabel
              Left = 468
              Top = 193
              Width = 111
              Height = 13
              Alignment = taRightJustify
              Caption = 'Istri/Suami Ditanggung '
              FocusControl = DBEdit24
            end
            object Label29: TLabel
              Left = 532
              Top = 215
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Jml Anak '
              FocusControl = DBEdit25
            end
            object Label30: TLabel
              Left = 54
              Top = 144
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Golongan'
              FocusControl = DBEdit26
            end
            object Label31: TLabel
              Left = 410
              Top = 147
              Width = 23
              Height = 13
              Caption = 'TMT'
            end
            object Label32: TLabel
              Left = 48
              Top = 171
              Width = 53
              Height = 13
              Caption = 'Masa Kerja'
              FocusControl = DBEdit27
            end
            object Label33: TLabel
              Left = 8
              Top = 260
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Caption = 'Jabatan Fungsional'
              FocusControl = DBEdit28
            end
            object Label34: TLabel
              Left = 14
              Top = 237
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Jabatan Struktural'
              FocusControl = DBEdit29
            end
            object Label35: TLabel
              Left = 188
              Top = 238
              Width = 21
              Height = 13
              Caption = 'Tmt '
            end
            object Label36: TLabel
              Left = 147
              Top = 171
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tmt Gaji Pokok'
            end
            object Label37: TLabel
              Left = 49
              Top = 301
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Kode Guru'
              FocusControl = DBEdit35
            end
            object Label38: TLabel
              Left = 24
              Top = 401
              Width = 41
              Height = 13
              Caption = 'Operator'
              FocusControl = DBEdit36
            end
            object Label39: TLabel
              Left = 184
              Top = 408
              Width = 47
              Height = 13
              Caption = 'Tgl. Ubah'
              FocusControl = DBEdit37
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
              Left = 304
              Top = 283
              Width = 37
              Height = 13
              Caption = 'Jurusan'
              FocusControl = DBEdit41
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
            object Label63: TLabel
              Left = 46
              Top = 121
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Status Aktif'
              FocusControl = DBEdit58
            end
            object Label64: TLabel
              Left = 486
              Top = 239
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Caption = 'PTKP Tanggungan'
              FocusControl = DBEdit59
            end
            object Label65: TLabel
              Left = 411
              Top = 121
              Width = 23
              Height = 13
              Caption = 'TMT'
            end
            object Label74: TLabel
              Left = 517
              Top = 260
              Width = 23
              Height = 13
              Alignment = taRightJustify
              Caption = 'TMT'
              FocusControl = DBEdit5
            end
            object DBEdit8: TDBEdit
              Left = 107
              Top = 25
              Width = 49
              Height = 21
              Color = 14803425
              DataField = 'UNITKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit9: TDBEdit
              Left = 579
              Top = 25
              Width = 33
              Height = 21
              Color = 14803425
              DataField = 'SUB'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 107
              Top = 2
              Width = 510
              Height = 21
              Color = 14803425
              DataField = 'NAMA'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit11: TDBEdit
              Left = 107
              Top = 48
              Width = 166
              Height = 21
              Color = 14803425
              DataField = 'TMP_LAHIR'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit12: TDBEdit
              Left = 462
              Top = 48
              Width = 17
              Height = 21
              Color = 14803425
              DataField = 'JNS_KELAMIN'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit13: TDBEdit
              Left = 67
              Top = 349
              Width = 153
              Height = 21
              Color = 14803425
              DataField = 'BANK'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit14: TDBEdit
              Left = 289
              Top = 349
              Width = 281
              Height = 21
              Color = 14803425
              DataField = 'REKENING'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit15: TDBEdit
              Left = 67
              Top = 371
              Width = 153
              Height = 21
              Color = 14803425
              DataField = 'NPWP'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit16: TDBEdit
              Left = 289
              Top = 371
              Width = 120
              Height = 21
              Color = 14803425
              DataField = 'NO_PEGAWAI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit17: TDBEdit
              Left = 450
              Top = 371
              Width = 120
              Height = 21
              Color = 14803425
              DataField = 'NOJJP'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit18: TDBEdit
              Left = 107
              Top = 70
              Width = 510
              Height = 21
              Color = 14803425
              DataField = 'ALAMAT'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdit19: TDBEdit
              Left = 233
              Top = 189
              Width = 216
              Height = 21
              Color = 14803425
              DataField = 'NAMASI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdit20: TDBEdit
              Left = 107
              Top = 93
              Width = 17
              Height = 21
              Color = 14803425
              DataField = 'STS_PEGAWAIKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 12
            end
            object DBEdit21: TDBEdit
              Left = 107
              Top = 189
              Width = 17
              Height = 21
              Color = 14803425
              DataField = 'STS_KWN'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit22: TDBEdit
              Left = 107
              Top = 212
              Width = 82
              Height = 21
              Color = 14803425
              DataField = 'STS_SIPIL'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 14
            end
            object DBEdit23: TDBEdit
              Left = 238
              Top = 211
              Width = 199
              Height = 21
              Color = 14803425
              DataField = 'AGAMA'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 15
            end
            object DBEdit24: TDBEdit
              Left = 583
              Top = 189
              Width = 34
              Height = 21
              Color = 14803425
              DataField = 'JML_SI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 16
            end
            object DBEdit25: TDBEdit
              Left = 583
              Top = 211
              Width = 34
              Height = 21
              Color = 14803425
              DataField = 'JML_ANAK'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 17
            end
            object DBEdit26: TDBEdit
              Left = 108
              Top = 141
              Width = 33
              Height = 21
              Color = 14803425
              DataField = 'GOLONGANKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 18
            end
            object DBEdit27: TDBEdit
              Left = 107
              Top = 167
              Width = 33
              Height = 21
              Color = 14803425
              DataField = 'MASAKERJA'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 19
            end
            object DBEdit28: TDBEdit
              Left = 105
              Top = 256
              Width = 33
              Height = 21
              Color = 14803425
              DataField = 'JBT_FUNGSIKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 20
            end
            object DBEdit29: TDBEdit
              Left = 107
              Top = 234
              Width = 55
              Height = 21
              Color = 14803425
              DataField = 'JBT_STRUKTURKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 21
            end
            object DBEdit35: TDBEdit
              Left = 104
              Top = 302
              Width = 33
              Height = 21
              Color = 14803425
              DataField = 'GURUKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 22
            end
            object DBEdit36: TDBEdit
              Left = 72
              Top = 401
              Width = 104
              Height = 21
              Color = 14803425
              DataField = 'OPERATOR'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 23
            end
            object DBEdit37: TDBEdit
              Left = 240
              Top = 400
              Width = 104
              Height = 21
              Color = 14803425
              DataField = 'TGL_UBAH'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 24
            end
            object DBImage1: TDBImage
              Left = 200
              Top = 1504
              Width = 105
              Height = 105
              DataField = 'PIC_FOTO'
              TabOrder = 25
            end
            object DBEdit39: TDBEdit
              Left = 104
              Top = 325
              Width = 90
              Height = 21
              Color = 14803425
              DataField = 'TDTKD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 26
            end
            object DBEdit40: TDBEdit
              Left = 104
              Top = 279
              Width = 200
              Height = 21
              Color = 14803425
              DataField = 'PEND_TERAKHIR'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 27
            end
            object DBEdit41: TDBEdit
              Left = 344
              Top = 279
              Width = 200
              Height = 21
              Color = 14803425
              DataField = 'PEND_JURUSAN'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 28
            end
            object DBEdit57: TDBEdit
              Left = 480
              Top = 325
              Width = 90
              Height = 21
              Color = 14803425
              DataField = 'Persen_Gaji'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 29
            end
            object DBEdit58: TDBEdit
              Left = 107
              Top = 117
              Width = 17
              Height = 21
              Color = 14803425
              DataField = 'AKTIF_KD'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 30
            end
            object DBEdit59: TDBEdit
              Left = 583
              Top = 235
              Width = 34
              Height = 21
              Color = 14803425
              DataField = 'PTKP'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 31
            end
            object DBEdit7: TDBEdit
              Left = 160
              Top = 25
              Width = 457
              Height = 21
              Color = 14803425
              DataField = 'UnitNm'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 32
            end
            object DBEdit66: TDBEdit
              Left = 275
              Top = 48
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'TGL_LAHIR'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 33
            end
            object DBEdit67: TDBEdit
              Left = 131
              Top = 93
              Width = 270
              Height = 21
              Color = 14803425
              DataField = 'STSPegawai'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 34
            end
            object DBEdit68: TDBEdit
              Left = 443
              Top = 93
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'TMT_PEGAWAI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 35
            end
            object DBEdit69: TDBEdit
              Left = 443
              Top = 117
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'AKTIF_TGL'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 36
            end
            object DBEdit70: TDBEdit
              Left = 131
              Top = 117
              Width = 270
              Height = 21
              Color = 14803425
              DataField = 'StatusNm'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 37
            end
            object DBEdit71: TDBEdit
              Left = 147
              Top = 141
              Width = 254
              Height = 21
              Color = 14803425
              DataField = 'Golongan'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 38
            end
            object DBEdit72: TDBEdit
              Left = 443
              Top = 141
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'TMT_GOLONGAN'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 39
            end
            object DBEdit73: TDBEdit
              Left = 227
              Top = 165
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'TMT_GAJI_POKOK'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 40
            end
            object DBEdit74: TDBEdit
              Left = 219
              Top = 234
              Width = 102
              Height = 21
              Color = 14803425
              DataField = 'TMT_JABATAN'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 41
            end
            object DBEdit75: TDBEdit
              Left = 146
              Top = 257
              Width = 367
              Height = 21
              Color = 14803425
              DataField = 'JBT_FUNGSI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 42
            end
            object DBEdit76: TDBEdit
              Left = 147
              Top = 301
              Width = 397
              Height = 21
              Color = 14803425
              DataField = 'Guru'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 43
            end
            object DBEdit5: TDBEdit
              Left = 544
              Top = 256
              Width = 74
              Height = 21
              Color = 14803425
              DataField = 'TMT_FUNGSI'
              DataSource = dsPegawai
              ReadOnly = True
              TabOrder = 44
            end
          end
          object pnlGaji: TPanel
            Left = 625
            Top = 0
            Width = 373
            Height = 427
            Align = alClient
            TabOrder = 1
            object Label43: TLabel
              Left = 39
              Top = 7
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Gaji Pokok'
              FocusControl = DBEdit32
            end
            object Label44: TLabel
              Left = 48
              Top = 29
              Width = 43
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Istri'
              FocusControl = DBEdit33
            end
            object Label45: TLabel
              Left = 39
              Top = 51
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Anak'
              FocusControl = DBEdit34
            end
            object Label46: TLabel
              Left = 37
              Top = 117
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Beras'
              FocusControl = DBEdit38
            end
            object Label47: TLabel
              Left = 39
              Top = 249
              Width = 51
              Height = 13
              Caption = 'Tunj. Kerja'
              FocusControl = DBEdit42
            end
            object Label48: TLabel
              Left = 19
              Top = 73
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Struktural'
              FocusControl = DBEdit34
            end
            object Label49: TLabel
              Left = 13
              Top = 95
              Width = 78
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Fungsional'
              FocusControl = DBEdit34
            end
            object Label50: TLabel
              Left = 34
              Top = 139
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunj. Umum'
              FocusControl = DBEdit34
            end
            object Label51: TLabel
              Left = 2
              Top = 161
              Width = 90
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tamb. Tunj. Umum'
              FocusControl = DBEdit44
            end
            object Label52: TLabel
              Left = 11
              Top = 183
              Width = 81
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunjangan Otsus'
              FocusControl = DBEdit45
            end
            object Label53: TLabel
              Left = 23
              Top = 205
              Width = 69
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunjangan DT'
              FocusControl = DBEdit45
            end
            object Label54: TLabel
              Left = 9
              Top = 227
              Width = 83
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tunjangan Askes'
              FocusControl = DBEdit45
            end
            object Label55: TLabel
              Left = 71
              Top = 271
              Width = 21
              Height = 13
              Caption = 'TPP'
              FocusControl = DBEdit48
            end
            object Label56: TLabel
              Left = 252
              Top = 7
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'IWP'
              FocusControl = DBEdit32
            end
            object Label57: TLabel
              Left = 234
              Top = 29
              Width = 42
              Height = 13
              Alignment = taRightJustify
              Caption = 'Taperum'
              FocusControl = DBEdit32
            end
            object Label58: TLabel
              Left = 212
              Top = 51
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Sewa Rumah'
              FocusControl = DBEdit32
            end
            object Label59: TLabel
              Left = 190
              Top = 73
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Potongan Pangan'
              FocusControl = DBEdit32
            end
            object Label60: TLabel
              Left = 200
              Top = 95
              Width = 76
              Height = 13
              Alignment = taRightJustify
              Caption = 'Potongan Korpri'
              FocusControl = DBEdit32
            end
            object Label61: TLabel
              Left = 208
              Top = 117
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Caption = 'Kelebihan Gaji'
              FocusControl = DBEdit32
            end
            object Label66: TLabel
              Left = 212
              Top = 139
              Width = 64
              Height = 13
              Alignment = taRightJustify
              Caption = 'Hutang Lebih'
              FocusControl = DBEdit32
            end
            object Label67: TLabel
              Left = 194
              Top = 161
              Width = 82
              Height = 13
              Alignment = taRightJustify
              Caption = 'Jumlah Potongan'
              FocusControl = DBEdit32
            end
            object Label68: TLabel
              Left = 6
              Top = 305
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Jml. Gaji dan Tunj.'
              FocusControl = DBEdit32
            end
            object Label69: TLabel
              Left = 250
              Top = 271
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Caption = 'PPH'
              FocusControl = DBEdit32
            end
            object Label70: TLabel
              Left = 218
              Top = 249
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Pembulatan'
              FocusControl = DBEdit32
            end
            object Label71: TLabel
              Left = 224
              Top = 305
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Gaji Bersih'
              FocusControl = DBEdit32
            end
            object Label72: TLabel
              Left = 207
              Top = 205
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Biaya Jabatan'
              FocusControl = DBEdit32
            end
            object Label73: TLabel
              Left = 206
              Top = 227
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Biaya Pensiun'
              FocusControl = DBEdit32
            end
            object DBEdit30: TDBEdit
              Left = 96
              Top = 91
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_JAB_FUNGSI'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit31: TDBEdit
              Left = 96
              Top = 69
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_JAB_STRUKTUR'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit32: TDBEdit
              Left = 96
              Top = 3
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'GAJI_POKOK'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit33: TDBEdit
              Left = 96
              Top = 25
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_ISTRI'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit34: TDBEdit
              Left = 96
              Top = 47
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_ANAK'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit38: TDBEdit
              Left = 96
              Top = 113
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_BERAS'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit42: TDBEdit
              Left = 96
              Top = 245
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_KERJA'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit43: TDBEdit
              Left = 96
              Top = 135
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_UMUM'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit44: TDBEdit
              Left = 96
              Top = 157
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_UMUM_TAMB'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit45: TDBEdit
              Left = 96
              Top = 179
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_OTSUS'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit46: TDBEdit
              Left = 96
              Top = 201
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_DT'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdit47: TDBEdit
              Left = 96
              Top = 223
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_ASKES'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdit48: TDBEdit
              Left = 96
              Top = 267
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'TUNJ_PENGHASILAN'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 12
            end
            object DBEdit49: TDBEdit
              Left = 279
              Top = 3
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_IWP'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit50: TDBEdit
              Left = 279
              Top = 25
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_TAPERUM'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 14
            end
            object DBEdit51: TDBEdit
              Left = 279
              Top = 47
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_SEWA_RUMAH'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 15
            end
            object DBEdit52: TDBEdit
              Left = 279
              Top = 69
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_PANGAN'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 16
            end
            object DBEdit53: TDBEdit
              Left = 279
              Top = 91
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_KORPRI'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 17
            end
            object DBEdit54: TDBEdit
              Left = 279
              Top = 113
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_GAJI_LEBIH'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 18
            end
            object DBEdit55: TDBEdit
              Left = 279
              Top = 135
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'POT_HUTANG'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 19
            end
            object DBEdit56: TDBEdit
              Left = 279
              Top = 157
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'Potongan'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 20
            end
            object DBEdit60: TDBEdit
              Left = 96
              Top = 301
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'GajiDanTunjangan'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 21
            end
            object DBEdit61: TDBEdit
              Left = 279
              Top = 267
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'PPH'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 22
            end
            object DBEdit62: TDBEdit
              Left = 279
              Top = 245
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'PEMBULATAN'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 23
            end
            object DBEdit63: TDBEdit
              Left = 279
              Top = 301
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'GajiBersih'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 24
            end
            object DBEdit64: TDBEdit
              Left = 279
              Top = 201
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'BIAYA_JABATAN'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 25
            end
            object DBEdit65: TDBEdit
              Left = 279
              Top = 223
              Width = 89
              Height = 21
              Color = 14803425
              DataField = 'BIAYA_PENSIUN'
              DataSource = dsGaji
              ReadOnly = True
              TabOrder = 26
            end
          end
        end
      end
    end
  end
  object qrySKPP: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qrySKPPAfterOpen
    AfterPost = qrySKPPAfterPost
    AfterScroll = qrySKPPAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_SKPP'
      'order by SKPP_NO, NIP')
    Left = 416
    Top = 184
  end
  object dsSKPP: TDataSource
    AutoEdit = False
    DataSet = qrySKPP
    Left = 384
    Top = 184
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 640
    Top = 176
  end
  object dsBulan: TDataSource
    DataSet = qryBulan
    Left = 680
    Top = 176
  end
  object Pegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = PegawaiAfterOpen
    AfterScroll = PegawaiAfterScroll
    DataSource = dsSKPP
    Parameters = <
      item
        Name = 'NIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     PEGAWAI.*, tblSTS_PEGAWAI.URAIAN AS STSPegawai, tblGo' +
        'longan.URAIAN AS Golongan, tblGURU.URAIAN AS Guru, '
      
        '                      tblUnit.UnitNm, tblSTS_Aktif.Uraian AS Sta' +
        'tusNm, tblJBT_FUNGSI.JBT_FUNGSI'
      'FROM         PEGAWAI INNER JOIN'
      
        '                      tblSTS_Aktif ON PEGAWAI.AKTIF_KD = tblSTS_' +
        'Aktif.Aktif_KD INNER JOIN'
      
        '                      tblSTS_PEGAWAI ON PEGAWAI.STS_PEGAWAIKD = ' +
        'tblSTS_PEGAWAI.STS_PEGAWAIKD INNER JOIN'
      
        '                      tblUnit ON PEGAWAI.UNITKD = tblUnit.UnitKd' +
        ' INNER JOIN'
      
        '                      tblJBT_FUNGSI ON PEGAWAI.JBT_FUNGSIKD = tb' +
        'lJBT_FUNGSI.JBT_FUNGSIKD INNER JOIN'
      
        '                      tblGolongan ON PEGAWAI.GOLONGANKD = tblGol' +
        'ongan.GOLONGANKD INNER JOIN'
      '                      tblGURU ON PEGAWAI.GURUKD = tblGURU.GURUKD'
      '--{where}'
      'where Pegawai.NIP=:NIP')
    Left = 304
    Top = 184
  end
  object dsPegawai: TDataSource
    AutoEdit = False
    DataSet = Pegawai
    Left = 336
    Top = 184
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 873
    Top = 177
  end
  object dsAktif: TDataSource
    AutoEdit = False
    DataSet = qryAktif
    Left = 913
    Top = 177
  end
  object dsGaji: TDataSource
    AutoEdit = False
    DataSet = qryGaji
    Left = 544
    Top = 176
  end
  object qryGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryGajiAfterOpen
    OnCalcFields = qryGajiCalcFields
    DataSource = dsSKPP
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
      'SELECT top 1 * FROM pegawai_gaji'
      'where nip =:nip'
      'ORDER BY tahun desc ,bulan desc')
    Left = 504
    Top = 176
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
    object qryGajiURUT: TSmallintField
      FieldName = 'URUT'
    end
    object qryGajiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qryGajiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qryGajiSUB: TSmallintField
      FieldName = 'SUB'
    end
    object qryGajiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 40
    end
    object qryGajiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qryGajiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
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
    object qryGajiJML_SI: TIntegerField
      FieldName = 'JML_SI'
    end
    object qryGajiJML_ANAK: TIntegerField
      FieldName = 'JML_ANAK'
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
    object qryGajiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object qryGajiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object qryGajiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object qryGajiTUNJ_JAB_FUNGSI: TBCDField
      FieldName = 'TUNJ_JAB_FUNGSI'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_JAB_STRUKTUR: TBCDField
      FieldName = 'TUNJ_JAB_STRUKTUR'
      Precision = 18
      Size = 0
    end
    object qryGajiGAJI_POKOK: TIntegerField
      FieldName = 'GAJI_POKOK'
    end
    object qryGajiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object qryGajiTUNJ_ISTRI: TBCDField
      FieldName = 'TUNJ_ISTRI'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_ANAK: TBCDField
      FieldName = 'TUNJ_ANAK'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_BERAS: TBCDField
      FieldName = 'TUNJ_BERAS'
      Precision = 18
      Size = 0
    end
    object qryGajiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object qryGajiOPERATOR: TStringField
      FieldName = 'OPERATOR'
    end
    object qryGajiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object qryGajiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object qryGajiTUNJ_KERJA: TBCDField
      FieldName = 'TUNJ_KERJA'
      Precision = 18
      Size = 0
    end
    object qryGajiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
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
    object qryGajiPOT_IWP: TBCDField
      FieldName = 'POT_IWP'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_TAPERUM: TBCDField
      FieldName = 'POT_TAPERUM'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_SEWA_RUMAH: TBCDField
      FieldName = 'POT_SEWA_RUMAH'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_PANGAN: TBCDField
      FieldName = 'POT_PANGAN'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_KORPRI: TBCDField
      FieldName = 'POT_KORPRI'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_GAJI_LEBIH: TBCDField
      FieldName = 'POT_GAJI_LEBIH'
      Precision = 18
      Size = 0
    end
    object qryGajiPOT_HUTANG: TBCDField
      FieldName = 'POT_HUTANG'
      Precision = 18
      Size = 0
    end
    object qryGajiPEMBULATAN: TBCDField
      FieldName = 'PEMBULATAN'
      Precision = 18
      Size = 0
    end
    object qryGajiPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_UMUM: TBCDField
      FieldName = 'TUNJ_UMUM'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_UMUM_TAMB: TBCDField
      FieldName = 'TUNJ_UMUM_TAMB'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_OTSUS: TBCDField
      FieldName = 'TUNJ_OTSUS'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_DT: TBCDField
      FieldName = 'TUNJ_DT'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_ASKES: TBCDField
      FieldName = 'TUNJ_ASKES'
      Precision = 18
      Size = 0
    end
    object qryGajiTUNJ_PENGHASILAN: TBCDField
      FieldName = 'TUNJ_PENGHASILAN'
      Precision = 18
      Size = 0
    end
    object qryGajiBIAYA_JABATAN: TBCDField
      FieldName = 'BIAYA_JABATAN'
      Precision = 18
      Size = 0
    end
    object qryGajiBIAYA_PENSIUN: TBCDField
      FieldName = 'BIAYA_PENSIUN'
      Precision = 18
      Size = 0
    end
    object qryGajiPersen_Gaji: TBCDField
      FieldName = 'Persen_Gaji'
      Precision = 18
      Size = 0
    end
    object qryGajiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object qryGajiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object qryGajiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object qryGajiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object qryGajiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
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
  end
  object qryTahun: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct tahun from pegawai_gaji'
      'order by tahun')
    Left = 745
    Top = 177
  end
  object dsTahun: TDataSource
    AutoEdit = False
    DataSet = qryTahun
    Left = 777
    Top = 177
  end
end
