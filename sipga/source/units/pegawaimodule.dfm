object DMPegawai: TDMPegawai
  OldCreateOrder = False
  Left = 399
  Top = 27
  Height = 594
  Width = 564
  object dsParam: TDataSource
    AutoEdit = False
    DataSet = qryParam
    Left = 168
    Top = 8
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
      'Tahun=:Tahun'
      '')
    Left = 168
    Top = 56
  end
  object Pegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = PegawaiAfterOpen
    AfterInsert = PegawaiAfterInsert
    AfterEdit = PegawaiAfterEdit
    BeforePost = PegawaiBeforePost
    AfterPost = PegawaiAfterPost
    AfterCancel = PegawaiAfterCancel
    AfterScroll = PegawaiAfterScroll
    OnCalcFields = PegawaiCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PEGAWAI'
      'ORDER BY NIP')
    Left = 24
    Top = 48
    object PegawaiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object PegawaiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object PegawaiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object PegawaiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object PegawaiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object PegawaiTGL_BUP: TDateTimeField
      FieldName = 'TGL_BUP'
      DisplayFormat = 'dd-mmmm-yyyyy'
    end
    object PegawaiJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object PegawaiBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object PegawaiREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object PegawaiNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object PegawaiNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object PegawaiNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object PegawaiALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object PegawaiNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object PegawaiSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object PegawaiTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object PegawaiSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object PegawaiSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object PegawaiAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object PegawaiJML_SI: TSmallintField
      FieldName = 'JML_SI'
    end
    object PegawaiJML_ANAK: TSmallintField
      FieldName = 'JML_ANAK'
    end
    object PegawaiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object PegawaiPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object PegawaiPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object PegawaiV_JAB_STRUKTUR: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object PegawaiGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object PegawaiTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object PegawaiMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object PegawaiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object PegawaiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object PegawaiTMT_FUNGSI: TDateTimeField
      FieldName = 'TMT_FUNGSI'
    end
    object PegawaiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object PegawaiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object PegawaiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object PegawaiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object PegawaiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object PegawaiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object PegawaiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object PegawaiGAJI_POKOK: TFloatField
      FieldName = 'GAJI_POKOK'
    end
    object PegawaiTUNJ_ISTRI: TFloatField
      FieldName = 'TUNJ_ISTRI'
    end
    object PegawaiTUNJ_ANAK: TFloatField
      FieldName = 'TUNJ_ANAK'
    end
    object PegawaiTUNJ_BERAS: TFloatField
      FieldName = 'TUNJ_BERAS'
    end
    object PegawaiTUNJ_JAB_STRUKTUR: TFloatField
      FieldName = 'TUNJ_JAB_STRUKTUR'
    end
    object PegawaiTUNJ_JAB_FUNGSI: TFloatField
      FieldName = 'TUNJ_JAB_FUNGSI'
    end
    object PegawaiTUNJ_KERJA: TFloatField
      FieldName = 'TUNJ_KERJA'
    end
    object PegawaiTUNJ_UMUM: TFloatField
      FieldName = 'TUNJ_UMUM'
    end
    object PegawaiTUNJ_UMUM_TAMB: TFloatField
      FieldName = 'TUNJ_UMUM_TAMB'
    end
    object PegawaiTUNJ_OTSUS: TFloatField
      FieldName = 'TUNJ_OTSUS'
    end
    object PegawaiTUNJ_DT: TFloatField
      FieldName = 'TUNJ_DT'
    end
    object PegawaiTUNJ_ASKES: TFloatField
      FieldName = 'TUNJ_ASKES'
    end
    object PegawaiTUNJ_PENGHASILAN: TFloatField
      FieldName = 'TUNJ_PENGHASILAN'
    end
    object PegawaiPEMBULATAN: TFloatField
      FieldName = 'PEMBULATAN'
    end
    object PegawaiPPH: TFloatField
      FieldName = 'PPH'
    end
    object PegawaiPOT_IWP: TFloatField
      FieldName = 'POT_IWP'
    end
    object PegawaiPOT_TAPERUM: TFloatField
      FieldName = 'POT_TAPERUM'
    end
    object PegawaiPOT_SEWA_RUMAH: TFloatField
      FieldName = 'POT_SEWA_RUMAH'
    end
    object PegawaiPOT_PANGAN: TFloatField
      FieldName = 'POT_PANGAN'
    end
    object PegawaiPOT_KORPRI: TFloatField
      FieldName = 'POT_KORPRI'
    end
    object PegawaiPOT_GAJI_LEBIH: TFloatField
      FieldName = 'POT_GAJI_LEBIH'
    end
    object PegawaiPOT_HUTANG: TFloatField
      FieldName = 'POT_HUTANG'
    end
    object PegawaiBIAYA_JABATAN: TFloatField
      FieldName = 'BIAYA_JABATAN'
    end
    object PegawaiBIAYA_PENSIUN: TFloatField
      FieldName = 'BIAYA_PENSIUN'
    end
    object PegawaiPersen_Gaji: TFloatField
      FieldName = 'Persen_Gaji'
    end
    object PegawaiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object PegawaiISBAYARGJ: TBooleanField
      FieldName = 'ISBAYARGJ'
    end
    object PegawaiOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 50
    end
    object PegawaiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object PegawaiGOLPGW: TStringField
      FieldKind = fkLookup
      FieldName = 'GOLPGW'
      LookupDataSet = qryGolongan
      LookupKeyFields = 'GOLONGANKD'
      LookupResultField = 'URAIAN'
      KeyFields = 'GOLONGANKD'
      Size = 25
      Lookup = True
    end
    object PegawaiSTSPGW: TStringField
      FieldKind = fkLookup
      FieldName = 'STSPGW'
      LookupDataSet = qryStatus
      LookupKeyFields = 'STS_PEGAWAIKD'
      LookupResultField = 'URAIAN'
      KeyFields = 'STS_PEGAWAIKD'
      Lookup = True
    end
    object PegawaiISTAMBAH_BUP: TBooleanField
      FieldName = 'ISTAMBAH_BUP'
    end
    object PegawaiTGLTAMBAH_BUP: TDateTimeField
      FieldName = 'TGLTAMBAH_BUP'
    end
    object PegawaiNIP_LAMA: TStringField
      FieldName = 'NIP_LAMA'
      Size = 18
    end
    object PegawaiGajiBersih: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object PegawaiPotongan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
    object PegawaiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object PegawaiNomorUrut: TLargeintField
      FieldKind = fkCalculated
      FieldName = 'NomorUrut'
      Calculated = True
    end
    object PegawaiISSERTIFIKASI: TBooleanField
      FieldName = 'ISSERTIFIKASI'
    end
  end
  object qryBulan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TBLBULAN'
      'ORDER BY BULAN')
    Left = 272
    Top = 88
  end
  object dsBulan: TDataSource
    DataSet = qryBulan
    Left = 304
    Top = 88
  end
  object qrygajipegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    OnCalcFields = qrygajipegawaiCalcFields
    Parameters = <
      item
        Name = 'Tahun'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '2009'
      end
      item
        Name = 'Bulan'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = '08'
      end
      item
        Name = 'Jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM pegawai_gaji'
      'WHERE (Tahun=:Tahun) AND (Bulan=:Bulan) AND (Jenis=:Jenis)'
      'ORDER BY tahun,bulan,jenis,nip,urut')
    Left = 352
    Top = 144
    object qrygajipegawaiTAHUN: TStringField
      FieldName = 'TAHUN'
      Size = 4
    end
    object qrygajipegawaiBULAN: TStringField
      FieldName = 'BULAN'
      Size = 2
    end
    object qrygajipegawaiJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object qrygajipegawaiURUT: TSmallintField
      FieldName = 'URUT'
    end
    object qrygajipegawaiNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qrygajipegawaiUNITKD: TStringField
      FieldName = 'UNITKD'
    end
    object qrygajipegawaiSUB: TSmallintField
      FieldName = 'SUB'
    end
    object qrygajipegawaiNAMA: TStringField
      FieldName = 'NAMA'
      Size = 40
    end
    object qrygajipegawaiTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qrygajipegawaiTMP_LAHIR: TStringField
      FieldName = 'TMP_LAHIR'
      Size = 40
    end
    object qrygajipegawaiJNS_KELAMIN: TStringField
      FieldName = 'JNS_KELAMIN'
      Size = 1
    end
    object qrygajipegawaiBANK: TStringField
      FieldName = 'BANK'
      Size = 2
    end
    object qrygajipegawaiREKENING: TStringField
      FieldName = 'REKENING'
      Size = 25
    end
    object qrygajipegawaiNPWP: TStringField
      FieldName = 'NPWP'
      Size = 25
    end
    object qrygajipegawaiNO_PEGAWAI: TStringField
      FieldName = 'NO_PEGAWAI'
      Size = 5
    end
    object qrygajipegawaiNOJJP: TStringField
      FieldName = 'NOJJP'
      Size = 12
    end
    object qrygajipegawaiALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 100
    end
    object qrygajipegawaiNAMASI: TStringField
      FieldName = 'NAMASI'
      Size = 40
    end
    object qrygajipegawaiSTS_PEGAWAIKD: TStringField
      FieldName = 'STS_PEGAWAIKD'
      Size = 1
    end
    object qrygajipegawaiTMT_PEGAWAI: TDateTimeField
      FieldName = 'TMT_PEGAWAI'
    end
    object qrygajipegawaiSTS_KWN: TStringField
      FieldName = 'STS_KWN'
      Size = 1
    end
    object qrygajipegawaiSTS_SIPIL: TStringField
      FieldName = 'STS_SIPIL'
      Size = 6
    end
    object qrygajipegawaiAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 15
    end
    object qrygajipegawaiJML_SI: TIntegerField
      FieldName = 'JML_SI'
    end
    object qrygajipegawaiJML_ANAK: TIntegerField
      FieldName = 'JML_ANAK'
    end
    object qrygajipegawaiGOLONGANKD: TStringField
      FieldName = 'GOLONGANKD'
      Size = 5
    end
    object qrygajipegawaiTMT_GOLONGAN: TDateTimeField
      FieldName = 'TMT_GOLONGAN'
    end
    object qrygajipegawaiMASAKERJA: TIntegerField
      FieldName = 'MASAKERJA'
    end
    object qrygajipegawaiJBT_FUNGSIKD: TStringField
      FieldName = 'JBT_FUNGSIKD'
      Size = 5
    end
    object qrygajipegawaiJBT_STRUKTURKD: TStringField
      FieldName = 'JBT_STRUKTURKD'
      Size = 5
    end
    object qrygajipegawaiTMT_JABATAN: TDateTimeField
      FieldName = 'TMT_JABATAN'
    end
    object qrygajipegawaiTUNJ_JAB_FUNGSI: TBCDField
      FieldName = 'TUNJ_JAB_FUNGSI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_JAB_STRUKTUR: TBCDField
      FieldName = 'TUNJ_JAB_STRUKTUR'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiGAJI_POKOK: TIntegerField
      FieldName = 'GAJI_POKOK'
    end
    object qrygajipegawaiTMT_GAJI_POKOK: TDateTimeField
      FieldName = 'TMT_GAJI_POKOK'
    end
    object qrygajipegawaiTUNJ_ISTRI: TBCDField
      FieldName = 'TUNJ_ISTRI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_ANAK: TBCDField
      FieldName = 'TUNJ_ANAK'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_BERAS: TBCDField
      FieldName = 'TUNJ_BERAS'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiGURUKD: TStringField
      FieldName = 'GURUKD'
      Size = 1
    end
    object qrygajipegawaiOPERATOR: TStringField
      FieldName = 'OPERATOR'
    end
    object qrygajipegawaiTGL_UBAH: TDateTimeField
      FieldName = 'TGL_UBAH'
    end
    object qrygajipegawaiPIC_FOTO: TBlobField
      FieldName = 'PIC_FOTO'
    end
    object qrygajipegawaiTUNJ_KERJA: TBCDField
      FieldName = 'TUNJ_KERJA'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTDTKD: TStringField
      FieldName = 'TDTKD'
      Size = 1
    end
    object qrygajipegawaiPEND_TERAKHIR: TStringField
      FieldName = 'PEND_TERAKHIR'
      Size = 100
    end
    object qrygajipegawaiPEND_JURUSAN: TStringField
      FieldName = 'PEND_JURUSAN'
      Size = 100
    end
    object qrygajipegawaiV_JAB_STRUKTUR: TStringField
      FieldName = 'V_JAB_STRUKTUR'
      Size = 75
    end
    object qrygajipegawaiPOT_IWP: TBCDField
      FieldName = 'POT_IWP'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_TAPERUM: TBCDField
      FieldName = 'POT_TAPERUM'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_SEWA_RUMAH: TBCDField
      FieldName = 'POT_SEWA_RUMAH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_PANGAN: TBCDField
      FieldName = 'POT_PANGAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_KORPRI: TBCDField
      FieldName = 'POT_KORPRI'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_GAJI_LEBIH: TBCDField
      FieldName = 'POT_GAJI_LEBIH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPOT_HUTANG: TBCDField
      FieldName = 'POT_HUTANG'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPEMBULATAN: TBCDField
      FieldName = 'PEMBULATAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPPH: TBCDField
      FieldName = 'PPH'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_UMUM: TBCDField
      FieldName = 'TUNJ_UMUM'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_UMUM_TAMB: TBCDField
      FieldName = 'TUNJ_UMUM_TAMB'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_OTSUS: TBCDField
      FieldName = 'TUNJ_OTSUS'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_DT: TBCDField
      FieldName = 'TUNJ_DT'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_ASKES: TBCDField
      FieldName = 'TUNJ_ASKES'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiTUNJ_PENGHASILAN: TBCDField
      FieldName = 'TUNJ_PENGHASILAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiBIAYA_JABATAN: TBCDField
      FieldName = 'BIAYA_JABATAN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiBIAYA_PENSIUN: TBCDField
      FieldName = 'BIAYA_PENSIUN'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiPersen_Gaji: TBCDField
      FieldName = 'Persen_Gaji'
      Precision = 18
      Size = 0
    end
    object qrygajipegawaiIsTTU: TSmallintField
      FieldName = 'IsTTU'
    end
    object qrygajipegawaiAKTIF_KD: TIntegerField
      FieldName = 'AKTIF_KD'
    end
    object qrygajipegawaiPTKP: TIntegerField
      FieldName = 'PTKP'
    end
    object qrygajipegawaiAKTIF_TGL: TDateTimeField
      FieldName = 'AKTIF_TGL'
    end
    object qrygajipegawaiGajiDanTunjangan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiDanTunjangan'
      Calculated = True
    end
    object qrygajipegawaiGajiBersih: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GajiBersih'
      Calculated = True
    end
    object qrygajipegawaiPotongan: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Potongan'
      Calculated = True
    end
  end
  object dsGajiPegawai: TDataSource
    DataSet = qrygajipegawai
    Left = 352
    Top = 192
  end
  object qryStruktur: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblJbt_Struktur'
      'ORDER BY Jbt_StrukturKd')
    Left = 24
    Top = 248
  end
  object qryFungsional: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblJBT_Fungsi'
      'ORDER BY JBT_FungsiKd')
    Left = 160
    Top = 184
  end
  object dsFungsional: TDataSource
    DataSet = qryFungsional
    Left = 200
    Top = 184
  end
  object dsPegawai: TDataSource
    AutoEdit = False
    DataSet = Pegawai
    Left = 24
    Top = 88
  end
  object qrySKPD: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblUnit'
      'ORDER BY UnitKd')
    Left = 96
    Top = 264
  end
  object dsSKPD: TDataSource
    AutoEdit = False
    DataSet = qrySKPD
    Left = 128
    Top = 264
  end
  object qryStatus: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip FROM tblSTS_PEGAWAI'
      'ORDER BY STS_PEGAWAIKD')
    Left = 168
    Top = 264
  end
  object dsStatus: TDataSource
    DataSet = qryStatus
    Left = 200
    Top = 264
  end
  object dsStruktur: TDataSource
    DataSet = qryStruktur
    Left = 16
    Top = 296
  end
  object qryGuru: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblGuru'
      'ORDER BY GuruKd')
    Left = 304
    Top = 264
  end
  object dsGuru: TDataSource
    DataSet = qryGuru
    Left = 336
    Top = 264
  end
  object qryAktif: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblSTS_Aktif'
      'ORDER BY Aktif_Kd')
    Left = 48
    Top = 368
  end
  object dsAktif: TDataSource
    DataSet = qryAktif
    Left = 80
    Top = 368
  end
  object qryGolongan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '#39' -'#39' as strip  FROM tblGolongan'
      'where issummary<>1'
      'ORDER BY GolonganKd desc')
    Left = 160
    Top = 336
  end
  object dsGolongan: TDataSource
    DataSet = qryGolongan
    Left = 192
    Top = 336
  end
  object qryGaji: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pegawai_gaji'
      'where tahun='#39#39)
    Left = 364
    Top = 392
  end
  object TempPegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pegawai')
    Left = 440
    Top = 448
  end
  object qryTanggungan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    BeforePost = qryTanggunganBeforePost
    DataSource = dsPegawai
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
      'select * from tblTanggungan'
      'where nip=:nip'
      'order by no_urut')
    Left = 144
    Top = 439
    object qryTanggunganNO_URUT: TSmallintField
      FieldName = 'NO_URUT'
    end
    object qryTanggunganNIP: TStringField
      FieldName = 'NIP'
      Size = 18
    end
    object qryTanggunganNAMA: TStringField
      FieldName = 'NAMA'
      Size = 100
    end
    object qryTanggunganTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object qryTanggunganHUB_KD: TStringField
      FieldName = 'HUB_KD'
      Size = 2
    end
    object qryTanggunganKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
    object qryTanggunganHubungan: TStringField
      FieldKind = fkLookup
      FieldName = 'Hubungan'
      LookupDataSet = qryHubungan
      LookupKeyFields = 'HUB_KD'
      LookupResultField = 'HUB_NAMA'
      KeyFields = 'HUB_KD'
      Size = 15
      Lookup = True
    end
    object qryTanggunganISTANGGUNG: TBooleanField
      FieldName = 'ISTANGGUNG'
    end
    object qryTanggunganISSEKOLAH: TBooleanField
      FieldName = 'ISSEKOLAH'
    end
    object qryTanggunganPEKERJAAN: TStringField
      FieldName = 'PEKERJAAN'
      Size = 50
    end
    object qryTanggunganTGLPUTUSTUNJ: TDateTimeField
      FieldName = 'TGLPUTUSTUNJ'
    end
    object qryTanggunganNMSEKOLAH: TStringField
      FieldName = 'NMSEKOLAH'
      Size = 50
    end
  end
  object dsTanggungan: TDataSource
    AutoEdit = False
    DataSet = qryTanggungan
    Left = 144
    Top = 487
  end
  object dsHub: TDataSource
    AutoEdit = False
    DataSet = qryHubungan
    Left = 216
    Top = 480
  end
  object qryHubungan: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblHubungan'
      'order by Urutan')
    Left = 272
    Top = 480
  end
  object dsGaji: TDataSource
    AutoEdit = False
    DataSet = qryGaji
    Left = 400
    Top = 392
  end
  object qrySIPIL: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_SIPIL'
      'order by C_KODE')
    Left = 416
    Top = 312
  end
  object dsSIPIL: TDataSource
    DataSet = qrySIPIL
    Left = 464
    Top = 320
  end
  object qryKawin: TADOQuery
    Connection = GModule.conn
    Parameters = <>
    SQL.Strings = (
      'select *, '#39' -'#39' as strip  from tblSTS_KAWIN'
      'order by STS_KAWINKD')
    Left = 424
    Top = 240
  end
  object dsKawin: TDataSource
    DataSet = qryKawin
    Left = 472
    Top = 248
  end
end
