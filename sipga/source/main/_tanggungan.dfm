object frmTanggungan: TfrmTanggungan
  Left = 479
  Top = 92
  BorderStyle = bsDialog
  Caption = 'Form Tanggungan Keluarga'
  ClientHeight = 188
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 147
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 42
      Top = 16
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'No Urut :'
    end
    object Label2: TLabel
      Left = 50
      Top = 40
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nama :'
    end
    object Label3: TLabel
      Left = 13
      Top = 64
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tanggal Lahir :'
    end
    object Label4: TLabel
      Left = 28
      Top = 88
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hubungan :'
    end
    object Label5: TLabel
      Left = 23
      Top = 112
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Keterangan :'
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 109
      Width = 273
      Height = 21
      DataField = 'KETERANGAN'
      DataSource = DMPegawai.dsTanggungan
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 86
      Width = 160
      Height = 21
      DataField = 'HUB_KD'
      DataSource = DMPegawai.dsTanggungan
      KeyField = 'HUB_KD'
      ListField = 'HUB_NAMA'
      ListSource = dsHub
      TabOrder = 3
    end
    object DBDateEdit1: TDBDateEdit
      Left = 96
      Top = 62
      Width = 100
      Height = 22
      DataField = 'TGL_LAHIR'
      DataSource = DMPegawai.dsTanggungan
      BlanksChar = '_'
      NumGlyphs = 2
      TabOrder = 2
      YearDigits = dyFour
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 16
      Width = 41
      Height = 21
      DataField = 'NO_URUT'
      DataSource = DMPegawai.dsTanggungan
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 40
      Width = 273
      Height = 21
      DataField = 'NAMA'
      DataSource = DMPegawai.dsTanggungan
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 147
    Width = 391
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Batal'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object dsHub: TDataSource
    AutoEdit = False
    DataSet = qryHubungan
    Left = 272
    Top = 64
  end
  object qryHubungan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblHubungan'
      'order by Urutan')
    Left = 328
    Top = 64
  end
end
