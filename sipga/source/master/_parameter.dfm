object frmParameter: TfrmParameter
  Left = 275
  Top = 48
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Klasifikasi Parameter Pegawai'
  ClientHeight = 418
  ClientWidth = 654
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
    Top = 0
    Width = 654
    Height = 34
    Align = alTop
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
      Width = 224
      Height = 25
      DataSource = dsParameter
      VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 0
    end
    object PanelClose: TPanel
      Left = 564
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
    Top = 34
    Width = 654
    Height = 384
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
    object Label2: TLabel
      Left = 70
      Top = 12
      Width = 77
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Anak'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 77
      Top = 36
      Width = 70
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Istri'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 65
      Top = 60
      Width = 82
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Beras'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 47
      Top = 84
      Width = 100
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Beras KG'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 285
      Top = 12
      Width = 78
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Pajak'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 270
      Top = 36
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Pajak L1'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 270
      Top = 60
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Pajak L2'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 270
      Top = 84
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Pajak L3'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 76
      Top = 108
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Biaya_Jabatan'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 51
      Top = 133
      Width = 96
      Height = 14
      Alignment = taRightJustify
      Caption = 'Maks Biaya Jabatan'
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 103
      Top = 164
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'MaxStaff'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 103
      Top = 188
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'MaxGuru'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 104
      Top = 268
      Width = 43
      Height = 14
      Alignment = taRightJustify
      Caption = 'Operator'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 102
      Top = 292
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tgl. Ubah'
      FocusControl = DBEdit16
    end
    object Label17: TLabel
      Left = 88
      Top = 212
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Iuran Pemda'
      FocusControl = DBEdit17
    end
    object Label10: TLabel
      Left = 270
      Top = 108
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Pajak L4'
      FocusControl = DBEdit10
    end
    object Label1: TLabel
      Left = 303
      Top = 140
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'PTKP Pribadi'
      FocusControl = DBEdit20
    end
    object Label18: TLabel
      Left = 275
      Top = 164
      Width = 88
      Height = 14
      Alignment = taRightJustify
      Caption = 'PTKP Tertanggung'
      FocusControl = DBEdit21
    end
    object Label19: TLabel
      Left = 95
      Top = 348
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'PTKP Anak'
      FocusControl = DBEdit22
      Visible = False
    end
    object Label20: TLabel
      Left = 490
      Top = 140
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Iuran Pensiun'
      FocusControl = DBEdit23
    end
    object Label21: TLabel
      Left = 498
      Top = 164
      Width = 57
      Height = 14
      Alignment = taRightJustify
      Caption = 'Iuran Askes'
      FocusControl = DBEdit24
    end
    object Label22: TLabel
      Left = 462
      Top = 188
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tunjangan Hari Tua'
      FocusControl = DBEdit25
    end
    object Label23: TLabel
      Left = 247
      Top = 188
      Width = 116
      Height = 14
      Alignment = taRightJustify
      Caption = 'Maks PTKP Tertanggung'
      FocusControl = DBEdit26
    end
    object Label24: TLabel
      Left = 276
      Top = 212
      Width = 87
      Height = 14
      Alignment = taRightJustify
      Caption = 'Maksimum T. Anak'
      FocusControl = DBEdit27
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 8
      Width = 82
      Height = 22
      DataField = 'Tunj_Anak'
      DataSource = dsParameter
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 152
      Top = 32
      Width = 82
      Height = 22
      DataField = 'Tunj_Istri'
      DataSource = dsParameter
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 152
      Top = 56
      Width = 81
      Height = 22
      DataField = 'Tunj_Beras_Rupiah'
      DataSource = dsParameter
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 152
      Top = 80
      Width = 82
      Height = 22
      DataField = 'Tunj_Beras_Kg'
      DataSource = dsParameter
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 368
      Top = 8
      Width = 82
      Height = 22
      DataField = 'Tunj_Pajak'
      DataSource = dsParameter
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 368
      Top = 32
      Width = 82
      Height = 22
      DataField = 'Tunj_Pajak_1'
      DataSource = dsParameter
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 368
      Top = 56
      Width = 82
      Height = 22
      DataField = 'Tunj_Pajak_2'
      DataSource = dsParameter
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 368
      Top = 80
      Width = 82
      Height = 22
      DataField = 'Tunj_Pajak_3'
      DataSource = dsParameter
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 368
      Top = 104
      Width = 82
      Height = 22
      DataField = 'Tunj_Pajak_4'
      DataSource = dsParameter
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 152
      Top = 104
      Width = 82
      Height = 22
      DataField = 'Tunj_Biaya_Jabatan'
      DataSource = dsParameter
      TabOrder = 9
    end
    object DBEdit12: TDBEdit
      Left = 152
      Top = 129
      Width = 81
      Height = 22
      DataField = 'Tunj_Maks_Biaya_Jabatan'
      DataSource = dsParameter
      TabOrder = 10
    end
    object DBEdit13: TDBEdit
      Left = 152
      Top = 160
      Width = 82
      Height = 22
      DataField = 'MaxStaff'
      DataSource = dsParameter
      TabOrder = 11
    end
    object DBEdit14: TDBEdit
      Left = 152
      Top = 184
      Width = 82
      Height = 22
      DataField = 'MaxGuru'
      DataSource = dsParameter
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 152
      Top = 264
      Width = 105
      Height = 22
      DataField = 'Operator'
      DataSource = dsParameter
      Enabled = False
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 152
      Top = 288
      Width = 105
      Height = 22
      DataField = 'Tgl_Ubah'
      DataSource = dsParameter
      Enabled = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 152
      Top = 208
      Width = 82
      Height = 22
      DataField = 'Iuran_Pemda'
      DataSource = dsParameter
      TabOrder = 15
    end
    object DBEdit1: TDBEdit
      Left = 452
      Top = 32
      Width = 107
      Height = 22
      DataField = 'Tunj_Pajak_1_Max'
      DataSource = dsParameter
      TabOrder = 16
    end
    object DBEdit18: TDBEdit
      Left = 452
      Top = 56
      Width = 107
      Height = 22
      DataField = 'Tunj_Pajak_2_Max'
      DataSource = dsParameter
      TabOrder = 17
    end
    object DBEdit19: TDBEdit
      Left = 452
      Top = 80
      Width = 107
      Height = 22
      DataField = 'Tunj_Pajak_3_Max'
      DataSource = dsParameter
      TabOrder = 18
    end
    object DBEdit20: TDBEdit
      Left = 368
      Top = 136
      Width = 82
      Height = 22
      DataField = 'PTKP_Pribadi'
      DataSource = dsParameter
      TabOrder = 19
    end
    object DBEdit21: TDBEdit
      Left = 368
      Top = 160
      Width = 82
      Height = 22
      DataField = 'PTKP_SI'
      DataSource = dsParameter
      TabOrder = 20
    end
    object DBEdit22: TDBEdit
      Left = 152
      Top = 344
      Width = 82
      Height = 22
      DataField = 'PTKP_Anak'
      DataSource = dsParameter
      TabOrder = 21
      Visible = False
    end
    object DBEdit23: TDBEdit
      Left = 560
      Top = 136
      Width = 82
      Height = 22
      DataField = 'Iuran_Pensiun'
      DataSource = dsParameter
      TabOrder = 22
    end
    object DBEdit24: TDBEdit
      Left = 560
      Top = 160
      Width = 82
      Height = 22
      DataField = 'Askes'
      DataSource = dsParameter
      TabOrder = 23
    end
    object DBEdit25: TDBEdit
      Left = 560
      Top = 184
      Width = 82
      Height = 22
      DataField = 'Tunj_Hari_Tua'
      DataSource = dsParameter
      TabOrder = 24
    end
    object DBEdit26: TDBEdit
      Left = 368
      Top = 184
      Width = 82
      Height = 22
      DataField = 'PTKP_Anak_Max'
      DataSource = dsParameter
      TabOrder = 25
    end
    object DBEdit27: TDBEdit
      Left = 368
      Top = 208
      Width = 82
      Height = 22
      DataField = 'Tunj_Anak_Max'
      DataSource = dsParameter
      TabOrder = 26
    end
    object DBCheckBox1: TDBCheckBox
      Left = 96
      Top = 320
      Width = 177
      Height = 17
      Caption = 'PTKP Wanita Kawin Singel'
      TabOrder = 27
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
  end
  object dsParameter: TDataSource
    DataSet = Parameter
    Left = 528
    Top = 8
  end
  object Parameter: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = ParameterAfterOpen
    BeforePost = ParameterBeforePost
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
      'Where'
      'Tahun=:Tahun')
    Left = 496
    Top = 8
  end
end
