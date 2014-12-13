unit PegawaiModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms, DB, ADODB, Math, Dialogs, DateUtils,
  StrUtils, Controls;

type
  TDMPegawai = class(TDataModule)
    dsParam: TDataSource;
    qryParam: TADOQuery;
    Pegawai: TADOQuery;
    PegawaiGajiDanTunjangan: TFloatField;
    PegawaiPotongan: TFloatField;
    PegawaiGajiBersih: TFloatField;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    qrygajipegawai: TADOQuery;
    qrygajipegawaiTAHUN: TStringField;
    qrygajipegawaiBULAN: TStringField;
    qrygajipegawaiJENIS: TSmallintField;
    qrygajipegawaiURUT: TSmallintField;
    qrygajipegawaiNIP: TStringField;
    qrygajipegawaiUNITKD: TStringField;
    qrygajipegawaiSUB: TSmallintField;
    qrygajipegawaiNAMA: TStringField;
    qrygajipegawaiTGL_LAHIR: TDateTimeField;
    qrygajipegawaiTMP_LAHIR: TStringField;
    qrygajipegawaiJNS_KELAMIN: TStringField;
    qrygajipegawaiBANK: TStringField;
    qrygajipegawaiREKENING: TStringField;
    qrygajipegawaiNPWP: TStringField;
    qrygajipegawaiNO_PEGAWAI: TStringField;
    qrygajipegawaiNOJJP: TStringField;
    qrygajipegawaiALAMAT: TStringField;
    qrygajipegawaiNAMASI: TStringField;
    qrygajipegawaiSTS_PEGAWAIKD: TStringField;
    qrygajipegawaiTMT_PEGAWAI: TDateTimeField;
    qrygajipegawaiSTS_KWN: TStringField;
    qrygajipegawaiSTS_SIPIL: TStringField;
    qrygajipegawaiAGAMA: TStringField;
    qrygajipegawaiJML_SI: TIntegerField;
    qrygajipegawaiJML_ANAK: TIntegerField;
    qrygajipegawaiGOLONGANKD: TStringField;
    qrygajipegawaiTMT_GOLONGAN: TDateTimeField;
    qrygajipegawaiMASAKERJA: TIntegerField;
    qrygajipegawaiJBT_FUNGSIKD: TStringField;
    qrygajipegawaiJBT_STRUKTURKD: TStringField;
    qrygajipegawaiTMT_JABATAN: TDateTimeField;
    qrygajipegawaiTUNJ_JAB_FUNGSI: TBCDField;
    qrygajipegawaiTUNJ_JAB_STRUKTUR: TBCDField;
    qrygajipegawaiGAJI_POKOK: TIntegerField;
    qrygajipegawaiTMT_GAJI_POKOK: TDateTimeField;
    qrygajipegawaiTUNJ_ISTRI: TBCDField;
    qrygajipegawaiTUNJ_ANAK: TBCDField;
    qrygajipegawaiTUNJ_BERAS: TBCDField;
    qrygajipegawaiGURUKD: TStringField;
    qrygajipegawaiOPERATOR: TStringField;
    qrygajipegawaiTGL_UBAH: TDateTimeField;
    qrygajipegawaiPIC_FOTO: TBlobField;
    qrygajipegawaiTUNJ_KERJA: TBCDField;
    qrygajipegawaiTDTKD: TStringField;
    qrygajipegawaiPEND_TERAKHIR: TStringField;
    qrygajipegawaiPEND_JURUSAN: TStringField;
    qrygajipegawaiV_JAB_STRUKTUR: TStringField;
    qrygajipegawaiPOT_IWP: TBCDField;
    qrygajipegawaiPOT_TAPERUM: TBCDField;
    qrygajipegawaiPOT_SEWA_RUMAH: TBCDField;
    qrygajipegawaiPOT_PANGAN: TBCDField;
    qrygajipegawaiPOT_KORPRI: TBCDField;
    qrygajipegawaiPOT_GAJI_LEBIH: TBCDField;
    qrygajipegawaiPOT_HUTANG: TBCDField;
    qrygajipegawaiPEMBULATAN: TBCDField;
    qrygajipegawaiPPH: TBCDField;
    qrygajipegawaiTUNJ_UMUM: TBCDField;
    qrygajipegawaiTUNJ_UMUM_TAMB: TBCDField;
    qrygajipegawaiTUNJ_OTSUS: TBCDField;
    qrygajipegawaiTUNJ_DT: TBCDField;
    qrygajipegawaiTUNJ_ASKES: TBCDField;
    qrygajipegawaiTUNJ_PENGHASILAN: TBCDField;
    qrygajipegawaiBIAYA_JABATAN: TBCDField;
    qrygajipegawaiBIAYA_PENSIUN: TBCDField;
    qrygajipegawaiPersen_Gaji: TBCDField;
    qrygajipegawaiIsTTU: TSmallintField;
    qrygajipegawaiAKTIF_KD: TIntegerField;
    qrygajipegawaiPTKP: TIntegerField;
    qrygajipegawaiAKTIF_TGL: TDateTimeField;
    qrygajipegawaiGajiDanTunjangan: TFloatField;
    qrygajipegawaiGajiBersih: TFloatField;
    qrygajipegawaiPotongan: TFloatField;
    dsGajiPegawai: TDataSource;
    qryStruktur: TADOQuery;
    qryFungsional: TADOQuery;
    dsFungsional: TDataSource;
    dsPegawai: TDataSource;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    qryStatus: TADOQuery;
    dsStatus: TDataSource;
    dsStruktur: TDataSource;
    qryGuru: TADOQuery;
    dsGuru: TDataSource;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    qryGolongan: TADOQuery;
    dsGolongan: TDataSource;
    qryGaji: TADOQuery;
    TempPegawai: TADOQuery;
    qryTanggungan: TADOQuery;
    qryTanggunganNO_URUT: TSmallintField;
    qryTanggunganNIP: TStringField;
    qryTanggunganNAMA: TStringField;
    qryTanggunganTGL_LAHIR: TDateTimeField;
    qryTanggunganHUB_KD: TStringField;
    qryTanggunganKETERANGAN: TStringField;
    qryTanggunganHubungan: TStringField;
    dsTanggungan: TDataSource;
    dsHub: TDataSource;
    qryHubungan: TADOQuery;
    dsGaji: TDataSource;
    qrySIPIL: TADOQuery;
    dsSIPIL: TDataSource;
    qryKawin: TADOQuery;
    dsKawin: TDataSource;
    PegawaiSTSPGW: TStringField;
    PegawaiGOLPGW: TStringField;
    PegawaiNIP: TStringField;
    PegawaiUNITKD: TStringField;
    PegawaiNAMA: TStringField;
    PegawaiTGL_LAHIR: TDateTimeField;
    PegawaiTMP_LAHIR: TStringField;
    PegawaiJNS_KELAMIN: TStringField;
    PegawaiBANK: TStringField;
    PegawaiREKENING: TStringField;
    PegawaiNPWP: TStringField;
    PegawaiNO_PEGAWAI: TStringField;
    PegawaiNOJJP: TStringField;
    PegawaiALAMAT: TStringField;
    PegawaiNAMASI: TStringField;
    PegawaiSTS_PEGAWAIKD: TStringField;
    PegawaiTMT_PEGAWAI: TDateTimeField;
    PegawaiSTS_KWN: TStringField;
    PegawaiSTS_SIPIL: TStringField;
    PegawaiAGAMA: TStringField;
    PegawaiJML_SI: TSmallintField;
    PegawaiJML_ANAK: TSmallintField;
    PegawaiPTKP: TIntegerField;
    PegawaiPEND_TERAKHIR: TStringField;
    PegawaiPEND_JURUSAN: TStringField;
    PegawaiV_JAB_STRUKTUR: TStringField;
    PegawaiGOLONGANKD: TStringField;
    PegawaiTMT_GOLONGAN: TDateTimeField;
    PegawaiMASAKERJA: TIntegerField;
    PegawaiTMT_GAJI_POKOK: TDateTimeField;
    PegawaiJBT_FUNGSIKD: TStringField;
    PegawaiTMT_FUNGSI: TDateTimeField;
    PegawaiJBT_STRUKTURKD: TStringField;
    PegawaiTMT_JABATAN: TDateTimeField;
    PegawaiAKTIF_KD: TIntegerField;
    PegawaiAKTIF_TGL: TDateTimeField;
    PegawaiGURUKD: TStringField;
    PegawaiTDTKD: TStringField;
    PegawaiPIC_FOTO: TBlobField;
    PegawaiGAJI_POKOK: TFloatField;
    PegawaiTUNJ_ISTRI: TFloatField;
    PegawaiTUNJ_ANAK: TFloatField;
    PegawaiTUNJ_BERAS: TFloatField;
    PegawaiTUNJ_JAB_STRUKTUR: TFloatField;
    PegawaiTUNJ_JAB_FUNGSI: TFloatField;
    PegawaiTUNJ_KERJA: TFloatField;
    PegawaiTUNJ_UMUM: TFloatField;
    PegawaiTUNJ_UMUM_TAMB: TFloatField;
    PegawaiTUNJ_OTSUS: TFloatField;
    PegawaiTUNJ_DT: TFloatField;
    PegawaiTUNJ_ASKES: TFloatField;
    PegawaiTUNJ_PENGHASILAN: TFloatField;
    PegawaiPEMBULATAN: TFloatField;
    PegawaiPPH: TFloatField;
    PegawaiPOT_IWP: TFloatField;
    PegawaiPOT_TAPERUM: TFloatField;
    PegawaiPOT_SEWA_RUMAH: TFloatField;
    PegawaiPOT_PANGAN: TFloatField;
    PegawaiPOT_KORPRI: TFloatField;
    PegawaiPOT_GAJI_LEBIH: TFloatField;
    PegawaiPOT_HUTANG: TFloatField;
    PegawaiBIAYA_JABATAN: TFloatField;
    PegawaiBIAYA_PENSIUN: TFloatField;
    PegawaiPersen_Gaji: TFloatField;
    PegawaiIsTTU: TSmallintField;
    PegawaiISBAYARGJ: TBooleanField;
    PegawaiOPERATOR: TStringField;
    PegawaiTGL_UBAH: TDateTimeField;
    qryTanggunganISTANGGUNG: TBooleanField;
    qryTanggunganISSEKOLAH: TBooleanField;
    qryTanggunganPEKERJAAN: TStringField;
    PegawaiTGL_BUP: TDateTimeField;
    qryTanggunganTGLPUTUSTUNJ: TDateTimeField;
    qryTanggunganNMSEKOLAH: TStringField;
    PegawaiNIP_LAMA: TStringField;
    PegawaiISTAMBAH_BUP: TBooleanField;
    PegawaiTGLTAMBAH_BUP: TDateTimeField;
    PegawaiNomorUrut: TLargeintField;
    PegawaiISSERTIFIKASI: TBooleanField;
    procedure PegawaiAfterInsert(DataSet: TDataSet);
    procedure PegawaiAfterOpen(DataSet: TDataSet);
    procedure PegawaiBeforePost(DataSet: TDataSet);
    procedure PegawaiCalcFields(DataSet: TDataSet);
    procedure qrygajipegawaiCalcFields(DataSet: TDataSet);
    procedure PegawaiAfterPost(DataSet: TDataSet);
    procedure PegawaiAfterEdit(DataSet: TDataSet);
    procedure PegawaiAfterCancel(DataSet: TDataSet);
    procedure PegawaiAfterScroll(DataSet: TDataSet);
    procedure qryTanggunganBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    NIP_Old: String;
    SumberData: Integer;
    //procedure OpenTanggungan;

  public
    { Public declarations }
    procedure UpdateMasterPegawai(Thn, Bln, Jns, NIP: String; TMBulan:String=''; TMTahun:String='');
    procedure UpdateNIPGaji(OldNIP, NewNIP, NewNIPLama: String);
  end;

