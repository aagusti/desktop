object GModule: TGModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 451
  Top = 50
  Height = 477
  Width = 596
  object conn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=GJ_2012_ALL;Data Source=(LOCAL);Use Proced' +
      'ure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstati' +
      'on ID=AGUS-Q;Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 89
  end
  object FQuery: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 16
    Top = 8
  end
  object BQuery: TADOQuery
    Connection = conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.nip, a.nama, b.golongankd, a.sts_pegawaikd,'
      #9'pangkat_golongan = case when b.uraian = null then b.golongankd'
      #9'else b.uraian + '#39' (Golongan '#39' + b.golongankd + '#39')'#39' end,'
      #9'c.unitkd, c.unitnm, d.aktif_kd, d.uraian as aktif_nm'
      'from [pegawai] a inner join tblgolongan b on'
      #9'a.golongankd = b.golongankd inner join'
      #9'tblunit c on a.unitkd = c.unitkd inner join'
      #9'tblSTS_Aktif d on a.aktif_kd = d.aktif_kd'
      '--where <stsWhere>'
      'order by a.nip')
    Left = 192
    Top = 84
  end
  object qryExec: TADOCommand
    Connection = conn
    Prepared = True
    Parameters = <>
    ParamCheck = False
    Left = 224
    Top = 240
  end
  object SQuery1: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 404
    Top = 196
  end
  object SQuery2: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 460
    Top = 196
  end
  object qryParameter: TADOQuery
    Connection = conn
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
      'Tahun=:Tahun'
      '')
    Left = 128
    Top = 328
  end
end
