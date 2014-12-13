object frmUser: TfrmUser
  Left = 383
  Top = 94
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Management User'
  ClientHeight = 220
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 574
    Height = 32
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      574
      32)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 34
      Height = 13
      Caption = 'SKPD'
    end
    object SKPDLook: TDBLookupComboBox
      Left = 48
      Top = 4
      Width = 511
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      KeyField = 'UNITKD'
      ListField = 'UNITKD;UNITNM'
      ListFieldIndex = 1
      ListSource = dsSKPD
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 25
    Align = alTop
    Caption = 'Management User'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 574
    Height = 135
    Align = alClient
    TabOrder = 2
    object PGC: TPageControl
      Left = 1
      Top = 1
      Width = 572
      Height = 133
      ActivePage = TabSheet2
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpLeft
      OnChange = PGCChange
      object TabSheet1: TTabSheet
        Caption = 'Grid'
        object grdUser: TSMDBGrid
          Left = 0
          Top = 0
          Width = 545
          Height = 125
          Align = alClient
          Ctl3D = False
          DataSource = dsUser
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = grdUserDrawColumnCell
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoBooleanAsCheckBox, eoKeepSelection, eoFilterAutoApply]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'userid'
              Title.Caption = 'User Id'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'usernm'
              Title.Caption = 'Nama'
              Width = 157
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GROUP'
              Title.Caption = 'Group'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITKD'
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACCESSSUB_UNIT'
              Title.Alignment = taCenter
              Title.Caption = 'Akses Sub'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 66
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Form'
        ImageIndex = 1
        DesignSize = (
          545
          125)
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 42
          Height = 13
          Caption = 'User Id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 40
          Width = 63
          Height = 13
          Caption = 'User Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Password'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtUser: TDBEdit
          Left = 88
          Top = 12
          Width = 253
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'USERID'
          DataSource = dsUser
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 88
          Top = 36
          Width = 253
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'usernm'
          DataSource = dsUser
          TabOrder = 1
        end
        object tmpPwd: TDBEdit
          Left = 88
          Top = 60
          Width = 253
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'PWD'
          DataSource = dsUser
          PasswordChar = '*'
          TabOrder = 2
        end
        object txtPWD: TDBEdit
          Left = 88
          Top = 60
          Width = 253
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'passwd'
          DataSource = dsUser
          PasswordChar = '*'
          TabOrder = 3
        end
        object ckALL: TDBCheckBox
          Left = 16
          Top = 88
          Width = 85
          Height = 17
          Caption = 'ALL SKPD'
          DataField = 'ALLUNIT'
          DataSource = dsUser
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = ckALLClick
        end
        object ckAktif: TDBCheckBox
          Left = 120
          Top = 88
          Width = 69
          Height = 17
          Caption = 'Disable'
          DataField = 'disabled'
          DataSource = dsUser
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object ckSub: TDBCheckBox
          Left = 212
          Top = 88
          Width = 129
          Height = 17
          Caption = 'Akses Sub Unit'
          DataField = 'ACCESSSUB_UNIT'
          DataSource = dsUser
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RGName2: TDBRadioGroup
          Left = 364
          Top = 4
          Width = 165
          Height = 105
          Anchors = [akTop, akRight]
          Caption = 'Group Name'
          DataField = 'GROUP_ID'
          DataSource = dsUser
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Administrator SKPD'
            'Operator SKPD'
            'Guest')
          ParentFont = False
          TabOrder = 7
          Values.Strings = (
            '2'
            '3'
            '4')
          OnChange = RGName2Change
        end
        object RGName: TDBRadioGroup
          Left = 364
          Top = 4
          Width = 165
          Height = 105
          Anchors = [akTop, akRight]
          Caption = 'Group Name'
          DataField = 'GROUP_ID'
          DataSource = dsUser
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Super Administrator'
            'Administrator SKPD'
            'Operator SKPD'
            'Guest')
          ParentFont = False
          TabOrder = 8
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
          OnChange = RGNameChange
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 192
    Width = 574
    Height = 28
    Align = alBottom
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 21
      Top = 0
      Width = 240
      Height = 28
      DataSource = dsUser
      Ctl3D = False
      Hints.Strings = (
        'Record Pertama'
        'Record Sebelumnya'
        'Record Berikutnya'
        'Record Terakhir'
        'Tambah Data'
        'Hapus Data'
        'Ganti Data'
        'Simpan'
        'Batal Perubahan'
        'Refresh Data')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnClose: TButton
      Left = 488
      Top = 0
      Width = 75
      Height = 28
      Cancel = True
      Caption = '&Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    BeforeScroll = qrySKPDBeforeScroll
    AfterScroll = qrySKPDAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from tblUnit'
      'order by unitkd')
    Left = 352
    Top = 24
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 384
    Top = 28
  end
  object qryUser: TADOQuery
    Connection = GModule.conn
    AfterInsert = qryUserAfterInsert
    AfterEdit = qryUserAfterEdit
    BeforePost = qryUserBeforePost
    AfterPost = qryUserAfterPost
    AfterCancel = qryUserAfterCancel
    OnCalcFields = qryUserCalcFields
    DataSource = dsSKPD
    Parameters = <
      item
        Name = 'unitkd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblUser'
      'where unitkd=:unitkd')
    Left = 276
    Top = 29
    object qryUseruserid: TStringField
      FieldName = 'userid'
      Size = 25
    end
    object qryUserusernm: TStringField
      FieldName = 'usernm'
      Size = 50
    end
    object qryUsergroupid: TStringField
      FieldName = 'groupid'
      Size = 50
    end
    object qryUserdatecreated: TDateTimeField
      FieldName = 'datecreated'
    end
    object qryUserdisabled: TBooleanField
      FieldName = 'disabled'
    end
    object qryUserpasswd: TStringField
      FieldName = 'passwd'
      Size = 50
    end
    object qryUserAllUnit: TBooleanField
      FieldName = 'AllUnit'
    end
    object qryUserUnitID: TIntegerField
      FieldName = 'UnitID'
    end
    object qryUserSubUnitID: TIntegerField
      FieldName = 'SubUnitID'
    end
    object qryUserIsAPBDGranted: TBooleanField
      FieldName = 'IsAPBDGranted'
    end
    object qryUserIsSPDGranted: TBooleanField
      FieldName = 'IsSPDGranted'
    end
    object qryUserIsSPMGranted: TBooleanField
      FieldName = 'IsSPMGranted'
    end
    object qryUserIsSP2DGranted: TBooleanField
      FieldName = 'IsSP2DGranted'
    end
    object qryUserIsAKGranted: TBooleanField
      FieldName = 'IsAKGranted'
    end
    object qryUserIsSTSGranted: TBooleanField
      FieldName = 'IsSTSGranted'
    end
    object qryUserIsSPPGranted: TBooleanField
      FieldName = 'IsSPPGranted'
    end
    object qryUserIsSPJGranted: TBooleanField
      FieldName = 'IsSPJGranted'
    end
    object qryUserGROUP_ID: TSmallintField
      FieldName = 'GROUP_ID'
    end
    object qryUserUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qryUserACCESSSUB_UNIT: TBooleanField
      FieldName = 'ACCESSSUB_UNIT'
    end
    object qryUserPWD: TStringField
      FieldKind = fkCalculated
      FieldName = 'PWD'
      Size = 30
      Calculated = True
    end
    object qryUserSKPD: TStringField
      FieldKind = fkCalculated
      FieldName = 'SKPD'
      Calculated = True
    end
    object qryUserAKSESSUB: TStringField
      FieldKind = fkCalculated
      FieldName = 'AKSESSUB'
      Size = 3
      Calculated = True
    end
    object qryUserStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 3
      Calculated = True
    end
    object qryUserGROUP: TStringField
      FieldKind = fkCalculated
      FieldName = 'GROUP'
      Size = 50
      Calculated = True
    end
  end
  object dsUser: TDataSource
    AutoEdit = False
    DataSet = qryUser
    Left = 308
    Top = 29
  end
  object qryGroup: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbluser_group'
      'order by group_id')
    Left = 180
    Top = 102
    object qryGroupGROUP_ID: TSmallintField
      FieldName = 'GROUP_ID'
    end
    object qryGroupGROUPNAME: TStringField
      FieldName = 'GROUPNAME'
    end
  end
end
