object frmDBCreate: TfrmDBCreate
  Left = 466
  Top = 86
  BorderStyle = bsDialog
  Caption = 'Properti Database'
  ClientHeight = 422
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 173
    Width = 400
    Height = 219
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Backup'
      object Label2: TLabel
        Left = 4
        Top = 11
        Width = 104
        Height = 13
        Caption = 'Nama File Backup'
      end
      object edtFile: TEdit
        Left = 116
        Top = 9
        Width = 237
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnDblClick = btnSaveClick
      end
      object btnSave: TBitBtn
        Left = 356
        Top = 8
        Width = 25
        Height = 20
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnSaveClick
      end
      object btnBackup: TBitBtn
        Left = 298
        Top = 134
        Width = 75
        Height = 25
        Caption = '&Backup'
        TabOrder = 2
        OnClick = btnBackupClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Restore'
      ImageIndex = 1
      object Label4: TLabel
        Left = 3
        Top = 11
        Width = 104
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama File Backup'
      end
      object Label5: TLabel
        Left = 14
        Top = 35
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nama Database'
      end
      object Label6: TLabel
        Left = 67
        Top = 57
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lokasi'
      end
      object edtSrc: TEdit
        Left = 116
        Top = 9
        Width = 241
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnDblClick = btnOpenClick
      end
      object btnOpen: TBitBtn
        Left = 360
        Top = 8
        Width = 25
        Height = 20
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnOpenClick
      end
      object btnRestore: TBitBtn
        Left = 294
        Top = 163
        Width = 75
        Height = 25
        Caption = '&Restore'
        TabOrder = 6
        OnClick = btnRestoreClick
      end
      object edtDB: TEdit
        Left = 116
        Top = 33
        Width = 241
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnChange = edtDBChange
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 83
        Width = 389
        Height = 78
        ColCount = 3
        Ctl3D = False
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object edtDest: TEdit
        Left = 116
        Top = 55
        Width = 241
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        OnChange = edtDestChange
        OnDblClick = btnOpenFolderClick
      end
      object btnOpenFolder: TBitBtn
        Left = 360
        Top = 54
        Width = 25
        Height = 20
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btnOpenFolderClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Attach'
      ImageIndex = 2
      TabVisible = False
      object GroupBox1: TGroupBox
        Left = 16
        Top = 12
        Width = 337
        Height = 153
        Caption = 'Attach Database'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 83
          Height = 13
          Caption = 'Attach DB File'
        end
        object Label3: TLabel
          Left = 40
          Top = 39
          Width = 46
          Height = 13
          Caption = 'Log File'
        end
        object optDBCreate: TRadioGroup
          Left = 72
          Top = 61
          Width = 241
          Height = 33
          Caption = 'Database Option'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Create '
            'Attach')
          TabOrder = 0
          Visible = False
          OnClick = optDBCreateClick
        end
        object edtAttach: TEdit
          Left = 96
          Top = 14
          Width = 201
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object btnBrowse: TButton
          Left = 304
          Top = 15
          Width = 17
          Height = 17
          Caption = '...'
          TabOrder = 2
          OnClick = btnBrowseClick
        end
        object btnProses: TButton
          Left = 224
          Top = 100
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 3
          OnClick = btnProsesClick
        end
        object edtLog: TEdit
          Left = 96
          Top = 35
          Width = 201
          Height = 19
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 4
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Execute'
      ImageIndex = 3
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 163
        Width = 392
        Height = 28
        Align = alBottom
        TabOrder = 0
        object Button1: TButton
          Left = 298
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 392
        Height = 163
        Align = alClient
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 392
    Width = 400
    Height = 30
    Align = alBottom
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnCancel: TBitBtn
      Left = 80
      Top = 3
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object btnOk: TBitBtn
      Left = 0
      Top = 3
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btnOkClick
      Kind = bkOK
    end
    object btnTest: TButton
      Left = 160
      Top = 3
      Width = 129
      Height = 25
      Caption = 'Test Connection'
      TabOrder = 2
      OnClick = btnTestClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 173
    Align = alTop
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 385
      Height = 153
      Caption = 'Property Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object txtServer: TLabel
        Left = 65
        Top = 20
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Server'
      end
      object txtDBName: TLabel
        Left = 12
        Top = 124
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Database Name'
      end
      object cboServerNm: TComboBox
        Left = 116
        Top = 16
        Width = 253
        Height = 21
        BevelKind = bkFlat
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = cboServerNmChange
        OnDropDown = cboServerNmDropDown
      end
      object cboDBA: TComboBox
        Left = 116
        Top = 121
        Width = 253
        Height = 21
        BevelKind = bkFlat
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnDropDown = cboDBADropDown
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 44
        Width = 365
        Height = 69
        TabOrder = 2
        object txtUserID: TLabel
          Left = 48
          Top = 21
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'User ID'
        end
        object txtPasswd: TLabel
          Left = 35
          Top = 41
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Password'
        end
        object edtUserID: TEdit
          Left = 104
          Top = 18
          Width = 249
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object edtPasswd: TEdit
          Left = 104
          Top = 39
          Width = 249
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
        end
      end
      object chkInt: TCheckBox
        Left = 28
        Top = 42
        Width = 121
        Height = 17
        Caption = 'Integrity Security'
        Checked = True
        Ctl3D = False
        ParentCtl3D = False
        State = cbChecked
        TabOrder = 1
        OnClick = chkIntClick
      end
    end
  end
  object spAttach: TADOStoredProc
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Master'
    ProcedureName = 'sp_attach_db'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dbname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 128
        Value = Null
      end
      item
        Name = '@filename1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename3'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename4'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename5'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename6'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename7'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename8'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename9'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename10'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename11'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename12'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename13'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename14'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename15'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@filename16'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end>
    Left = 208
    Top = 328
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 347
  end
  object SaveDialog1: TSaveDialog
    Left = 12
    Top = 348
  end
  object spDump: TADOStoredProc
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Master;Data Source=agus-q\sql2k'
    ProcedureName = 'sp_addumpdevice;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@devtype'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@logicalname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 128
        Value = Null
      end
      item
        Name = '@physicalname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 260
        Value = Null
      end
      item
        Name = '@cntrltype'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@devstatus'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end>
    Left = 236
    Top = 328
  end
  object spDrop: TADOStoredProc
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Master;Data Source=agus-q\sql2k'
    ProcedureName = 'sp_dropdevice;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@logicalname'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 128
        Value = Null
      end
      item
        Name = '@delfile'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
        Value = Null
      end>
    Left = 264
    Top = 328
  end
  object ADOQuery1: TADOQuery
    Connection = aConn
    Parameters = <>
    Left = 112
    Top = 320
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOQuery1
    Left = 140
    Top = 320
  end
  object aConn: TADOConnection
    LoginPrompt = False
    Left = 12
    Top = 304
  end
  object qryExec: TADOCommand
    Connection = aConn
    Prepared = True
    Parameters = <>
    ParamCheck = False
    Left = 296
    Top = 328
  end
  object FQuery: TADOQuery
    Connection = aConn
    Parameters = <>
    Left = 48
    Top = 304
  end
end