var
  DMPegawai: TDMPegawai;

implementation

{$R *.dfm}

uses GlobalModule, _GajiDM, _pegawai;

procedure TDMPegawai.UpdateMasterPegawai(Thn, Bln, Jns, NIP: String; TMBulan:String=''; TMTahun:String='');
var SQLStr, Tbl, Fld :String;
    I, M, Sumber : Integer;
begin
  Sumber:= StrToInt(Jns);
  if (Sumber<10) then
    begin
      case StrToInt(Jns) of
      0, 6  : Tbl:= 'Pegawai_Gaji';
      1     : Tbl:= 'Pegawai_Gaji_13';
      2, 3  : Tbl:= 'Pegawai_Gaji_UDWUDT';
      end;
      SQLStr:= 'select * from ' + Tbl + ' where (bulan='+QuotedStr(Bln)+')'+
                'AND(tahun='+QuotedStr(Thn)+')AND(jenis='+Jns+')AND(NIP='+QuotedStr(NIP)+')';
    end
  else
    begin
      Tbl:= 'Pegawai_Gaji_Rapel';
      SQLStr:= 'select * from ' + Tbl + ' where (bulan='+QuotedStr(Bln)+')'+
                'AND(tahun='+QuotedStr(Thn)+')AND(jenis='+Jns+')AND(NIP='+QuotedStr(NIP)+')'+
                'AND(TM_Bulan='+QuotedStr(TMBulan)+')AND(TM_Tahun='+QuotedStr(TMTahun)+')';
    end;
    
  qryGaji.Close;
  qryGaji.SQL.Text:=SQLStr;
  qryGaji.Open;
  if (Pegawai.Active) then Pegawai.Requery()
  else Pegawai.Open;
  Pegawai.Filtered:= False;
  if (qryGaji.IsEmpty)or(Pegawai.IsEmpty) then exit;
  SumberData:= Sumber;
  qryGaji.First;
  M:= Pegawai.Fields.Count - 1;
  if (Pegawai.Locate('NIP', NIP, [loPartialKey])) then
    begin
      Pegawai.Edit;
      for I:= 0 to M do
        begin
          Fld:= UpperCase(Pegawai.Fields[I].FieldName);
          if (Pegawai.Fields[I].FieldKind=fkData) then
            begin
              if (Fld<>'NIP') then
                begin
                  if (qryGaji.FindField(Fld)<>nil) then
                    Pegawai.FieldByName(Fld).Value:= qryGaji.FieldByName(Fld).Value;
                end;
            end;
        end;
      qryGaji.Close;
      try
        Pegawai.Post;
      except
        on Ex: Exception do
          begin
            MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtError, [mbOK], 0);
            Pegawai.Cancel;
          end;
      end;
    end;
  SumberData:= -1;
