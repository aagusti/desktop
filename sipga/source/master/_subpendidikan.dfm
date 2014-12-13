object frmSubPendidikan: TfrmSubPendidikan
  Left = 307
  Top = 54
  Width = 626
  Height = 496
  Caption = 'Sub Unit Dinas Pendidikan'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 618
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
      Width = 240
      Height = 25
      DataSource = dsSubPddk
      TabOrder = 0
    end
    object btnPrint: TButton
      Left = 245
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
    end
    object PanelClose: TPanel
      Left = 528
      Top = 2
      Width = 88
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
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
    Width = 618
    Height = 428
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object grdUrusan: TDBGrid
      Left = 2
      Top = 2
      Width = 614
      Height = 424
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsSubPddk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Color = clWindow
          Expanded = False
          FieldName = 'SUB'
          Title.Caption = 'Sub'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWindow
          Expanded = False
          FieldName = 'KELOMPOK_KODE'
          PickList.Strings = (
            '51'
            '52'
            '59')
          Title.Caption = 'Kelompok Sekolah'
          Width = 141
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'NM_SUB'
          Title.Caption = 'Nama Sekolah'
          Width = 350
          Visible = True
        end>
    end
  end
  object dsSubPddk: TDataSource
    DataSet = SubPddk
    Left = 336
    Top = 224
  end
  object SubPddk: TADOQuery
    Connection = GModule.conn
    BeforePost = SubPddkBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblunit_sub'
      'ORDER BY kelompok_kode, sub, sub_unit')
    Left = 360
    Top = 240
  end
end
