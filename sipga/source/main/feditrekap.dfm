object frmEditRekap: TfrmEditRekap
  Left = 500
  Top = 72
  BorderStyle = bsDialog
  Caption = 'Edit'
  ClientHeight = 204
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 173
    Align = alClient
    TabOrder = 0
    DesignSize = (
      525
      173)
    object Label3: TLabel
      Left = 45
      Top = 17
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tahun'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 38
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bulan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 26
      Top = 59
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tgl SP2D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 79
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Jenis Pemb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 25
      Top = 97
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pemb. Ke'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 46
      Top = 121
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'SKPD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 143
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Jenis Gaji'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbTahun: TDBText
      Left = 99
      Top = 18
      Width = 51
      Height = 13
      AutoSize = True
      DataField = 'Tahun'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbBulan: TDBText
      Left = 99
      Top = 38
      Width = 47
      Height = 13
      AutoSize = True
      DataField = 'BulanNM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbTglSP2D: TDBText
      Left = 99
      Top = 58
      Width = 65
      Height = 13
      AutoSize = True
      DataField = 'SP2DDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbRJenis: TDBText
      Left = 99
      Top = 78
      Width = 53
      Height = 13
      AutoSize = True
      DataField = 'RUraian'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbUrut: TDBText
      Left = 99
      Top = 98
      Width = 39
      Height = 13
      AutoSize = True
      DataField = 'NoUrut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbLookSKPD: TDBLookupComboBox
      Left = 98
      Top = 118
      Width = 416
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      DataField = 'UnitKd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'UnitKd'
      ListField = 'UnitNm'
      ListSource = dsSKPD
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object dbLookJenis: TDBLookupComboBox
      Left = 98
      Top = 142
      Width = 188
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      DataField = 'Jenis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'JENIS'
      ListField = 'URAIAN'
      ListSource = dsJenis
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 173
    Width = 525
    Height = 31
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      525
      31)
    object btnSimpan: TSpeedButton
      Left = 364
      Top = 0
      Width = 69
      Height = 31
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Simpan'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSimpanClick
    end
    object bntCancel: TSpeedButton
      Left = 444
      Top = 0
      Width = 69
      Height = 31
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Baral'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bntCancelClick
    end
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from tblUnit'
      'where Len(UnitKd) = 7'
      
        'ORDER BY (CASE WHEN UnitKd IN ('#39'1.20.02'#39', '#39'1.20.03'#39', '#39'1.20.04'#39') ' +
        'THEN '#39'1.'#39' + UnitKd ELSE '#39'2.'#39' + UnitKd END)')
    Left = 336
    Top = 13
    object qrySKPDUnitKd: TStringField
      FieldName = 'UnitKd'
    end
    object qrySKPDUrusanKd: TStringField
      FieldName = 'UrusanKd'
      Size = 5
    end
    object qrySKPDNoUrut: TStringField
      FieldName = 'NoUrut'
      Size = 12
    end
    object qrySKPDUnitNm: TStringField
      FieldName = 'UnitNm'
      Size = 105
    end
    object qrySKPDBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
    object qrySKPDBankAccount: TStringField
      FieldName = 'BankAccount'
      Size = 50
    end
    object qrySKPDAlamat: TStringField
      FieldName = 'Alamat'
      Size = 250
    end
    object qrySKPDShortUnitNm: TStringField
      FieldName = 'ShortUnitNm'
      Size = 50
    end
    object qrySKPDTelp: TStringField
      FieldName = 'Telp'
      Size = 50
    end
    object qrySKPDFax: TStringField
      FieldName = 'Fax'
      Size = 50
    end
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 368
    Top = 13
  end
  object qryJenis: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT A.JENIS, A.URAIAN, A.RJENIS'
      'FROM'
      '(SELECT JENIS, URAIAN, (CASE WHEN JENIS = 0 THEN 1 '
      #9'WHEN JENIS = 1 THEN 2 '
      #9'WHEN JENIS IN (2, 3) THEN 4'
      #9'WHEN JENIS = 6 THEN 3'
      #9'ELSE 1 END) AS RJENIS  FROM TBLJENISGAJI'
      'UNION'
      
        'SELECT JENIS, V_URAIAN AS URAIAN, 6 AS RJENIS FROM TBLJENIS_RAPE' +
        'L'
      ') A'
      'ORDER BY A.RJENIS, A.JENIS')
    Left = 448
    Top = 61
  end
  object dsJenis: TDataSource
    AutoEdit = False
    DataSet = qryJenis
    Left = 480
    Top = 61
  end
end
