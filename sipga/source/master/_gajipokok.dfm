object frmGajiPokok: TfrmGajiPokok
  Left = 463
  Top = 67
  Width = 580
  Height = 465
  ActiveControl = grdGajiPokok
  Caption = 'Klasifikasi GajiPokok Pegawai'
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
    Top = 393
    Width = 564
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
      DataSource = dsGajiPokok
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
      Left = 474
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
    Width = 564
    Height = 393
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
    object grdGajiPokok: TDBGrid
      Left = 2
      Top = 2
      Width = 560
      Height = 389
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsGajiPokok
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
          FieldName = 'GOLONGANKD'
          Title.Caption = 'Golongan'
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'MASAKERJA'
          Title.Alignment = taRightJustify
          Title.Caption = 'MasaKerja'
          Width = 79
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'JUMLAH'
          Title.Alignment = taRightJustify
          Title.Caption = 'Gaji'
          Width = 70
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'JUMLAH_LAMA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Gaji Lama'
          Width = 81
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'PP'
          Width = 257
          Visible = True
        end>
    end
  end
  object dsGajiPokok: TDataSource
    AutoEdit = False
    DataSet = GajiPokok
    Left = 336
    Top = 224
  end
  object GajiPokok: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = GajiPokokAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGaji_Pokok'
      'ORDER BY GolonganKd, MasaKerja')
    Left = 360
    Top = 240
  end
end
