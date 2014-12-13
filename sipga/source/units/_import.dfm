object frmImport: TfrmImport
  Left = 286
  Top = 64
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Import Data'
  ClientHeight = 466
  ClientWidth = 776
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
    Top = 29
    Width = 776
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      776
      65)
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Backup File'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Jenis Data :'
    end
    object LbJenis: TLabel
      Left = 88
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Jenis'
    end
    object LbImported: TLabel
      Left = 648
      Top = 40
      Width = 115
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Berhasil Diimport : 0'
    end
    object eFile: TEdit
      Left = 96
      Top = 11
      Width = 619
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnOpen: TButton
      Left = 722
      Top = 8
      Width = 41
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnOpenClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 776
    Height = 336
    Align = alClient
    TabOrder = 1
    object Memo1: TMemo
      Left = 512
      Top = 1
      Width = 263
      Height = 334
      Align = alRight
      BevelKind = bkFlat
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 0
      WantReturns = False
      WordWrap = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 511
      Height = 334
      Align = alClient
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 511
        Height = 334
        Align = alClient
        Ctl3D = False
        DataSource = dsImport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NIP'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMA'
            Width = 208
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GOLONGANKD'
            Title.Alignment = taCenter
            Title.Caption = 'GOLONGAN'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STS_PEGAWAIKD'
            Title.Alignment = taCenter
            Title.Caption = 'C / P'
            Width = 44
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 29
    Align = alTop
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 237
      Height = 13
      Caption = 'Import Data Pegawai, Gaji dan Rapel Gaji'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 441
    Width = 776
    Height = 25
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      776
      25)
    object LbJumlah: TLabel
      Left = 204
      Top = 8
      Width = 90
      Height = 13
      Caption = 'Jumlah Data : 0'
    end
    object DBNav: TDBNavigator
      Left = 12
      Top = 0
      Width = 184
      Height = 25
      DataSource = dsImport
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
    object btnTutup: TButton
      Left = 693
      Top = 0
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Tutup'
      ModalResult = 2
      TabOrder = 2
    end
    object btnImport: TButton
      Left = 611
      Top = 0
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Import'
      TabOrder = 1
      OnClick = btnImportClick
    end
    object ckPGWSaja: TCheckBox
      Left = 420
      Top = 4
      Width = 173
      Height = 17
      Caption = 'Import Data Pegawai Saja'
      TabOrder = 3
    end
  end
  object PBProses: TProgressBar
    Left = 0
    Top = 94
    Width = 776
    Height = 11
    Align = alTop
    TabOrder = 4
  end
  object qryImport: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryImportAfterOpen
    AfterClose = qryImportAfterClose
    Parameters = <>
    Left = 356
    Top = 360
  end
  object dsImport: TDataSource
    DataSet = qryImport
    Left = 388
    Top = 360
  end
  object OpenEx: TOpenDialog
    Filter = 'Gaji Files|*.gaji|XML Files|*.xml|All Files|*.*'
    Options = [ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    Left = 180
    Top = 156
  end
  object qryPegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    DataSource = dsImport
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
      'select * from pegawai'
      'where nip=:nip')
    Left = 352
    Top = 217
  end
  object qryJenis: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryJenisAfterOpen
    AfterClose = qryJenisAfterClose
    Parameters = <>
    Left = 92
    Top = 277
  end
  object qryGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    DataSource = dsJenis
    Parameters = <>
    Left = 156
    Top = 277
  end
  object dsJenis: TDataSource
    AutoEdit = False
    DataSet = qryJenis
    Left = 124
    Top = 277
  end
  object dsGaji: TDataSource
    AutoEdit = False
    DataSet = qryGaji
    Left = 197
    Top = 278
  end
end
