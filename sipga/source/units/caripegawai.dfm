object frmCariPegawai: TfrmCariPegawai
  Left = 290
  Top = 83
  BorderStyle = bsDialog
  Caption = 'Pilih Pegawai'
  ClientHeight = 427
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Cari :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbStatus: TLabel
      Left = 524
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Status :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 372
      Top = 15
      Width = 31
      Height = 13
      Caption = 'P/C :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eCari: TEdit
      Left = 64
      Top = 11
      Width = 209
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 0
      OnChange = eCariChange
      OnKeyPress = eCariKeyPress
    end
    object btnCari: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCariClick
    end
    object CoStatus: TComboBox
      Left = 572
      Top = 11
      Width = 197
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnClick = CoStatusClick
    end
    object coCP: TComboBox
      Left = 412
      Top = 11
      Width = 89
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnClick = CoStatusClick
      Items.Strings = (
        '--Semua--'
        'CPNS'
        'PNS')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 776
    Height = 345
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 774
      Height = 343
      Align = alClient
      Ctl3D = False
      DataSource = DSCari
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
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
      ExOptions = [eoBooleanAsCheckBox, eoCellHint, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoStandardPopup, eoFilterAutoApply, eoTitleLines]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 6
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'nip'
          Title.Alignment = taCenter
          Title.Caption = 'NIP'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pangkat_golongan'
          Title.Alignment = taCenter
          Title.Caption = 'Pangkat / Golongan'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sts_pegawaikd'
          Title.Alignment = taCenter
          Title.Caption = 'P / C'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'aktif_nm'
          Title.Alignment = taCenter
          Title.Caption = 'Status Aktif'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unitnm'
          Title.Alignment = taCenter
          Title.Caption = 'Unit / Sub Unit'
          Width = 155
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 386
    Width = 776
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      776
      41)
    object Label3: TLabel
      Left = 272
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Jumlah Data ='
    end
    object LbJumlah: TLabel
      Left = 360
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
    end
    object btnOK: TButton
      Left = 589
      Top = 8
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 677
      Top = 8
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Batal'
      ModalResult = 2
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = DSCari
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
  end
  object DSCari: TDataSource
    AutoEdit = False
    DataSet = GModule.BQuery
    Left = 56
    Top = 145
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Aktif_Kd, Uraian'
      'from tblSTS_Aktif'
      'order by Aktif_Kd')
    Left = 296
    Top = 124
  end
end
