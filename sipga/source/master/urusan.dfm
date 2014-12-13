object frmUrusan: TfrmUrusan
  Left = 348
  Top = 58
  Width = 630
  Height = 480
  ActiveControl = grdUrusan
  Caption = 'Klasifikasi Urusan Pemerintahan Daerah '
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
    Top = 412
    Width = 622
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
      DataSource = dsUrusan
      TabOrder = 0
    end
    object btnPrint: TButton
      Left = 245
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      Visible = False
    end
    object PanelClose: TPanel
      Left = 532
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
    Width = 622
    Height = 412
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
      Width = 618
      Height = 408
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsUrusan
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'UrusanKd'
          Title.Caption = 'Kode'
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'UrusanNm'
          Title.Caption = 'Uraian'
          Width = 460
          Visible = True
        end>
    end
  end
  object dsUrusan: TDataSource
    AutoEdit = False
    DataSet = Urusan
    Left = 336
    Top = 224
  end
  object Urusan: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblUrusan'
      'ORDER BY UrusanKd')
    Left = 360
    Top = 240
  end
end