end;

procedure TDMPegawai.UpdateNIPGaji(OldNIP, NewNIP, NewNIPLama: String);
const PGWGaji: String = 'PEGAWAI_GAJI';
      PGWGaji13: String = 'PEGAWAI_GAJI_13';
      PGWGajiRapel: String = 'PEGAWAI_GAJI_RAPEL';
      PGWGajiUDWUDT: String = 'PEGAWAI_GAJI_UDWUDT';
var strSQL, strSet, strWhere: String;
begin
  strSQL:= 'Update ';
  strSet:= ' set NIP=' + QuotedStr(NewNIP) + ', NIP_LAMA=' + QuotedStr(NewNIPLama);
  strWhere:= ' Where NIP=' + QuotedStr(OldNIP);
  if (SumberData<>0) then GModule.SQLExecute(strSQL + PGWGaji + strSet + strWhere);
  if (SumberData<>1) then GModule.SQLExecute(strSQL + PGWGaji13 + strSet + strWhere);
  if (SumberData<10) then GModule.SQLExecute(strSQL + PGWGajiRapel + strSet + strWhere);
  if ((SumberData<2) or (SumberData>3)) then GModule.SQLExecute(strSQL + PGWGajiUDWUDT + strSet + strWhere);
end;

procedure TDMPegawai.PegawaiAfterInsert(DataSet: TDataSet);
begin
  //qryTanggungan.Close;
  {Pegawai.FieldByName('Persen_Gaji').AsFloat:=100;
  Pegawai.FieldByName('IsTAmbah_BUP').AsBoolean:= False;
  Pegawai.FieldByName('STS_SIPIL').AsString:='-';
  Pegawai.FieldByName('UnitKd').AsString:= frmPegawai.SelectedMenu.SKPDKd;
  Pegawai.FieldByName('GolonganKd').AsString:= frmPegawai.SelectedMenu.GolonganKd;
  Pegawai.FieldByName('Sts_PegawaiKd').AsString:= 'P';
  Pegawai.FieldByName('Jns_Kelamin').AsString:= 'L';
  Pegawai.FieldByName('Jbt_StrukturKd').AsString:= '9999';
  Pegawai.FieldByName('Jbt_FungsiKd').AsString:= '000';
  Pegawai.FieldByName('GuruKd').AsString:= 'N';         }
