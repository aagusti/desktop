object dmGaji: TdmGaji
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 553
  Top = 25
  Height = 539
  Width = 592
  object qryStruktur: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJbt_Struktur'
      'ORDER BY Jbt_StrukturKd')
    Left = 184
    Top = 200
  end
  object qryFungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJBT_Fungsi'
      'ORDER BY JBT_FungsiKd')
    Left = 184
    Top = 256
  end
  object qryGajiPokok: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGaji_Pokok'
      'ORDER BY GolonganKD, MasaKerja')
    Left = 176
    Top = 24
  end
  object qryParam: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblParameter'
      'Where'
      'Tahun=:Tahun')
    Left = 24
    Top = 16
  end
  object qryTunjUmum: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTUNJ_UMUM'
      'ORDER BY GOLONGANKD')
    Left = 176
    Top = 80
  end
  object qryTunjOtsus: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTUNJ_OTSUS'
      'ORDER BY GOLONGANKD')
    Left = 40
    Top = 336
  end
  object qryTunjDT: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTUNJ_DT'
      'ORDER BY GOLONGANKD')
    Left = 40
    Top = 280
  end
  object qryTaperum: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTaperum'
      'ORDER BY GOLONGANKD')
    Left = 192
    Top = 312
  end
  object qryStatPeg: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblSTS_PEGAWAI'
      'ORDER BY STS_PEGAWAIKD')
    Left = 176
    Top = 136
  end
  object qryPTKP: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblTaperum'
      'ORDER BY GOLONGANKD')
    Left = 192
    Top = 376
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 32
    Top = 400
  end
  object dsAktif: TDataSource
    DataSet = qryAktif
    Left = 64
    Top = 400
  end
  object qryJenisGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblJenisGaji'
      'ORDER BY Jenis_KD')
    Left = 40
    Top = 152
  end
  object DataGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pegawai_gaji')
    Left = 400
    Top = 32
  end
  object TempData: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    Left = 416
    Top = 136
  end
  object qryGuru: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblGuru'
      'ORDER BY  GuruKd')
    Left = 360
    Top = 240
  end
end
