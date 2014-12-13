object frmAktif: TfrmAktif
  Left = 348
  Top = 85
  Width = 722
  Height = 485
  Caption = 'Klasifikasi Aktif Pemerintahan Daerah '
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
    Top = 413
    Width = 706
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
      Width = 232
      Height = 25
      DataSource = dsAktif
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 616
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
  end
  object GroupBox1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 413
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 248
      Top = 2
      Width = 456
      Height = 409
      Align = alRight
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 28
        Height = 14
        Caption = 'Kode'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 34
        Height = 14
        Caption = 'Uraian'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 101
        Height = 14
        Caption = 'Persen Gaji Pokok'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 176
        Width = 61
        Height = 14
        Caption = 'Tunj. Beras'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 24
        Top = 372
        Width = 30
        Height = 14
        Caption = 'Lama'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 208
        Top = 372
        Width = 66
        Height = 14
        Caption = 'Kode Hitung'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 152
        Top = 0
        Width = 134
        Height = 22
        DataField = 'Aktif_KD'
        DataSource = dsAktif
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 24
        Width = 295
        Height = 22
        DataField = 'Uraian'
        DataSource = dsAktif
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 152
        Top = 48
        Width = 134
        Height = 22
        DataField = 'Gaji_Pokok'
        DataSource = dsAktif
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 152
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Tunj. Anak'
        DataField = 'Tunj_Anak'
        DataSource = dsAktif
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 152
        Top = 104
        Width = 97
        Height = 17
        Caption = 'Tunj.Istri'
        DataField = 'Tunj_Istri'
        DataSource = dsAktif
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 152
        Top = 128
        Width = 107
        Height = 17
        Caption = 'Tunj.Struktural'
        DataField = 'Tunj_Struktural'
        DataSource = dsAktif
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 152
        Top = 152
        Width = 107
        Height = 17
        Caption = 'Tunj. Fungsional'
        DataField = 'Tunj_Fungsional'
        DataSource = dsAktif
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit4: TDBEdit
        Left = 152
        Top = 173
        Width = 134
        Height = 22
        DataField = 'Tunj_Beras'
        DataSource = dsAktif
        TabOrder = 7
      end
      object DBCheckBox5: TDBCheckBox
        Left = 152
        Top = 200
        Width = 97
        Height = 17
        Caption = 'Tunj. Umum'
        DataField = 'Tunj_Umum'
        DataSource = dsAktif
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 152
        Top = 224
        Width = 169
        Height = 17
        Caption = 'Tambahan Tunj. Umum'
        DataField = 'Tunj_Umum_Tambah'
        DataSource = dsAktif
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 152
        Top = 248
        Width = 97
        Height = 17
        Caption = 'Tunj. Otsus'
        DataField = 'Tunj_Otsus'
        DataSource = dsAktif
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 152
        Top = 272
        Width = 153
        Height = 17
        Caption = 'Tunj. Daerah Tertinggal'
        DataField = 'Tunj_DT'
        DataSource = dsAktif
        TabOrder = 11
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 152
        Top = 296
        Width = 97
        Height = 17
        Caption = 'Tunj. Askes'
        DataField = 'Tunj_Askes'
        DataSource = dsAktif
        TabOrder = 12
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 152
        Top = 320
        Width = 97
        Height = 17
        Caption = 'Tunj. Kerja'
        DataField = 'Tunj_Kerja'
        DataSource = dsAktif
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox11: TDBCheckBox
        Left = 152
        Top = 344
        Width = 97
        Height = 17
        Caption = 'Tunj. PP'
        DataField = 'Tunj_PP'
        DataSource = dsAktif
        TabOrder = 14
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 328
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Pot. Taperum'
        DataField = 'Pot_Taperum'
        DataSource = dsAktif
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 328
        Top = 152
        Width = 97
        Height = 17
        Caption = 'Pot. Hari Tua'
        DataField = 'Pot_HariTua'
        DataSource = dsAktif
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 328
        Top = 176
        Width = 121
        Height = 17
        Caption = 'Pot. Sewa Rumah'
        DataField = 'Pot_SewaRumah'
        DataSource = dsAktif
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox15: TDBCheckBox
        Left = 328
        Top = 200
        Width = 97
        Height = 17
        Caption = 'Pot. Pangan'
        DataField = 'Pot_Pangan'
        DataSource = dsAktif
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox16: TDBCheckBox
        Left = 328
        Top = 224
        Width = 97
        Height = 17
        Caption = 'Pot. Korpri'
        DataField = 'Pot_Korpri'
        DataSource = dsAktif
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox17: TDBCheckBox
        Left = 328
        Top = 248
        Width = 97
        Height = 17
        Caption = 'Pot. Gaji'
        DataField = 'Pot_Gaji'
        DataSource = dsAktif
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox18: TDBCheckBox
        Left = 328
        Top = 272
        Width = 97
        Height = 17
        Caption = 'Pot. Hutang'
        DataField = 'Pot_Hutang'
        DataSource = dsAktif
        TabOrder = 21
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox19: TDBCheckBox
        Left = 328
        Top = 296
        Width = 97
        Height = 17
        Caption = 'Pembulatan'
        DataField = 'Pembulatan'
        DataSource = dsAktif
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox20: TDBCheckBox
        Left = 328
        Top = 320
        Width = 97
        Height = 17
        Caption = 'PPh'
        DataField = 'PPh'
        DataSource = dsAktif
        TabOrder = 23
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit5: TDBEdit
        Left = 152
        Top = 368
        Width = 41
        Height = 22
        DataField = 'Accress'
        DataSource = dsAktif
        TabOrder = 24
      end
      object DBEdit6: TDBEdit
        Left = 280
        Top = 368
        Width = 33
        Height = 22
        DataField = 'HitungKD'
        DataSource = dsAktif
        TabOrder = 25
      end
      object DBCheckBox21: TDBCheckBox
        Left = 104
        Top = 728
        Width = 97
        Height = 17
        Caption = 'ISAktif'
        DataField = 'ISAktif'
        DataSource = dsAktif
        TabOrder = 26
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox22: TDBCheckBox
        Left = 328
        Top = 128
        Width = 97
        Height = 17
        Caption = 'Pot. Askes'
        DataField = 'Pot_Askes'
        DataSource = dsAktif
        TabOrder = 27
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox23: TDBCheckBox
        Left = 328
        Top = 104
        Width = 97
        Height = 17
        Caption = 'Pot.  Pensiun'
        DataField = 'Pot_Pensiun'
        DataSource = dsAktif
        TabOrder = 28
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 2
      Top = 2
      Width = 246
      Height = 409
      Align = alClient
      Ctl3D = False
      DataSource = dsAktif
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
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
      ColCount = 3
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Aktif_KD'
          Title.Alignment = taCenter
          Title.Caption = 'Kode'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uraian'
          Title.Alignment = taCenter
          Width = 215
          Visible = True
          BandIndex = 0
        end>
    end
  end
  object dsAktif: TDataSource
    AutoEdit = False
    DataSet = Aktif
    Left = 56
    Top = 24
  end
  object Aktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 80
    Top = 40
  end
end