end;

procedure TDMPegawai.PegawaiAfterOpen(DataSet: TDataSet);
var i:integer;
    F: String;
begin
  with  Pegawai do
  begin

    for I:= 0 to FieldCount - 1 do
    begin
      if (Fields[i].DataType = ftFloat) then
        begin
          TFloatField(Fields[i]).EditFormat := '#0';
          TFloatField(Fields[i]).DisplayFormat := '#,0';
        end
      else  if (Fields[i].DataType = ftInteger) then
        begin
          TIntegerField(Fields[i]).EditFormat := '0';
          TIntegerField(Fields[i]).DisplayFormat := '#,0';
        end
      else if (Fields[i].DataType = ftLargeInt) then
        begin
          TLargeintField(Fields[I]).DisplayFormat:= '#,0';
          TLargeintField(Fields[I]).EditFormat:= '#,0';
        end
      else  if (Fields[i].DataType = ftBCD) then
        begin
          tBCDField(Fields[i]).EditFormat := '0';
          tBCDField(Fields[i]).DisplayFormat := '#,0';
        end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';
    end;
  end;
  // ---- 2011 ----
  qrySKPD.Close;
  qrySKPD.Filtered:= False;
  F:= GModule.GetFilterSKPD;
  if (F<>'') then
    begin
      qrySKPD.Filter:= F;
      qrySKPD.Filtered:= True;
    end;
  qrySKPD.Open;
  // ---- end 2011 ----
  qryGuru.Open;
  qryFungsional.Open;
  qryStruktur.Open;
  qryStatus.Open;
  qryGolongan.Open;
  qryAktif.Open;
  qrySIPIL.Open;
  qryKawin.Open;
  qryTanggungan.Open;
