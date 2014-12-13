object frmExportGaji: TfrmExportGaji
  Left = 687
  Top = 70
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Export Gaji Pokok'
  ClientHeight = 531
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 377
    Height = 29
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      377
      29)
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 81
      Height = 29
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Export'
    end
    object SpeedButton2: TSpeedButton
      Left = 296
      Top = 0
      Width = 81
      Height = 29
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Close'
      OnClick = SpeedButton2Click
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 377
    Height = 484
    Align = alClient
    Indent = 19
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 484
    Width = 377
    Height = 18
    Align = alBottom
    TabOrder = 2
    object ProgressImport: TFlatGauge
      Left = 1
      Top = 1
      Width = 375
      Height = 16
      AdvColorBorder = 0
      Transparent = True
      ColorBorder = 8623776
      Progress = 25
      Align = alClient
    end
  end
  object dsGajiPokok: TDataSource
    DataSet = GajiPokok
    Left = 72
    Top = 188
  end
  object GajiPokok: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    DataSource = dsGolongan
    Parameters = <
      item
        Name = 'golongankd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblGaji_Pokok'
      'where golongankd=:golongankd'
      'ORDER BY GolonganKd, MasaKerja')
    Left = 96
    Top = 204
  end
  object dsGolongan: TDataSource
    DataSet = Golongan
    Left = 188
    Top = 156
  end
  object Golongan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGolongan'
      'ORDER BY GolonganKd')
    Left = 212
    Top = 172
  end
end
