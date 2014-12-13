object frmJenisGaji: TfrmJenisGaji
  Left = 275
  Top = 48
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Klasifikasi JenisGaji Pegawai'
  ClientHeight = 363
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 605
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
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 5
      Width = 288
      Height = 25
      DataSource = dsJenisGaji
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 515
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
    Width = 605
    Height = 329
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 480
      Top = 224
      Width = 42
      Height = 14
      Caption = 'Accress'
      FocusControl = DBEdit1
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 295
      Height = 325
      Align = alLeft
      DataSource = dsJenisGaji
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Jenis_KD'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Uraian'
          Width = 185
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 320
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Gaji Pokok'
      DataField = 'Gaji_Pokok'
      DataSource = dsJenisGaji
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 320
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Tunj. Anak'
      DataField = 'Tunj_Anak'
      DataSource = dsJenisGaji
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 320
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Tunj. Istri'
      DataField = 'Tunj_Istri'
      DataSource = dsJenisGaji
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 320
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Tunj. Struktural'
      DataField = 'Tunj_Struktural'
      DataSource = dsJenisGaji
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 320
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Tunj. Fungsional'
      DataField = 'Tunj_Fungsional'
      DataSource = dsJenisGaji
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 320
      Top = 128
      Width = 97
      Height = 17
      Caption = 'Tunj. Beras'
      DataField = 'Tunj_Beras'
      DataSource = dsJenisGaji
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 320
      Top = 152
      Width = 97
      Height = 17
      Caption = 'Tunj. Umum'
      DataField = 'Tunj_Umum'
      DataSource = dsJenisGaji
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox8: TDBCheckBox
      Left = 320
      Top = 176
      Width = 145
      Height = 17
      Caption = 'Tunj. Umum Tambahan'
      DataField = 'Tunj_Umum_Tambah'
      DataSource = dsJenisGaji
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox9: TDBCheckBox
      Left = 320
      Top = 200
      Width = 97
      Height = 17
      Caption = 'Tunj. Otsus'
      DataField = 'Tunj_Otsus'
      DataSource = dsJenisGaji
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox10: TDBCheckBox
      Left = 320
      Top = 224
      Width = 97
      Height = 17
      Caption = 'Tunj. DT'
      DataField = 'Tunj_DT'
      DataSource = dsJenisGaji
      TabOrder = 10
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox11: TDBCheckBox
      Left = 320
      Top = 248
      Width = 97
      Height = 17
      Caption = 'Tunj. Askes'
      DataField = 'Tunj_Askes'
      DataSource = dsJenisGaji
      TabOrder = 11
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox12: TDBCheckBox
      Left = 320
      Top = 272
      Width = 97
      Height = 17
      Caption = 'Tunj. Kerja'
      DataField = 'Tunj_Kerja'
      DataSource = dsJenisGaji
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox13: TDBCheckBox
      Left = 320
      Top = 296
      Width = 97
      Height = 17
      Caption = 'TPP'
      DataField = 'Tunj_PP'
      DataSource = dsJenisGaji
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox14: TDBCheckBox
      Left = 480
      Top = 8
      Width = 97
      Height = 17
      Caption = 'IWP'
      DataField = 'Pot_IWP'
      DataSource = dsJenisGaji
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox15: TDBCheckBox
      Left = 480
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Taperum'
      DataField = 'Pot_Taperum'
      DataSource = dsJenisGaji
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox16: TDBCheckBox
      Left = 480
      Top = 56
      Width = 97
      Height = 17
      Caption = 'SewaRumah'
      DataField = 'Pot_SewaRumah'
      DataSource = dsJenisGaji
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox17: TDBCheckBox
      Left = 480
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Pot. Pangan'
      DataField = 'Pot_Pangan'
      DataSource = dsJenisGaji
      TabOrder = 17
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox18: TDBCheckBox
      Left = 480
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Pot. Korpri'
      DataField = 'Pot_Korpri'
      DataSource = dsJenisGaji
      TabOrder = 18
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox19: TDBCheckBox
      Left = 480
      Top = 128
      Width = 97
      Height = 17
      Caption = 'Pot. Gaji'
      DataField = 'Pot_Gaji'
      DataSource = dsJenisGaji
      TabOrder = 19
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox20: TDBCheckBox
      Left = 480
      Top = 152
      Width = 97
      Height = 17
      Caption = 'Pot. Hutang'
      DataField = 'Pot_Hutang'
      DataSource = dsJenisGaji
      TabOrder = 20
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox21: TDBCheckBox
      Left = 480
      Top = 176
      Width = 97
      Height = 17
      Caption = 'Pembulatan'
      DataField = 'Pembulatan'
      DataSource = dsJenisGaji
      TabOrder = 21
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox22: TDBCheckBox
      Left = 480
      Top = 200
      Width = 97
      Height = 17
      Caption = 'PPh'
      DataField = 'PPh'
      DataSource = dsJenisGaji
      TabOrder = 22
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit1: TDBEdit
      Left = 528
      Top = 221
      Width = 65
      Height = 22
      DataField = 'Accress'
      DataSource = dsJenisGaji
      TabOrder = 23
    end
  end
  object dsJenisGaji: TDataSource
    DataSet = JenisGaji
    Left = 528
    Top = 8
  end
  object JenisGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = JenisGajiAfterOpen
    BeforeDelete = JenisGajiBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJenisGaji'
      'ORDER BY Jenis_KD')
    Left = 496
    Top = 8
    object JenisGajiJenis_KD: TStringField
      FieldName = 'Jenis_KD'
      Size = 5
    end
    object JenisGajiUraian: TStringField
      FieldName = 'Uraian'
      Size = 50
    end
    object JenisGajiGaji_Pokok: TBooleanField
      FieldName = 'Gaji_Pokok'
    end
    object JenisGajiTunj_Anak: TBooleanField
      FieldName = 'Tunj_Anak'
    end
    object JenisGajiTunj_Istri: TBooleanField
      FieldName = 'Tunj_Istri'
    end
    object JenisGajiTunj_Struktural: TBooleanField
      FieldName = 'Tunj_Struktural'
    end
    object JenisGajiTunj_Fungsional: TBooleanField
      FieldName = 'Tunj_Fungsional'
    end
    object JenisGajiTunj_Beras: TBooleanField
      FieldName = 'Tunj_Beras'
    end
    object JenisGajiTunj_Umum: TBooleanField
      FieldName = 'Tunj_Umum'
    end
    object JenisGajiTunj_Umum_Tambah: TBooleanField
      FieldName = 'Tunj_Umum_Tambah'
    end
    object JenisGajiTunj_Otsus: TBooleanField
      FieldName = 'Tunj_Otsus'
    end
    object JenisGajiTunj_DT: TBooleanField
      FieldName = 'Tunj_DT'
    end
    object JenisGajiTunj_Askes: TBooleanField
      FieldName = 'Tunj_Askes'
    end
    object JenisGajiTunj_Kerja: TBooleanField
      FieldName = 'Tunj_Kerja'
    end
    object JenisGajiTunj_PP: TBooleanField
      FieldName = 'Tunj_PP'
    end
    object JenisGajiPot_IWP: TBooleanField
      FieldName = 'Pot_IWP'
    end
    object JenisGajiPot_Taperum: TBooleanField
      FieldName = 'Pot_Taperum'
    end
    object JenisGajiPot_SewaRumah: TBooleanField
      FieldName = 'Pot_SewaRumah'
    end
    object JenisGajiPot_Pangan: TBooleanField
      FieldName = 'Pot_Pangan'
    end
    object JenisGajiPot_Korpri: TBooleanField
      FieldName = 'Pot_Korpri'
    end
    object JenisGajiPot_Gaji: TBooleanField
      FieldName = 'Pot_Gaji'
    end
    object JenisGajiPot_Hutang: TBooleanField
      FieldName = 'Pot_Hutang'
    end
    object JenisGajiPembulatan: TBooleanField
      FieldName = 'Pembulatan'
    end
    object JenisGajiPPh: TBooleanField
      FieldName = 'PPh'
    end
    object JenisGajiAccress: TBCDField
      FieldName = 'Accress'
      Precision = 18
      Size = 0
    end
  end
end