end;

procedure TDMPegawai.PegawaiBeforePost(DataSet: TDataSet);
var pokok,tunjangan,potongan:double;
    oldround:TFPURoundingMode;
    persengaji:Double;
    HitungKd:integer;
    IsSudahPensiun: Boolean;
begin
  oldround := GetRoundMode;
  SetRoundMode(rmNearest);

  qryParam.Close;
  qryParam.Parameters[0].Value:= GModule.Tahun;
  qryParam.Open;
  With Pegawai do
  begin
    // 2011 tambahan tgl pensiun
    if (not FieldByName('tgl_Lahir').IsNull) then
      FieldByName('Tgl_BUP').AsDateTime:= dmGaji.GetTglBUP(FieldByName('tgl_Lahir').AsDateTime,
        dmGaji.GetMaxPensiun(FieldByName('GuruKd').AsString))
    else FieldByName('tgl_BUP').Value:= null;

    if (FieldByName('IsTambah_BUP').IsNull) then FieldByName('IsTambah_BUP').AsBoolean:= False;
    if (not FieldByName('IsTambah_BUP').AsBoolean) then
      FieldByName('TGLTAMBAH_BUP').Value:= null
    else
      begin
        if (FieldByName('TGLTAMBAH_BUP').IsNull) then
          FieldByName('TGLTAMBAH_BUP').Value:= FieldByName('TGL_BUP').Value
        else
          FieldByName('TGLTAMBAH_BUP').AsDateTime:= RecodeDate(FieldByName('TGLTAMBAH_BUP').AsDateTime,
              YearOf(FieldByName('TGLTAMBAH_BUP').AsDateTime),
              MonthOf(FieldByName('TGLTAMBAH_BUP').AsDateTime), 1);
      end;

    FieldByName('GAJI_POKOK').Value:=0;
    FieldByName('TUNJ_JAB_STRUKTUR').Value:=0;
    FieldByName('TUNJ_JAB_FUNGSI').Value:=0;
    FieldByName('TUNJ_UMUM').Value:=0;
    FieldByName('TUNJ_UMUM').Value:=0;
    FieldByName('TUNJ_UMUM_TAMB').Value:=0;
    FieldByName('TUNJ_OTSUS').Value:=0;
    FieldByName('TUNJ_ISTRI').Value:=0;

    FieldByName('TUNJ_ANAK').Value:=0;

    FieldByName('TUNJ_DT').Value:=0;
    //dmGaji.GetTunjanganTDT(FieldByName('GOLONGANKD').Value);

    FieldByName('TUNJ_BERAS').Value:=0;
    FieldByName('PEMBULATAN').Value:=0;

    FieldByName('PPH').Value:=0;

    FieldByName('BIAYA_JABATAN').Value:=0;
    FieldByName('BIAYA_PENSIUN').Value:=0;

    //POTONGANPOTONGAN
    FieldByName('POT_IWP').Value:=0;
    FieldByName('POT_TAPERUM').Value:=0;
    //FieldByName('POT_SEWA_RUMAH').Value:=0;
    //FieldByName('POT_PANGAN').Value:=0;
    //FieldByName('POT_KORPRI').Value:=0;
    //FieldByName('POT_GAJI_LEBIH').Value:=0;
    //FieldByName('POT_HUTANG').Value:=0;

