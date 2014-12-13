object frmOtsus: TfrmOtsus
  Left = 216
  Top = 254
  Width = 580
  Height = 480
  ActiveControl = grdOtsus
  Caption = 'Klasifikasi Otsus Pegawai'
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
    Width = 572
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
      DataSource = dsOtsus
      TabOrder = 0
    end
    object btnPrint: TButton
      Left = 245
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      OnClick = btnPrintClick
    end
    object PanelClose: TPanel
      Left = 482
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
    Width = 572
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
    object grdOtsus: TDBGrid
      Left = 2
      Top = 2
      Width = 568
      Height = 408
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsOtsus
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
          FieldName = 'JBT_FUNGSIKD'
          Title.Caption = 'Kode'
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'JBT_FUNGSI'
          Title.Caption = 'Uraian'
          Width = 379
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'JUMLAH'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'LAMA'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
  end
  object dsOtsus: TDataSource
    DataSet = Otsus
    Left = 336
    Top = 224
  end
  object Otsus: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = OtsusAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJbt_Fungsi'
      'ORDER BY Jbt_FungsiKd')
    Left = 360
    Top = 240
  end
end