//------------------------------------------------------------------------
// CHECK Field Status
    if  FieldByName('STS_PEGAWAIKD').AsString='' then
    begin
        showmessage('Status pegawai harus diisi');
        exit;
    end;

    if  FieldByName('AKTIF_KD').AsString='' then
    begin
        showmessage('Status aktif harus diisi');
        exit;
    end;
    ////////////////////
    persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

    HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;

    if not(FieldByName('Aktif_Tgl').IsNull) then
      begin
        if (HitungKd=-1) and
          (MonthsBetween(now,FieldByName('Aktif_Tgl').Value )> qryAktif.FieldByName('Accress').AsInteger) then
            persengaji:=0;
      end;

    IsSudahPensiun:= False;
    if (FieldByName('IsTAmbah_BUP').AsBoolean) then
      //IsSudahPensiun:= (FieldByName('TglTambah_BUP').AsDateTime<= Date)
      IsSudahPensiun:= dmGaji.ApakahSudahPensiun2(FieldByName('TglTambah_BUP').AsDateTime, Date)
    else if (not (FieldByName('Tgl_BUP').IsNull)) then
      //IsSudahPensiun:= (FieldByName('Tgl_BUP').AsDateTime<= Date);
      IsSudahPensiun:= dmGaji.ApakahSudahPensiun2(FieldByName('Tgl_BUP').AsDateTime, Date);
    if (IsSudahPensiun) then
      begin
        FieldByName('Aktif_Kd').AsInteger:= 3;
        persengaji:=0;
      end;

    if persenGaji=0 then
      exit;

    //////////////////////////////

    FieldByName('GAJI_POKOK').Value:=
            dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
                                      FieldByName('MASAKERJA').Value,
                                      FieldByName('Aktif_Kd').Value,FieldByName('STS_Pegawaikd').Value, 'STD');

    if (FieldByName('GAJI_POKOK').Value>0)  then
    begin
      //---
      if (FieldByName('JML_SI').AsFloat>1) then FieldByName('JML_SI').Value:=1;
      //---
       FieldByName('TUNJ_ISTRI').Value:=round(FieldByName('GAJI_POKOK').Value*
        FieldByName('JML_SI').Value*qryParam.FieldByName('TUNJ_ISTRI').Value);

      if FieldByName('JML_ANAK').Value>qryParam.FieldByName('TUNJ_ANAK_MAX').Value then
        FieldByName('TUNJ_ANAK').Value:=round(FieldByName('GAJI_POKOK').Value*
          qryParam.FieldByName('TUNJ_ANAK_Max').Value*qryParam.FieldByName('TUNJ_ANAK').Value)
      else
        FieldByName('TUNJ_ANAK').Value:=Round(FieldByName('GAJI_POKOK').Value*
        FieldByName('JML_ANAK').Value*qryParam.FieldByName('TUNJ_ANAK').Value);
      //------------------------------------------------------------------------
      if qryAktif.FieldByName('Tunj_Beras').AsInteger>0 then
      FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
          (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value)*
        qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value
      else if qryAktif.FieldByName('Tunj_Beras').AsInteger<0 then
        FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
          (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value+qryAktif.FieldByName('Tunj_Beras').AsInteger)*
        qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value;

      //------------------------------------------------------------------------

      if (qryAktif.FieldByName('Tunj_Struktural').AsBoolean) then
        FieldByName('TUNJ_JAB_STRUKTUR').Value:=dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);
      if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
        FieldByName('TUNJ_JAB_FUNGSI').Value:=dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);
      if (qryAktif.FieldByName('Tunj_Umum_Tambah').AsBoolean) then
        FieldByName('TUNJ_UMUM_TAMB').Value:=dmGaji.GetTunjUmumTambahan(FieldByName('GOLONGANKD').asstring);
      if (qryAktif.FieldByName('Tunj_Otsus').AsBoolean) then
        FieldByName('TUNJ_OTSUS').Value:=dmGaji.GetTunjOtsus(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);
      if (qryAktif.FieldByName('Tunj_DT').AsBoolean) then
        FieldByName('TUNJ_DT').Value:=dmGaji.GetTunjDT(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);
      //if (qryAktif.FieldByName('Tunj_Askes').AsBoolean) then
      //  FieldByName('TUNJ_ASKES').Value:=dmGaji.GetTunjanganAskes(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_Askes').AsBoolean) or
        (FieldByName('Tunj_Askes').IsNull)) then
        FieldByName('TUNJ_ASKES').Value:= 0;
      //if (qryAktif.FieldByName('Tunj_Kerja').AsBoolean) then
      //  FieldByName('TUNJ_KERJA').Value:=dmGaji.GetTunjKerja(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_Kerja').AsBoolean) or
        (FieldByName('Tunj_Kerja').IsNull)) then
        FieldByName('TUNJ_KERJA').Value:= 0;
      //if (qryAktif.FieldByName('Tunj_PP').AsBoolean) then
      //  FieldByName('TUNJ_PENGHASILAN').Value:=dmGaji.GetTPP(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_PP').AsBoolean) or
        (FieldByName('TUNJ_PENGHASILAN').IsNull)) then
        FieldByName('TUNJ_PENGHASILAN').Value:= 0;

      if ((FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+FieldByName('TUNJ_JAB_FUNGSI').AsFloat)=0) then
        FieldByName('TUNJ_UMUM').Value:=dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);
      if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
        FieldByName('TUNJ_UMUM').Value:=dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString);

      if (Not qryAktif.FieldByName('Tunj_Umum').AsBoolean)then
          FieldByName('TUNJ_UMUM').Value:=0;


      //--------------------------------------------------------------------------------------------------------//
      pokok:=FieldByName('TUNJ_ISTRI').Value+FieldByName('GAJI_POKOK').Value+FieldByName('TUNJ_ANAK').Value;

      tunjangan:=FieldByName('TUNJ_JAB_STRUKTUR').Value+
                  FieldByName('TUNJ_JAB_FUNGSI').Value+
                  FieldByName('TUNJ_UMUM').Value+
                  FieldByName('TUNJ_UMUM_TAMB').Value+
                  FieldByName('TUNJ_KERJA').Value+
                  FieldByName('TUNJ_BERAS').Value;

      //--------------------------------------------------------------------------------------------------------//

      FieldByName('BIAYA_JABATAN').Value:=round((pokok+tunjangan)*qryParam.FieldByName('Tunj_Biaya_Jabatan').Value);
      if FieldByName('BIAYA_JABATAN').Value>qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value then
        FieldByName('BIAYA_JABATAN').Value:=qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value ;

      FieldByName('BIAYA_PENSIUN').Value:= round(dmGaji.GetBiayaPensiun(pokok));

      //POTONGANPOTONGAN
      FieldByName('POT_IWP').Value:=round(dmGaji.GetIWP(pokok, 'STD', FieldByName('Aktif_Kd').AsString));

      if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
        FieldByName('POT_TAPERUM').Value:=dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, 'STD', FieldByName('Aktif_Kd').AsString);

      //FieldByName('POT_SEWA_RUMAH').Value:=dmGaji.GetSewaRumah;
      if (FieldByName('POT_SEWA_RUMAH').IsNull) then FieldByName('POT_SEWA_RUMAH').Value:= 0;
      //FieldByName('POT_PANGAN').Value:=dmGaji.GetPotonganPangan;
      if (FieldByName('POT_PANGAN').IsNull) then FieldByName('POT_PANGAN').Value:= 0;
      //FieldByName('POT_KORPRI').Value:=dmGaji.GetPOtonganKorpri;
      if (FieldByName('POT_KORPRI').IsNull) then FieldByName('POT_KORPRI').Value:= 0;
      //FieldByName('POT_GAJI_LEBIH').Value:=dmGaji.GetKelebihanGaji;
      if (FieldByName('POT_GAJI_LEBIH').IsNull) then FieldByName('POT_GAJI_LEBIH').Value:= 0;
      //FieldByName('POT_HUTANG').Value:=dmGaji.GetHutangLebih;
      if (FieldByName('POT_HUTANG').IsNull) then FieldByName('POT_HUTANG').Value:= 0;

      potongan:= FieldByName('POT_IWP').Value+
            FieldByName('POT_TAPERUM').Value+
            FieldByName('POT_SEWA_RUMAH').Value+
            FieldByName('POT_PANGAN').Value+
            FieldByName('POT_KORPRI').Value+
            FieldByName('POT_GAJI_LEBIH').Value; //+
            //FieldByName('POT_HUTANG').Value;

      //LAIN-LAIN
      FieldByName('PEMBULATAN').Value:=100-StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
      if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;
      FieldByName('PPH').Value:=round(dmGaji.GetPPH((pokok+tunjangan-FieldByName('Biaya_Jabatan').Value-
            FieldByName('BIAYA_PENSIUN').Value)*12,
            FieldByName('PTKP').AsInteger, 0,True, 'STD', FieldByName('Aktif_Kd').AsString));
    end;

  end;

  SetRoundMode(oldround);
end;

procedure TDMPegawai.PegawaiCalcFields(DataSet: TDataSet);
begin
  Pegawai.FieldByName('GajiDanTunjangan').AsFloat:=
    Pegawai.FieldByName('Gaji_Pokok').AsFloat+
    Pegawai.FieldByName('TUNJ_ISTRI').AsFloat+
    Pegawai.FieldByName('TUNJ_ANAK').AsFloat+
    Pegawai.FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+
    Pegawai.FieldByName('TUNJ_JAB_FUNGSI').AsFloat+
    Pegawai.FieldByName('TUNJ_BERAS').AsFloat+
    Pegawai.FieldByName('TUNJ_KERJA').AsFloat+
    Pegawai.FieldByName('TUNJ_UMUM').AsFloat+
    Pegawai.FieldByName('TUNJ_UMUM_TAMB').AsFloat+
    Pegawai.FieldByName('TUNJ_OTSUS').AsFloat+
    Pegawai.FieldByName('TUNJ_DT').AsFloat+
    Pegawai.FieldByName('TUNJ_ASKES').AsFloat+
    Pegawai.FieldByName('TUNJ_PENGHASILAN').AsFloat;


  Pegawai.FieldByName('Potongan').AsFloat:=
    Pegawai.FieldByName('POT_IWP').AsFloat+
    Pegawai.FieldByName('POT_TAPERUM').AsFloat+
    Pegawai.FieldByName('POT_SEWA_RUMAH').AsFloat+
    Pegawai.FieldByName('POT_PANGAN').AsFloat+
    Pegawai.FieldByName('POT_KORPRI').AsFloat+
    Pegawai.FieldByName('POT_GAJI_LEBIH').AsFloat; //+
    //Pegawai.FieldByName('POT_HUTANG').AsFloat;

  Pegawai.FieldByName('GajiBersih').AsFloat:=
    Pegawai.FieldByName('GajiDanTunjangan').AsFloat+
    Pegawai.FieldByName('Pembulatan').AsFloat-
    Pegawai.FieldByName('Potongan').AsFloat;

  Dataset.FieldByName('NomorUrut').AsInteger:= Abs(Dataset.RecNo);
end;

procedure TDMPegawai.qrygajipegawaiCalcFields(DataSet: TDataSet);
begin
  with qryGajiPegawai do
  begin
    FieldByName('GajiDanTunjangan').AsFloat:=
      FieldByName('Gaji_Pokok').AsFloat+
      FieldByName('TUNJ_ISTRI').AsFloat+
      FieldByName('TUNJ_ANAK').AsFloat+
      FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+
      FieldByName('TUNJ_JAB_FUNGSI').AsFloat+
      FieldByName('TUNJ_BERAS').AsFloat+
      FieldByName('TUNJ_KERJA').AsFloat+
      FieldByName('TUNJ_UMUM').AsFloat+
      FieldByName('TUNJ_UMUM_TAMB').AsFloat+
      FieldByName('TUNJ_OTSUS').AsFloat+
      FieldByName('TUNJ_DT').AsFloat+
      FieldByName('TUNJ_ASKES').AsFloat+
      FieldByName('TUNJ_PENGHASILAN').AsFloat;


    FieldByName('Potongan').AsFloat:=
      FieldByName('POT_IWP').AsFloat+
      FieldByName('POT_TAPERUM').AsFloat+
      FieldByName('POT_SEWA_RUMAH').AsFloat+
      FieldByName('POT_PANGAN').AsFloat+
      FieldByName('POT_KORPRI').AsFloat+
      FieldByName('POT_GAJI_LEBIH').AsFloat+
      FieldByName('POT_HUTANG').AsFloat;

    FieldByName('GajiBersih').AsFloat:=
      FieldByName('GajiDanTunjangan').AsFloat+
      FieldByName('Pembulatan').AsFloat-
      FieldByName('Potongan').AsFloat;
  end;
end;

procedure TDMPegawai.PegawaiAfterPost(DataSet: TDataSet);
begin
  UpdateNIPGaji(NIP_Old, Dataset.FieldByname('NIP').AsString, Dataset.FieldByname('NIP_Lama').AsString);
  if (qryTanggungan.Active) then qryTanggungan.Requery()
  else qryTanggungan.Open;
  NIP_Old:= '';
end;

procedure TDMPegawai.PegawaiAfterEdit(DataSet: TDataSet);
begin
  qryTanggungan.Close;
  NIP_Old:= Dataset.FieldByName('NIP').AsString;
end;

procedure TDMPegawai.PegawaiAfterCancel(DataSet: TDataSet);
begin
  if (qryTanggungan.Active) then qryTanggungan.Requery()
  else qryTanggungan.Open;
end;

procedure TDMPegawai.PegawaiAfterScroll(DataSet: TDataSet);
begin
  if (qryTanggungan.Active) then qryTanggungan.Requery()
  else qryTanggungan.Open;
end;

procedure TDMPegawai.qryTanggunganBeforePost(DataSet: TDataSet);
begin
  if (not Dataset.FieldByName('TGL_LAHIR').IsNull) then
    begin
      if ((Dataset.FieldByName('HUB_KD').AsString<>'IS') and
          (Dataset.FieldByName('HUB_KD').AsString<>'SU') and
          (Dataset.FieldByName('ISTANGGUNG').AsBoolean)) then
        begin
          if (Dataset.FieldByName('ISSEKOLAH').AsBoolean) then
            Dataset.FieldByName('TGLPUTUSTUNJ').AsDateTime:=
              dmGaji.GetTglBUP(Dataset.FieldByName('TGL_LAHIR').AsDateTime, 25)
          else
            Dataset.FieldByName('TGLPUTUSTUNJ').AsDateTime:=
              dmGaji.GetTglBUP(Dataset.FieldByName('TGL_LAHIR').AsDateTime, 21);
          if (Dataset.FieldByName('TGLPUTUSTUNJ').AsDateTime<= Date) then
            Dataset.FieldByName('ISTANGGUNG').AsBoolean:= False;
        end
      else
        Dataset.FieldByName('TGLPUTUSTUNJ').Value:= null;
    end
  else
    Dataset.FieldByName('TGLPUTUSTUNJ').Value:= null;
end;

end.
